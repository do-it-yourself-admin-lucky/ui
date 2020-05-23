local E, L, V, P, G = unpack(ElvUI)
local EP = LibStub("LibElvUIPlugin-1.0")
local addon, Engine = ...

local BUI = E.Libs.AceAddon:NewAddon(addon, "AceConsole-3.0", "AceEvent-3.0", "AceHook-3.0")

Engine[1] = BUI
Engine[2] = E
Engine[3] = L
Engine[4] = V
Engine[5] = P
Engine[6] = G
_G[addon] = Engine

BUI.Config = {}
BUI.Title = format('|cff00c0fa%s |r', 'BenikUI Classic')
BUI["RegisteredModules"] = {}
BUI.Eversion = tonumber(E.version)
BUI.Erelease = tonumber(GetAddOnMetadata("ElvUI_BenikUI_Classic", "X-ElvuiVersion"))

function BUI:RegisterModule(name)
	if self.initialized then
		local mod = self:GetModule(name)
		if (mod and mod.Initialize) then
			mod:Initialize()
		end
	else
		self["RegisteredModules"][#self["RegisteredModules"] + 1] = name
	end
end

function BUI:InitializeModules()
	for _, moduleName in pairs(BUI["RegisteredModules"]) do
		local mod = self:GetModule(moduleName)
		if mod.Initialize then
			mod:Initialize()
		else
			BUI:Print("Module <" .. moduleName .. "> is not loaded.")
		end
	end
end

function BUI:AddOptions()
	for _, func in pairs(BUI.Config) do
		func()
	end
end

function BUI:Init()
	--ElvUI's version check
	if BUI.Eversion < 1 or (BUI.Eversion < BUI.Erelease) then
		E:Delay(2, function() E:StaticPopup_Show("BENIKUI_VERSION_MISMATCH") end)
		return
	end
	self.initialized = true
	self:Initialize()
	self:InitializeModules()
	EP:RegisterPlugin(addon, self.AddOptions)
end

E.Libs.EP:HookInitialize(BUI, BUI.Init)

--Version check
E.PopupDialogs["BENIKUI_VERSION_MISMATCH"] = {
	text = format(L["%s\n\nYour ElvUI version %.2f is not compatible with BenikUI.\nLatest ElvUI version is %.2f. Please download it from here:\n"], BUI.Title, BUI.Eversion, BUI.Erelease),
	button1 = CLOSE,
	timeout = 0,
	whileDead = 1,
	preferredIndex = 3,
	hasEditBox = 1,
	OnShow = function(self)
		self.editBox:SetAutoFocus(false)
		self.editBox.width = self.editBox:GetWidth()
		self.editBox:Width(280)
		self.editBox:AddHistoryLine("text")
		self.editBox.temptxt = "https://www.tukui.org/classic-addons.php?id=2"
		self.editBox:SetText("https://www.tukui.org/classic-addons.php?id=2")
		self.editBox:HighlightText()
		self.editBox:SetJustifyH("CENTER")
	end,
	OnHide = function(self)
		self.editBox:Width(self.editBox.width or 50)
		self.editBox.width = nil
		self.temptxt = nil
	end,
	EditBoxOnEnterPressed = function(self)
		self:GetParent():Hide();
	end,
	EditBoxOnEscapePressed = function(self)
		self:GetParent():Hide();
	end,
	EditBoxOnTextChanged = function(self)
		if(self:GetText() ~= self.temptxt) then
			self:SetText(self.temptxt)
		end
		self:HighlightText()
		self:ClearFocus()
	end,
}