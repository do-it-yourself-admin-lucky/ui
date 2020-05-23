local E, L, V, P, G = unpack(ElvUI); --Inport: Engine, Locales, PrivateDB, ProfileDB, GlobalDB
local DT = E:GetModule('DataTexts')


local displayNumberString = ''
local lastPanel;
local join = string.join
local UnitStat =UnitStat

local function OnEvent(self, event, ...)
	
	local stat  = UnitStat("player", 5)
	
	self.text:SetFormattedText(displayNumberString, L['Spirit: '], stat)

	lastPanel = self
end

local function ValueColorUpdate(hex, r, g, b)
	displayNumberString = string.join("", "%s", hex, "%.f|r")
	
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
	"UNIT_STATS",
	"UNIT_AURA",
	"SKILL_LINES_CHANGED"
}

DT:RegisterDatatext('Spirit', events, OnEvent)

