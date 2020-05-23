local E, L, V, P, G = unpack(ElvUI); --Inport: Engine, Locales, PrivateDB, ProfileDB, GlobalDB
local DT = E:GetModule('DataTexts')

local lastPanel;
local join = string.join

local GetNumQuestLogEntries = GetNumQuestLogEntries
local GetQuestLogTitle = GetQuestLogTitle
local SelectQuestLogEntry = SelectQuestLogEntry
local GetQuestLogRewardMoney = GetQuestLogRewardMoney
local MAX_QUESTLOG_QUESTS = MAX_QUESTLOG_QUESTS
local select = select

local function OnEvent(self, event, ...)
    
	local numEntries, numQuests = GetNumQuestLogEntries()
	

	local questCompleteCount = 0
	for i = 1, numEntries do
		local isComplete = select(6, GetQuestLogTitle(i))

		if not isHeader then
			if isComplete == 1 then
				questCompleteCount = questCompleteCount + 1
			end
		end

	end



	self.text:SetFormattedText(QUEST_LOG_COUNT_TEMPLATE .. ' (%d)', numQuests, MAX_QUESTLOG_QUESTS, questCompleteCount)
	
	lastPanel = self
end


local function OnClick(self)
    ToggleQuestLog()
end


local function OnEnter(self)
	DT:SetupTooltip(self)
	


	local numEntries, numQuests = GetNumQuestLogEntries()

	local questRewardCount = 0
	for i = 1, numEntries do
		local isHeader = select(4,GetQuestLogTitle(i))

		if not isHeader then
			SelectQuestLogEntry(i)
			local copper = GetQuestLogRewardMoney()
			if copper ~= 0 then
				questRewardCount = questRewardCount + copper
			end
		end

	end
	

	DT.tooltip:AddDoubleLine('Gold from Quests', E:FormatMoney(questRewardCount, "SMART"))


	DT.tooltip:Show()

end

local function ValueColorUpdate(hex, r, g, b)
	displayNumberString = join("", "%s", hex, "%.f|r")
	
	if lastPanel ~= nil then
		OnEvent(lastPanel)
	end
end
E['valueColorUpdateFuncs'][ValueColorUpdate] = true
--[[
	DT:RegisterDatatext(name, events, eventFunc, updateFunc, clickFunc, onEnterFunc, onLeaveFunc)
	
	name - name of the datatext (required)
	events - must be a table with string values of event names to register 
	eventFunc - function that gets fired when an event gets triggered
	updateFunc - onUpdate script target function
	click - function to fire when clicking the datatext
	onEnterFunc - function to fire OnEnter
	onLeaveFunc - function to fire OnLeave, if not provided one will be set for you that hides the tooltip.
]]
local events = {
	"QUEST_ACCEPTED",
	"QUEST_REMOVED",
	"QUEST_TURNED_IN",
	"QUEST_LOG_UPDATE"
}

DT:RegisterDatatext('Quest Count', events, OnEvent, nil, OnClick, OnEnter)
