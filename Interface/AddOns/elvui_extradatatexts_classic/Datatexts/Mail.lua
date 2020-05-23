local E, L, V, P, G, _ =  unpack(ElvUI);
local DT = E:GetModule('DataTexts')

local Mail_Icon = "";
local HasNewMail = HasNewMail
local GetInboxHeaderInfo = GetInboxHeaderInfo
local GetInboxNumItems = GetInboxNumItems

local function MakeIconString()
	local str = ""
		str = str..Mail_Icon

	return str
end

local function OnEvent(self, event, ...)
	local newMail = HasNewMail()
	
	if newMail then
		self.text:SetText("New Mail")
	else
		self.text:SetText("No Mail")
	end

end

local function OnEnter(self)
	DT:SetupTooltip(self)
	


	local sender1,sender2,sender3 = GetLatestThreeSenders();
	local toolText;

	if( sender1 or sender2 or sender3 ) then
		toolText = HAVE_MAIL_FROM;
	else
		toolText = HAVE_MAIL;
	end

	if( sender1 ) then
		toolText = toolText.."\n"..sender1;
	end
	if( sender2 ) then
		toolText = toolText.."\n"..sender2;
	end
	if( sender3 ) then
		toolText = toolText.."\n"..sender3;
	end

	DT.tooltip:SetText(toolText)

	DT.tooltip:Show()

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

DT:RegisterDatatext('Mail', {'PLAYER_ENTERING_WORLD', 'MAIL_INBOX_UPDATE', 'UPDATE_PENDING_MAIL', 'MAIL_CLOSED', 'PLAYER_LOGIN','MAIL_SHOW'}, OnEvent, nil, nil, OnEnter)

