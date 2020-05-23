local E, L, V, P, G = unpack(ElvUI); --Inport: Engine, Locales, PrivateDB, ProfileDB, GlobalDB
local DT = E:GetModule('DataTexts')
local format = format

local function OnEvent(self, event, ...)

	
	if event == "PLAYER_REGEN_ENABLED" then
		self.text:SetText("Out of Combat")
		return;
	elseif event == "PLAYER_REGEN_DISABLED" then
		self.text:SetText(format("|cffff0000In Combat|r"))
		return;
	end
	
	self.text:SetText("Out of Combat")
end
	
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


DT:RegisterDatatext('Combat Indicator', {'PLAYER_ENTERING_WORLD', 'PLAYER_REGEN_ENABLED', 'PLAYER_REGEN_DISABLED'}, OnEvent)

