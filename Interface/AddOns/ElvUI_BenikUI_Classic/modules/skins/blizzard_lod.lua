local BUI, E, L, V, P, G = unpack(select(2, ...))
local S = E:GetModule("Skins")

local _G = _G
local pairs, unpack = pairs, unpack
local hooksecurefunc = hooksecurefunc
local IsAddOnLoaded = IsAddOnLoaded

-- AuctionUI
local function style_AuctionUI()
	if E.private.skins.blizzard.auctionhouse ~= true or E.private.skins.blizzard.enable ~= true or
		E.db.benikui.general.benikuiStyle ~= true
	then
		return
	end

	if _G["AuctionFrame"].backdrop then
		_G["AuctionFrame"].backdrop:Style("Outside")
	end

	_G["AuctionProgressFrame"]:Style("Outside")
	_G["WowTokenGameTimeTutorial"]:Style("Small")
end
S:AddCallbackForAddon("Blizzard_AuctionUI", "BenikUI_AuctionUI", style_AuctionUI)

-- BattlefieldMap
local function style_BattlefieldMap()
	if E.private.skins.blizzard.bgmap ~= true or E.private.skins.blizzard.enable ~= true or
		E.db.benikui.general.benikuiStyle ~= true
	then
		return
	end

	if _G["BattlefieldMapFrame"].backdrop then
		_G["BattlefieldMapFrame"].backdrop:Style("Outside")
	end
end
S:AddCallbackForAddon("Blizzard_BattlefieldMap", "BenikUI_BattlefieldMap", style_BattlefieldMap)

-- BindingUI
local function style_BindingUI()
	if E.private.skins.blizzard.binding ~= true or E.private.skins.blizzard.enable ~= true or
		E.db.benikui.general.benikuiStyle ~= true
	then
		return
	end

	_G["KeyBindingFrame"]:Style("Outside")
end
S:AddCallbackForAddon("Blizzard_BindingUI", "BenikUI_BindingUI", style_BindingUI)

-- Channels
local function style_Channels()
	if E.private.skins.blizzard.Channels ~= true or E.private.skins.blizzard.enable ~= true or
		E.db.benikui.general.benikuiStyle ~= true
	then
		return
	end

	if _G["ChannelFrame"].backdrop then
		_G["ChannelFrame"].backdrop:Style("Outside")
	end
	_G["CreateChannelPopup"]:Style("Outside")
end
S:AddCallbackForAddon("Blizzard_Channels", "BenikUI_Channels", style_Channels)

-- Communities
local function style_Communities()
	if E.private.skins.blizzard.Communities ~= true or E.private.skins.blizzard.enable ~= true or
		E.db.benikui.general.benikuiStyle ~= true
	then
		return
	end

	local frame = _G["CommunitiesFrame"]
	if frame then
		frame.backdrop:Style("Outside")
		frame.NotificationSettingsDialog.backdrop:Style("Outside")
	end
end
S:AddCallbackForAddon("Blizzard_Communities", "BenikUI_Communities", style_Communities)

-- DebugTools
local function style_DebugTools()
	if E.private.skins.blizzard.debug ~= true or E.private.skins.blizzard.enable ~= true or
		E.db.benikui.general.benikuiStyle ~= true
	then
		return
	end

	local function SkinTableAttributeDisplay(frame)
		if frame.LinesScrollFrame and frame.LinesScrollFrame.ScrollBar then
			local s = frame.LinesScrollFrame.ScrollBar
		end
	end

	SkinTableAttributeDisplay(TableAttributeDisplay)
	hooksecurefunc(TableInspectorMixin, "OnLoad", function(self)
		if self and self.ScrollFrameArt and not self.styled then
			SkinTableAttributeDisplay(self)
			self.styled = true
		end
	end)
end

if IsAddOnLoaded("Blizzard_DebugTools") then
	S:AddCallback("BenikUI_DebugTools", style_DebugTools)
else
	S:AddCallbackForAddon("Blizzard_DebugTools", "BenikUI_DebugTools", style_DebugTools)
end

-- InspectUI
local function style_InspectUI()
	if E.private.skins.blizzard.inspect ~= true or E.private.skins.blizzard.enable ~= true or
		E.db.benikui.general.benikuiStyle ~= true
	then
		return
	end

	if _G["InspectFrame"].backdrop then
		_G["InspectFrame"].backdrop:Style("Outside")
	end
end
S:AddCallbackForAddon("Blizzard_InspectUI", "BenikUI_InspectUI", style_InspectUI)

-- ItemSocketingUI
local function style_ItemSocketingUI()
	if E.private.skins.blizzard.socket ~= true or E.private.skins.blizzard.enable ~= true or
		E.db.benikui.general.benikuiStyle ~= true
	then
		return
	end

	_G["ItemSocketingFrame"]:Style("Outside")
end
S:AddCallbackForAddon("Blizzard_ItemSocketingUI", "BenikUI_ItemSocketingUI", style_ItemSocketingUI)

-- MacroUI
local function style_MacroUI()
	if E.private.skins.blizzard.macro ~= true or E.private.skins.blizzard.enable ~= true or
		E.db.benikui.general.benikuiStyle ~= true
	then
		return
	end

	_G["MacroFrame"]:Style("Outside")
	_G["MacroPopupFrame"]:Style("Outside")
end
S:AddCallbackForAddon("Blizzard_MacroUI", "BenikUI_MacroUI", style_MacroUI)

-- TalentUI
local function style_TalentUI()
	if E.private.skins.blizzard.talent ~= true or E.private.skins.blizzard.enable ~= true or
		E.db.benikui.general.benikuiStyle ~= true
	then
		return
	end

	if _G["TalentFrame"].backdrop then
		_G["TalentFrame"].backdrop:Style("Outside")
	end

	for i = 1, 5 do
		local tab = _G["PlayerSpecTab" .. i]
		if tab then
			tab:Style("Inside")
			tab.style:SetFrameLevel(5)
			tab:GetNormalTexture():SetTexCoord(unpack(BUI.TexCoords))
			tab:GetNormalTexture():SetInside()
		end
	end
end
S:AddCallbackForAddon("Blizzard_TalentUI", "BenikUI_TalentUI", style_TalentUI)

-- TradeSkillUI
local function style_TradeSkillUI()
	if E.private.skins.blizzard.trade ~= true or E.private.skins.blizzard.enable ~= true or
		E.db.benikui.general.benikuiStyle ~= true
	then
		return
	end

	local frame = _G["TradeSkillFrame"]
	if frame and frame.backdrop then
		frame.backdrop:Style("Outside")
	end
end
S:AddCallbackForAddon("Blizzard_TradeSkillUI", "BenikUI_TradeSkillUI", style_TradeSkillUI)

-- TrainerUI
local function style_TrainerUI()
	if E.private.skins.blizzard.trainer ~= true or E.private.skins.blizzard.enable ~= true or
		E.db.benikui.general.benikuiStyle ~= true
	then
		return
	end

	if _G["ClassTrainerFrame"].backdrop then
		_G["ClassTrainerFrame"].backdrop:Style("Outside")
	end
end
S:AddCallbackForAddon("Blizzard_TrainerUI", "BenikUI_TrainerUI", style_TrainerUI)
