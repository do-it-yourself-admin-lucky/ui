local BUI, E, L, V, P, G = unpack(select(2, ...))
local mod = BUI:NewModule('Layout', 'AceHook-3.0', 'AceEvent-3.0');
local LO = E:GetModule('Layout');
local DT = E:GetModule('DataTexts')
local M = E:GetModule('Minimap');
local LSM = E.LSM

local _G = _G
local unpack = unpack
local tinsert = table.insert
local CreateFrame = CreateFrame
local GameTooltip = _G["GameTooltip"]
local PlaySound = PlaySound
local UIFrameFadeIn, UIFrameFadeOut = UIFrameFadeIn, UIFrameFadeOut
local IsShiftKeyDown = IsShiftKeyDown
local InCombatLockdown = InCombatLockdown
local PVEFrame_ToggleFrame = PVEFrame_ToggleFrame
local GameMenuButtonAddons = GameMenuButtonAddons
local SendChatMessage = SendChatMessage
local ReloadUI = ReloadUI

-- GLOBALS: hooksecurefunc, GarrisonLandingPageMinimapButton_OnClick, CloseMenus, CloseAllWindows, selectioncolor
-- GLOBALS: MainMenuMicroButton_SetNormal, AddOnSkins, MAINMENU_BUTTON, ADDONS, LFG_TITLE, BuiLeftChatDTPanel
-- GLOBALS: BuiMiddleDTPanel, BuiRightChatDTPanel, BuiGameClickMenu
-- GLOBALS: SpellBookFrame, PlayerTalentFrame, TalentFrame_LoadUI
-- GLOBALS: GlyphFrame, GlyphFrame_LoadUI, PlayerTalentFrame, TimeManagerFrame
-- GLOBALS: GameTimeFrame, GuildFrame, GuildFrame_LoadUI, EncounterJournal_LoadUI, EncounterJournal
-- GLOBALS: LookingForGuildFrame, LookingForGuildFrame_LoadUI, LookingForGuildFrame_Toggle
-- GLOBALS: GameGameMenuFrame, VideoOptionsFrame, VideoOptionsFrameCancel, AudioOptionsFrame, AudioOptionsFrameCancel
-- GLOBALS: InterfaceOptionsFrame, InterfaceOptionsFrameCancel, GuildFrame_Toggle
-- GLOBALS: LibStub, StoreMicroButton
-- GLOBALS: LeftMiniPanel, RightMiniPanel, Minimap
-- GLOBALS: LeftChatPanel, RightChatPanel, CopyChatFrame

local PANEL_HEIGHT = 19;
local SPACING = (E.PixelMode and 1 or 3)
local BUTTON_NUM = 4

local Bui_ldtp = CreateFrame('Frame', 'BuiLeftChatDTPanel', E.UIParent)
local Bui_rdtp = CreateFrame('Frame', 'BuiRightChatDTPanel', E.UIParent)
local Bui_mdtp = CreateFrame('Frame', 'BuiMiddleDTPanel', E.UIParent)

local function RegDataTexts()
	DT:RegisterPanel(BuiLeftChatDTPanel, 3, 'ANCHOR_BOTTOM', 0, -4)
	DT:RegisterPanel(BuiMiddleDTPanel, 3, 'ANCHOR_BOTTOM', 0, -4)
	DT:RegisterPanel(BuiRightChatDTPanel, 3, 'ANCHOR_BOTTOM', 0, -4)

	L['BuiLeftChatDTPanel'] = BUI.Title..BUI:cOption(L['Left Chat Panel']);
	L['BuiRightChatDTPanel'] = BUI.Title..BUI:cOption(L['Right Chat Panel']);
	L['BuiMiddleDTPanel'] = BUI.Title..BUI:cOption(L['Middle Panel']);
	E.FrameLocks['BuiMiddleDTPanel'] = true;
end

local Bui_dchat = CreateFrame('Frame', 'BuiDummyChat', E.UIParent)
local Bui_deb = CreateFrame('Frame', 'BuiDummyEditBoxHolder', E.UIParent)

-- GameMenu
local GameMenuFrame = CreateFrame('Frame', 'BuiGameClickMenu', E.UIParent)
GameMenuFrame:SetTemplate('Transparent', true)

function BuiGameMenu_OnMouseUp(self)
	GameTooltip:Hide()
	BUI:Dropmenu(BUI.MenuList, GameMenuFrame, self:GetName(), 'tLeft', -SPACING, SPACING, 4)
	PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_OFF);
end

-- StatusMenu
local StatusList = {
	{text = L["AFK"], func = function() SendChatMessage("" ,"AFK" ) end},
	{text = L["DND"], func = function() SendChatMessage("" ,"DND" ) end},
	{text = L["Reload (ShiftClick)"], func = function() if IsShiftKeyDown() then ReloadUI() end end},
}

local StatusMenuFrame = CreateFrame('Frame', 'BuiStatusMenu', E.UIParent)
StatusMenuFrame:SetTemplate('Transparent', true)

function BuiStatusMenu_OnMouseUp(self)
	GameTooltip:Hide()
	BUI:Dropmenu(StatusList, StatusMenuFrame, self:GetName(), 'tRight', SPACING, SPACING, 4)
	PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_OFF);
end

local function ChatButton_OnClick(self)
	GameTooltip:Hide()

	if E.db[self.parent:GetName()..'Faded'] then
		E.db[self.parent:GetName()..'Faded'] = nil
		UIFrameFadeIn(self.parent, 0.2, self.parent:GetAlpha(), 1)
		if BUI.AS then
			local AS = unpack(AddOnSkins) or nil
			if AS.db.EmbedSystem or AS.db.EmbedSystemDual then AS:Embed_Show() end
		end
	else
		E.db[self.parent:GetName()..'Faded'] = true
		UIFrameFadeOut(self.parent, 0.2, self.parent:GetAlpha(), 0)
		self.parent.fadeInfo.finishedFunc = self.parent.fadeFunc
	end
	PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_OFF);
end

local bbuttons = {}

function mod:ToggleBuiDts()
	if not E.db.benikui.datatexts.chat.enable or E.db.datatexts.leftChatPanel then
		BuiLeftChatDTPanel:Hide()
		for i = 3, 4 do
			bbuttons[i]:Hide()
		end
	else
		BuiLeftChatDTPanel:Show()
		for i = 3, 4 do
			bbuttons[i]:Show()
		end
	end

	if not E.db.benikui.datatexts.chat.enable or E.db.datatexts.rightChatPanel then
		BuiRightChatDTPanel:Hide()
		for i = 1, 2 do
			bbuttons[i]:Hide()
		end
	else
		BuiRightChatDTPanel:Show()
		for i = 1, 2 do
			bbuttons[i]:Show()
		end
	end
end

function mod:ResizeMinimapPanels()
	LeftMiniPanel:Point('TOPLEFT', Minimap.backdrop, 'BOTTOMLEFT', 0, -SPACING)
	LeftMiniPanel:Point('BOTTOMRIGHT', Minimap.backdrop, 'BOTTOM', -SPACING, -(SPACING + PANEL_HEIGHT))
	RightMiniPanel:Point('TOPRIGHT', Minimap.backdrop, 'BOTTOMRIGHT', 0, -SPACING)
	RightMiniPanel:Point('BOTTOMLEFT', LeftMiniPanel, 'BOTTOMRIGHT', SPACING, 0)
end

function mod:ToggleTransparency()
	local db = E.db.benikui.datatexts.chat
	if not db.backdrop then
		Bui_ldtp:SetTemplate('NoBackdrop')
		Bui_rdtp:SetTemplate('NoBackdrop')
		for i = 1, BUTTON_NUM do
			bbuttons[i]:SetTemplate('NoBackdrop')
			if BUI.ShadowMode then
				bbuttons[i].shadow:Hide()
			end
		end
		if BUI.ShadowMode then
			Bui_ldtp.shadow:Hide()
			Bui_rdtp.shadow:Hide()
		end
	else
		if db.transparent then
			Bui_ldtp:SetTemplate('Transparent')
			Bui_rdtp:SetTemplate('Transparent')	
			for i = 1, BUTTON_NUM do
				bbuttons[i]:SetTemplate('Transparent')
			end
		else
			Bui_ldtp:SetTemplate('Default', true)
			Bui_rdtp:SetTemplate('Default', true)
			for i = 1, BUTTON_NUM do
				bbuttons[i]:SetTemplate('Default', true)
			end
		end
		if BUI.ShadowMode then
			Bui_ldtp.shadow:Show()
			Bui_rdtp.shadow:Show()
			for i = 1, BUTTON_NUM do
				bbuttons[i].shadow:Show()
			end
		end
	end
end

function mod:MiddleDatatextLayout()
	local db = E.db.benikui.datatexts.middle

	if db.enable then
		Bui_mdtp:Show()
	else
		Bui_mdtp:Hide()
	end

	if not db.backdrop then
		Bui_mdtp:SetTemplate('NoBackdrop')
		if BUI.ShadowMode then
			Bui_mdtp.shadow:Hide()
		end
	else
		if db.transparent then
			Bui_mdtp:SetTemplate('Transparent')
		else
			Bui_mdtp:SetTemplate('Default', true)
		end
		if BUI.ShadowMode then
			Bui_mdtp.shadow:Show()
		end
	end

	if Bui_mdtp.style then 
		if db.styled and db.backdrop then
			Bui_mdtp.style:Show()
		else
			Bui_mdtp.style:Hide()
		end
	end
end

function mod:ChatStyles()
	if not E.db.benikui.general.benikuiStyle then return end
	if E.db.benikui.datatexts.chat.styled and E.db.chat.panelBackdrop == 'HIDEBOTH' then
		Bui_rdtp.style:Show()
		Bui_ldtp.style:Show()
		for i = 1, BUTTON_NUM do
			bbuttons[i].style:Show()
		end
	else
		Bui_rdtp.style:Hide()
		Bui_ldtp.style:Hide()
		for i = 1, BUTTON_NUM do
			bbuttons[i].style:Hide()
		end
	end
end

function mod:MiddleDatatextDimensions()
	local db = E.db.benikui.datatexts.middle
	Bui_mdtp:Width(db.width)
	Bui_mdtp:Height(db.height)
	DT:UpdateAllDimensions()
end

function mod:PositionEditBoxHolder(bar)
	Bui_deb:ClearAllPoints()
	Bui_deb:Point('TOPLEFT', bar.backdrop, 'BOTTOMLEFT', 0, -SPACING)
	Bui_deb:Point('BOTTOMRIGHT', bar.backdrop, 'BOTTOMRIGHT', 0, -(PANEL_HEIGHT + 6))
end

local function updateButtonFont()
	for i = 1, BUTTON_NUM do
		if bbuttons[i].text then
			bbuttons[i].text:SetFont(LSM:Fetch('font', E.db.datatexts.font), E.db.datatexts.fontSize, E.db.datatexts.fontOutline)
			bbuttons[i].text:SetTextColor(BUI:unpackColor(E.db.general.valuecolor))
		end
	end
end

local function Panel_OnShow(self)
	self:SetFrameLevel(0)
end

function mod:ChangeLayout()

	LeftMiniPanel:Height(PANEL_HEIGHT)
	RightMiniPanel:Height(PANEL_HEIGHT)

	-- Left dt panel
	Bui_ldtp:SetFrameStrata('BACKGROUND')
	Bui_ldtp:Point('TOPLEFT', LeftChatPanel, 'BOTTOMLEFT', (SPACING +PANEL_HEIGHT), -SPACING)
	Bui_ldtp:Point('BOTTOMRIGHT', LeftChatPanel, 'BOTTOMRIGHT', -(SPACING +PANEL_HEIGHT), -PANEL_HEIGHT -SPACING)
	Bui_ldtp:Style('Outside', nil, false, true)

	-- Right dt panel
	Bui_rdtp:SetFrameStrata('BACKGROUND')
	Bui_rdtp:Point('TOPLEFT', RightChatPanel, 'BOTTOMLEFT', (SPACING +PANEL_HEIGHT), -SPACING)
	Bui_rdtp:Point('BOTTOMRIGHT', RightChatPanel, 'BOTTOMRIGHT', -(SPACING +PANEL_HEIGHT), -PANEL_HEIGHT -SPACING)
	Bui_rdtp:Style('Outside', nil, false, true)

	-- Middle dt panel
	Bui_mdtp:SetFrameStrata('BACKGROUND')
	Bui_mdtp:Point('BOTTOM', E.UIParent, 'BOTTOM', 0, 2)
	Bui_mdtp:Width(E.db.benikui.datatexts.middle.width or 400)
	Bui_mdtp:Height(E.db.benikui.datatexts.middle.height or PANEL_HEIGHT)
	Bui_mdtp:Style('Outside', nil, false, true)

	E:CreateMover(Bui_mdtp, "BuiMiddleDtMover", L['BenikUI Middle DataText'], nil, nil, nil, 'ALL,BenikUI', nil, 'benikui,datatexts')

	-- dummy frame for chat (left)
	Bui_dchat:SetFrameStrata('LOW')
	Bui_dchat:Point('TOPLEFT', LeftChatPanel, 'BOTTOMLEFT', 0, -SPACING)
	Bui_dchat:Point('BOTTOMRIGHT', LeftChatPanel, 'BOTTOMRIGHT', 0, -PANEL_HEIGHT -SPACING)

	-- Buttons
	for i = 1, BUTTON_NUM do
		bbuttons[i] = CreateFrame('Button', 'BuiButton_'..i, E.UIParent)
		bbuttons[i]:RegisterForClicks('AnyUp')
		bbuttons[i]:SetFrameStrata('BACKGROUND')
		bbuttons[i]:CreateSoftGlow()
		bbuttons[i].sglow:Hide()
		bbuttons[i]:Style('Outside', nil, false, true)
		bbuttons[i].text = bbuttons[i]:CreateFontString(nil, 'OVERLAY')
		bbuttons[i].text:FontTemplate(LSM:Fetch('font', E.db.datatexts.font), E.db.datatexts.fontSize, E.db.datatexts.fontOutline)
		bbuttons[i].text:SetPoint('CENTER', 1, 0)
		bbuttons[i].text:SetJustifyH('CENTER')
		bbuttons[i].text:SetTextColor(BUI:unpackColor(E.db.general.valuecolor))
		if (i == 1 or i == 3) then
			bbuttons[i]:RegisterEvent('MODIFIER_STATE_CHANGED')
		end

		-- ElvUI Config
		if i == 1 then
			bbuttons[i]:Point('TOPLEFT', Bui_rdtp, 'TOPRIGHT', SPACING, 0)
			bbuttons[i]:Point('BOTTOMRIGHT', Bui_rdtp, 'BOTTOMRIGHT', PANEL_HEIGHT + SPACING, 0)
			bbuttons[i].parent = RightChatPanel
			bbuttons[i].text:SetText('C')

			bbuttons[i]:SetScript('OnEvent', function(self, event)
				if event then
					if IsShiftKeyDown() then
						self.text:SetText('>')
					else
						self.text:SetText('C')
					end
				end
			end)

			bbuttons[i]:SetScript('OnClick', function(self, btn)
				if IsShiftKeyDown() then
					ChatButton_OnClick(self)
				else
					if btn == 'LeftButton' then
						E:ToggleOptionsUI()
					else
						if BUI.AS then
							local AS = unpack(AddOnSkins) or nil
							if AS:CheckOption('EmbedRightChat') and EmbedSystem_MainWindow then
								if EmbedSystem_MainWindow:IsShown() then
									AS:SetOption('EmbedIsHidden', true)
									EmbedSystem_MainWindow:Hide()
								else
									AS:SetOption('EmbedIsHidden', false)
									EmbedSystem_MainWindow:Show()
								end
							end
						else
							E:BGStats()
						end
					end
					PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_OFF);
				end
			end)

			bbuttons[i]:SetScript('OnEnter', function(self)
				GameTooltip:SetOwner(self, 'ANCHOR_TOPRIGHT', 0, 2 )
				GameTooltip:ClearLines()
				GameTooltip:AddLine(L['LeftClick: Toggle Configuration'], 0.7, 0.7, 1)
				if BUI.AS then
					GameTooltip:AddLine(L['RightClick: Toggle Embedded Addon'], 0.7, 0.7, 1)
				end
				GameTooltip:AddLine(L['ShiftClick to toggle chat'], 0.7, 0.7, 1)

				if not E.db.benikui.datatexts.chat.styled then
					self.sglow:Show()
				end

				GameTooltip:Show()
				if InCombatLockdown() then GameTooltip:Hide() end
			end)

			bbuttons[i]:SetScript('OnLeave', function(self)
				self.sglow:Hide()
				GameTooltip:Hide()
			end)

		-- Game menu button
		elseif i == 2 then
			bbuttons[i]:Point('TOPRIGHT', Bui_rdtp, 'TOPLEFT', -SPACING, 0)
			bbuttons[i]:Point('BOTTOMLEFT', Bui_rdtp, 'BOTTOMLEFT', -(PANEL_HEIGHT + SPACING), 0)
			bbuttons[i].text:SetText('G')

			bbuttons[i]:SetScript('OnClick', BuiGameMenu_OnMouseUp)

			bbuttons[i]:SetScript('OnEnter', function(self)
				if not E.db.benikui.datatexts.chat.styled then
					self.sglow:Show()
				end
				GameTooltip:SetOwner(self, 'ANCHOR_TOPRIGHT', 0, 2 )
				GameTooltip:ClearLines()
				GameTooltip:AddLine(MAINMENU_BUTTON, selectioncolor)
				GameTooltip:Show()
				if InCombatLockdown() then GameTooltip:Hide() end
			end)

			bbuttons[i]:SetScript('OnLeave', function(self)
				self.sglow:Hide()
				GameTooltip:Hide()
			end)

		-- AddOns Button
		elseif i == 3 then
			bbuttons[i]:Point('TOPRIGHT', Bui_ldtp, 'TOPLEFT', -SPACING, 0)
			bbuttons[i]:Point('BOTTOMLEFT', Bui_ldtp, 'BOTTOMLEFT', -(PANEL_HEIGHT + SPACING), 0)
			bbuttons[i].parent = LeftChatPanel
			bbuttons[i].text:SetText('A')

			bbuttons[i]:SetScript('OnEvent', function(self, event)
				if event then
					if IsShiftKeyDown() then
						self.text:SetText('<')
					else
						self.text:SetText('A')
					end
				end
			end)

			bbuttons[i]:SetScript('OnClick', function(self)
				if IsShiftKeyDown() then
					ChatButton_OnClick(self)
				else
					GameMenuButtonAddons:Click()
				end
			end)

			bbuttons[i]:SetScript('OnEnter', function(self)
				if not E.db.benikui.datatexts.chat.styled then
					self.sglow:Show()
				end
				GameTooltip:SetOwner(self, 'ANCHOR_TOP', 64, 2 )
				GameTooltip:ClearLines()
				GameTooltip:AddLine(L['Click to show the Addon List'], 0.7, 0.7, 1)
				GameTooltip:AddLine(L['ShiftClick to toggle chat'], 0.7, 0.7, 1)
				GameTooltip:Show()
				if InCombatLockdown() then GameTooltip:Hide() end
			end)

			bbuttons[i]:SetScript('OnLeave', function(self)
				self.sglow:Hide()
				GameTooltip:Hide()
			end)

		-- Status Button
		elseif i == 4 then
			bbuttons[i]:Point('TOPLEFT', Bui_ldtp, 'TOPRIGHT', SPACING, 0)
			bbuttons[i]:Point('BOTTOMRIGHT', Bui_ldtp, 'BOTTOMRIGHT', PANEL_HEIGHT + SPACING, 0)
			bbuttons[i].text:SetText('S')

			bbuttons[i]:SetScript('OnClick', BuiStatusMenu_OnMouseUp)
			
			bbuttons[i]:SetScript('OnEnter', function(self)
				if not E.db.benikui.datatexts.chat.styled then
					self.sglow:Show()
				end
				GameTooltip:SetOwner(self, 'ANCHOR_TOPLEFT', 0, 2)
				GameTooltip:ClearLines()
				GameTooltip:AddLine(L['Set Player Status or Reload'])
				GameTooltip:Show()
				if InCombatLockdown() then GameTooltip:Hide() end
			end)

			bbuttons[i]:SetScript('OnLeave', function(self)
				self.sglow:Hide()
				GameTooltip:Hide()
			end)
		end
	end
	
	ElvUI_BottomPanel:SetScript('OnShow', Panel_OnShow)
	ElvUI_BottomPanel:SetFrameLevel(0)
	ElvUI_TopPanel:SetScript('OnShow', Panel_OnShow)
	ElvUI_TopPanel:SetFrameLevel(0)

	LeftChatPanel.backdrop:Style('Outside', 'LeftChatPanel_Bui') -- keeping the names. Maybe use them as rep or xp bars... dunno... yet
	RightChatPanel.backdrop:Style('Outside', 'RightChatPanel_Bui')

	if BUI.ShadowMode then
		LeftMiniPanel:CreateSoftShadow()
		RightMiniPanel:CreateSoftShadow()
		LeftChatDataPanel:CreateSoftShadow()
		LeftChatToggleButton:CreateSoftShadow()
		RightChatDataPanel:CreateSoftShadow()
		RightChatToggleButton:CreateSoftShadow()
	end

	-- Minimap elements styling
	if E.private.general.minimap.enable then Minimap.backdrop:Style('Outside') end

	if CopyChatFrame then CopyChatFrame:Style('Outside') end

	self:ResizeMinimapPanels()
	self:ToggleTransparency()
end

-- Add minimap styling option in ElvUI minimap options
local function InjectMinimapOption()
	E.Options.args.maps.args.minimap.args.generalGroup.args.benikuiStyle = {
		order = 3,
		type = "toggle",
		name = BUI:cOption(L['BenikUI Style']),
		disabled = function() return not E.private.general.minimap.enable or not E.db.benikui.general.benikuiStyle end,
		get = function(info) return E.db.general.minimap.benikuiStyle end,
		set = function(info, value) E.db.general.minimap.benikuiStyle = value; mod:ToggleMinimapStyle(); end,
	}
end
tinsert(BUI.Config, InjectMinimapOption)

function mod:ToggleMinimapStyle()
	if E.private.general.minimap.enable ~= true or E.db.benikui.general.benikuiStyle ~= true then return end
	if E.db.general.minimap.benikuiStyle then
		Minimap.backdrop.style:Show()
	else
		Minimap.backdrop.style:Hide()
	end
end

function mod:regEvents()
	self:MiddleDatatextLayout()
	self:MiddleDatatextDimensions()
	self:ToggleTransparency()
end

function mod:PLAYER_ENTERING_WORLD(...)
	self:ToggleBuiDts()
	self:regEvents()
	self:UnregisterEvent("PLAYER_ENTERING_WORLD")
end

function mod:Initialize()
	RegDataTexts()
	self:ChangeLayout()
	self:ChatStyles()
	self:ToggleMinimapStyle()
	hooksecurefunc(LO, 'ToggleChatPanels', mod.ToggleBuiDts)
	hooksecurefunc(LO, 'ToggleChatPanels', mod.ResizeMinimapPanels)
	hooksecurefunc(LO, 'ToggleChatPanels', mod.ChatStyles)
	hooksecurefunc(M, 'UpdateSettings', mod.ResizeMinimapPanels)
	hooksecurefunc(DT, 'LoadDataTexts', updateButtonFont)
	hooksecurefunc(E, 'UpdateMedia', updateButtonFont)
	self:RegisterEvent('PLAYER_ENTERING_WORLD')
end

BUI:RegisterModule(mod:GetName())