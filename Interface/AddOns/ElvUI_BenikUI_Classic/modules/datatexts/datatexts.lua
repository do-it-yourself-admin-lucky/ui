local BUI, E, L, V, P, G = unpack(select(2, ...))
local DT = E:GetModule('DataTexts')
local mod = BUI:NewModule('DataTexts', 'AceEvent-3.0');
local LSM = E.LSM;
local LDB = LibStub:GetLibrary("LibDataBroker-1.1");

local pairs, type, select, join = pairs, type, select, string.join

local GetBattlefieldScore = GetBattlefieldScore
local GetNumBattlefieldScores = GetNumBattlefieldScores
local IsInInstance = IsInInstance

DT.SetupTooltipBui = DT.SetupTooltip
function DT:SetupTooltip(panel)
	self:SetupTooltipBui(panel)
	self.tooltip:Style('Outside')
end

local lastPanel
local displayString = ''

local dataLayout = {
	['LeftChatDataPanel'] = {
		['middle'] = 5,
		['right'] = 2,
	},
	['RightChatDataPanel'] = {
		['left'] = 4,
		['middle'] = 3,
	},
	['BuiLeftChatDTPanel'] = {
		['middle'] = 5,
		['right'] = 2,
	},
	['BuiRightChatDTPanel'] = {
		['left'] = 4,
		['middle'] = 3,
	},
}

local dataStrings = {
	[5] = _G.HONOR,
	[2] = _G.KILLING_BLOWS,
	[4] = _G.DEATHS,
	[3] = _G.KILLS,
}

local name

function mod:UPDATE_BATTLEFIELD_SCORE()
	lastPanel = self

	local pointIndex = dataLayout[self:GetParent():GetName()][self.pointIndex]
	for i = 1, GetNumBattlefieldScores() do
		local name = GetBattlefieldScore(i)
		if name == E.myname then
			if pointIndex then
				local val = select(pointIndex, GetBattlefieldScore(i))

				if val then
					self.text:SetFormattedText(displayString, dataStrings[pointIndex], E:ShortValue(val))
				end
			end

			break
		end
	end
end

function mod:HideBattlegroundTexts()
	DT.ForceHideBGStats = true
	mod:LoadDataTexts()
	E:Print(L["Battleground datatexts temporarily hidden, to show type /bgstats or right click the 'C' icon near the minimap."])
end

function DT:LoadDataTexts()
	self.db = E.db.datatexts
	for name, obj in LDB:DataObjectIterator() do
		LDB:UnregisterAllCallbacks(self)
	end

	local inInstance, instanceType = IsInInstance()
	local fontTemplate = LSM:Fetch("font", self.db.font)
	for panelName, panel in pairs(DT.RegisteredPanels) do
		--Restore Panels
		for i=1, panel.numPoints do
			local pointIndex = DT.PointLocation[i]
			panel.dataPanels[pointIndex]:UnregisterAllEvents()
			panel.dataPanels[pointIndex]:SetScript('OnUpdate', nil)
			panel.dataPanels[pointIndex]:SetScript('OnEnter', nil)
			panel.dataPanels[pointIndex]:SetScript('OnLeave', nil)
			panel.dataPanels[pointIndex]:SetScript('OnClick', nil)
			panel.dataPanels[pointIndex].text:FontTemplate(fontTemplate, self.db.fontSize, self.db.fontOutline)
			panel.dataPanels[pointIndex].text:SetWordWrap(self.db.wordWrap)
			panel.dataPanels[pointIndex].text:SetText(nil)
			panel.dataPanels[pointIndex].pointIndex = pointIndex

			if (panelName == 'LeftChatDataPanel' or panelName == 'RightChatDataPanel' or panelName == 'BuiLeftChatDTPanel' or panelName == 'BuiRightChatDTPanel') and (inInstance and (instanceType == "pvp")) and not DT.ForceHideBGStats and E.db.datatexts.battleground then
				panel.dataPanels[pointIndex]:RegisterEvent('UPDATE_BATTLEFIELD_SCORE')
				panel.dataPanels[pointIndex]:SetScript('OnEvent', mod.UPDATE_BATTLEFIELD_SCORE)
				panel.dataPanels[pointIndex]:SetScript('OnEnter', DT.BattlegroundStats)
				panel.dataPanels[pointIndex]:SetScript('OnLeave', DT.Data_OnLeave)
				panel.dataPanels[pointIndex]:SetScript('OnClick', mod.HideBattlegroundTexts)
				mod.UPDATE_BATTLEFIELD_SCORE(panel.dataPanels[pointIndex])
			else
				--Register Panel to Datatext
				for name, data in pairs(DT.RegisteredDataTexts) do
					for option, value in pairs(self.db.panels) do
						if value and type(value) == 'table' then
							if option == panelName and self.db.panels[option][pointIndex] and self.db.panels[option][pointIndex] == name then
								DT:AssignPanelToDataText(panel.dataPanels[pointIndex], data)
							end
						elseif value and type(value) == 'string' and value == name then
							if self.db.panels[option] == name and option == panelName then
								DT:AssignPanelToDataText(panel.dataPanels[pointIndex], data)
							end
						end
					end
				end
			end
		end
	end

	if DT.ForceHideBGStats then
		DT.ForceHideBGStats = nil;
	end
end

local function ValueColorUpdate(hex)
	displayString = join("", "%s: ", hex, "%s|r")

	if lastPanel ~= nil then
		mod.UPDATE_BATTLEFIELD_SCORE(lastPanel)
	end
end
E['valueColorUpdateFuncs'][ValueColorUpdate] = true

function mod:Initialize()
	DT:LoadDataTexts()
end

BUI:RegisterModule(mod:GetName())