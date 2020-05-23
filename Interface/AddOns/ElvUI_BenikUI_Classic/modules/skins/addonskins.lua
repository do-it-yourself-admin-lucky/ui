local BUI, E, L, V, P, G = unpack(select(2, ...))
local S = E:GetModule('Skins');

local _G = _G
local pairs, unpack = pairs, unpack
local strlower, strfind = strlower, strfind

local CreateFrame = CreateFrame
local IsAddOnLoaded = IsAddOnLoaded

-- GLOBALS: hooksecurefunc, Skada, Recount, oRA3, RC, RCnotify, RCminimized

if not BUI.AS then return end
local AS = unpack(AddOnSkins)

local classColor = E.myclass == 'PRIEST' and E.PriestColors or (CUSTOM_CLASS_COLORS and CUSTOM_CLASS_COLORS[E.myclass] or RAID_CLASS_COLORS[E.myclass])

local function SkadaDecor()
	if not E.db.benikui.general.benikuiStyle or not E.db.benikuiSkins.addonSkins.skada then return end
	hooksecurefunc(Skada.displays['bar'], 'ApplySettings', function(self, win)
		local skada = win.bargroup
		skada.Backdrop:Style('Outside')
		if win.db.enabletitle then
			skada.button:StripTextures()
		end
		if not skada.Backdrop.ishooked then
			hooksecurefunc(AS, 'Embed_Check', function(self, message)
				if skada.Backdrop.style then
					if AS.db.EmbedSystem and AS.db.EmbedSkada then
						skada.Backdrop.style:Hide()
					else
						skada.Backdrop.style:Show()
					end
				end
			end)
			skada.Backdrop.ishooked = true
		end
	end)
end

local function StyleRecount(name, parent, ...)
	if E.db.benikui.general.benikuiStyle ~= true then return end
	local recountdecor = CreateFrame('Frame', name, E.UIParent)
	recountdecor:SetTemplate('Default', true)
	recountdecor:SetParent(parent)
	recountdecor:Point('TOPLEFT', parent, 'TOPLEFT', 0, -2)
	recountdecor:Point('BOTTOMRIGHT', parent, 'TOPRIGHT', 0, -7)

	return recountdecor
end

local function RecountDecor()
	if not E.db.benikuiSkins.addonSkins.recount then return end
	StyleRecount('recountMain', _G["Recount_MainWindow"])
	_G["Recount_MainWindow"].TitleBackground:StripTextures()
	_G["Recount_ConfigWindow"].TitleBackground:StripTextures()
	_G["Recount_DetailWindow"].TitleBackground:StripTextures()
	StyleRecount(nil, _G["Recount_DetailWindow"])
	StyleRecount(nil, _G["Recount_ConfigWindow"])
	hooksecurefunc(Recount, 'ShowReport', function(self)
		if _G["Recount_ReportWindow"].TitleBackground then
			_G["Recount_ReportWindow"].TitleBackground:StripTextures()
			StyleRecount(nil, _G["Recount_ReportWindow"])
		end
	end)

	hooksecurefunc(AS, 'Embed_Check', function(self, message)
		-- Fix for blurry pixel fonts
		Recount.db.profile.Scaling = 0.95
		if E.db.benikui.general.benikuiStyle ~= true then return end
		if AS.db.EmbedSystem then
			_G["recountMain"]:Hide()
		else
			_G["recountMain"]:Show()
		end
	end)
end

local function AtlasLootDecor()
	if not E.db.benikui.general.benikuiStyle or not E.db.benikuiSkins.addonSkins.atlasloot then return end
	local AtlasLootFrame = _G["AtlasLoot_GUI-Frame"]
	if AtlasLootFrame then
		if not AtlasLootFrame.style then
			AtlasLootFrame:Style('Outside')
		end
	end
end

local function DbmDecor(event)
	if not E.db.benikui.general.benikuiStyle or not E.db.benikuiSkins.addonSkins.dbm then return end

	local function StyleRangeFrame(self, range, filter, forceshow, redCircleNumPlayers)
		if DBM.Options.DontShowRangeFrame and not forceshow then return end

		if DBMRangeCheckRadar then
			if not DBMRangeCheckRadar.style then
				DBMRangeCheckRadar:Style('Inside')
			end

			if AS:CheckOption('DBMRadarTrans') then
				if DBMRangeCheckRadar.style and E.db.benikui.general.benikuiStyle then
					DBMRangeCheckRadar.style:Hide()
				end

				if DBMRangeCheckRadar.shadow then
					DBMRangeCheckRadar.shadow:Hide()
				end
			else
				if DBMRangeCheckRadar.style and E.db.benikui.general.benikuiStyle then
					DBMRangeCheckRadar.style:Show()
				end

				if DBMRangeCheckRadar.shadow then
					DBMRangeCheckRadar.shadow:Show()
				end
			end
		end
		
		if DBMRangeCheck then
			DBMRangeCheck:SetTemplate('Transparent')
			if not DBMRangeCheck.style then
				DBMRangeCheck:Style('Outside')
			end
		end
	end

	local function StyleInfoFrame(self, maxLines, event, ...)
		if DBM.Options.DontShowInfoFrame and (event or 0) ~= "test" then return end

		if DBMInfoFrame and not DBMInfoFrame.style then
			DBMInfoFrame:Style('Inside')
		end
	end

	hooksecurefunc(DBM.RangeCheck, 'Show', StyleRangeFrame)
	hooksecurefunc(DBM.InfoFrame, 'Show', StyleInfoFrame)
end

local function BugSackDecor()
	if not E.db.benikui.general.benikuiStyle then return end

	hooksecurefunc(BugSack, "OpenSack", function()
		if BugSackFrame.IsStyled then return end
		if not BugSackFrame.style then
			BugSackFrame:Style('Outside')
		end
		BugSackFrame.IsStyled = true
	end)
end

local function LibrariesDecor()
	local DBIcon = LibStub("LibDBIcon-1.0", true)
	if DBIcon and DBIcon.tooltip and DBIcon.tooltip:IsObjectType('GameTooltip') then
		DBIcon.tooltip:HookScript("OnShow", function(self)
			if not self.style then
				self:Style('Outside')
			end
		end)
	end
end

local function ImmersionDecor()
	if not E.db.benikui.general.benikuiStyle or not E.db.benikuiSkins.addonSkins.immersion then return end
	local frame = _G['ImmersionFrame']
	frame.TalkBox.BackgroundFrame.Backdrop:Style('Inside')
	frame.TalkBox.Hilite:SetOutside(frame.TalkBox.BackgroundFrame.Backdrop)
	frame.TalkBox.Elements.Backdrop:Style('Inside')

	if BUI.ShadowMode then
		frame.TalkBox.BackgroundFrame.Backdrop.Shadow:Hide()
		frame.TalkBox.Elements.Backdrop.Shadow:Hide()
	end
	
	frame:HookScript('OnEvent', function(self)
		for _, Button in ipairs(self.TitleButtons.Buttons) do
			if Button.Backdrop and not Button.Backdrop.isStyled then
				Button.Backdrop:Style('Inside')
				Button.Hilite:SetOutside(Button.Backdrop)
				Button.Backdrop.Shadow:Hide()
				Button.Backdrop.isStyled = true
			end
		end
	end)
end

local function StyleSpyAddon()
	local spy = _G["Spy_MainWindow"]
	if spy then
		spy:Style("Outside")
	end
	AS:Desaturate(Spy_MainWindow.StatsButton) -- remove if added in AddonSkins
end

local function StyleXtoLevel()
	if not E.db.benikui.general.benikuiStyle or not E.db.benikuiSkins.addonSkins.xtoLevel then return end

	local xtoLevel = _G["XToLevel_AverageFrame_Classic"]
	if xtoLevel then
		xtoLevel:Style("Outside")
	end

	local XtoLevelFrames = {
		_G["XToLevel_AverageFrame_Blocky_PlayerFrameCounterKills"],
		_G["XToLevel_AverageFrame_Blocky_PlayerFrameCounterQuests"],
		_G["XToLevel_AverageFrame_Blocky_PlayerFrameCounterDungeons"],
		_G["XToLevel_AverageFrame_Blocky_PlayerFrameCounterBattles"],
		_G["XToLevel_AverageFrame_Blocky_PlayerFrameCounterObjectives"],
		_G["XToLevel_AverageFrame_Blocky_PlayerFrameCounterPetBattles"],
		_G["XToLevel_AverageFrame_Blocky_PlayerFrameCounterGathering"],
		_G["XToLevel_AverageFrame_Blocky_PlayerFrameCounterDigs"],
		_G["XToLevel_AverageFrame_Blocky_PlayerFrameCounterProgress"],
		_G["XToLevel_AverageFrame_Blocky_PlayerFrameCounterTimer"],
		_G["XToLevel_AverageFrame_Blocky_PlayerFrameCounterGuildProgress"],
	}

	for _, frame in pairs(XtoLevelFrames) do
		if BUI.ShadowMode then
			frame:CreateSoftShadow()
		end
	end
end

-- Replace the close button
function AS:SkinCloseButton(Button, Reposition)
	if Button.Backdrop then return end

	AS:SkinBackdropFrame(Button)

	Button.Backdrop:Point('TOPLEFT', 7, -8)
	Button.Backdrop:Point('BOTTOMRIGHT', -7, 8)
	Button.Backdrop:SetTemplate('NoBackdrop')

	Button:SetHitRectInsets(6, 6, 7, 7)
	
	Button.Backdrop.img = Button.Backdrop:CreateTexture(nil, 'OVERLAY')
	Button.Backdrop.img:SetSize(12, 12)
	Button.Backdrop.img:Point("CENTER")
	Button.Backdrop.img:SetTexture('Interface\\AddOns\\ElvUI_BenikUI_Classic\\media\\textures\\Close.tga')
	Button.Backdrop.img:SetVertexColor(1, 1, 1)

	Button:HookScript('OnEnter', function(self)
		self.Backdrop.img:SetVertexColor(1, .2, .2)
		if E.myclass == 'PRIEST' then
			self.Backdrop.img:SetVertexColor(unpack(E["media"].rgbvaluecolor))
			self.Backdrop:SetBackdropBorderColor(unpack(E["media"].rgbvaluecolor))
		else
			self.Backdrop.img:SetVertexColor(classColor.r, classColor.g, classColor.b)
			self.Backdrop:SetBackdropBorderColor(classColor.r, classColor.g, classColor.b)
		end
	end)

	Button:HookScript('OnLeave', function(self)
		self.Backdrop.img:SetVertexColor(1, 1, 1)
		self.Backdrop:SetBackdropBorderColor(unpack(E["media"].bordercolor))
	end)

	if Reposition then
		Button:Point('TOPRIGHT', Reposition, 'TOPRIGHT', 2, 2)
	end
end

if AS:CheckAddOn('Skada') then AS:RegisterSkin('Skada', SkadaDecor, 2) end
if AS:CheckAddOn('Recount') then AS:RegisterSkin('Recount', RecountDecor, 2) end
if AS:CheckAddOn('AtlasLoot') then AS:RegisterSkin('AtlasLoot', AtlasLootDecor, 2) end
if (AS:CheckAddOn('DBM-Core') and AS:CheckAddOn('DBM-StatusBarTimers') and AS:CheckAddOn('DBM-DefaultSkin')) then AS:RegisterSkin('DBM', DbmDecor, 'ADDON_LOADED') end
if AS:CheckAddOn('BugSack') then AS:RegisterSkin('BugSack', BugSackDecor, 2) end
if AS:CheckAddOn('Immersion') then AS:RegisterSkin('Immersion', ImmersionDecor, 2) end
if AS:CheckAddOn('Spy') then AS:RegisterSkin('Spy', StyleSpyAddon, 2) end
if AS:CheckAddOn('XToLevel') then AS:RegisterSkin('XToLevel', StyleXtoLevel, 2) end
AS:RegisterSkin('Libraries', LibrariesDecor, 2)

hooksecurefunc(AS, 'AcceptFrame', function(self)
	if not _G["AcceptFrame"].style then
		_G["AcceptFrame"]:Style('Outside')
	end
end)