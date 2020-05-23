local E, L, V, P, G = unpack(ElvUI); --Inport: Engine, Locales, PrivateDB, ProfileDB, GlobalDB
local DT = E:GetModule('DataTexts')

local strform = string.format
local tonumber = tonumber
local tostring = tostring

local displayString = ''
local lastPanel;
local join = string.join
local UnitLevel = UnitLevel
local UnitXP = UnitXP
local UnitXPMax = UnitXPMax
local GetXPExhaustion = GetXPExhaustion
local GetWatchedFactionInfo = GetWatchedFactionInfo

local xp, lvl, xpmax, restxp, percentXP, percentRest
local rep, replvlmax, repStandingID, repstatus, watchedFaction

local chosen




if UnitLevel("player") == MAX_PLAYER_LEVEL then
	chosen = "r";
else
	chosen = "x";
end

local shortnum = function(v)
	if v <= 999 then
		return v
	elseif v >= 1000000 then
		return format("%.1fm", v/1000000)
	elseif v >= 1000 then
		return format("%.1fk", v/1000)
	end
end



local function OnEvent(self, event, ...)

	xp = UnitXP("player")
	lvl = UnitLevel("player")
	xpmax = UnitXPMax("player")
	
	if xpmax == 0 then return end
	
	restxp = GetXPExhaustion() or 0
	
	if not restxp then
		percentRest = (restxp/xpmax) * 100
		else
		percentRest = 0
	end
	
	percentXP = (xp/xpmax) * 100
	if (xp <= 0) or (xpmax <= 0) then
		percentXP = 0
	else
		percentXP = (xp/xpmax)*100
	end
	
	local CurWatchedFaction, replvl, repmin, repmax, repvalue
	
	if GetWatchedFactionInfo() == nil then
		watchedFaction = "Faction Not Set";
		rep = 0;
		repvalue = 0;
		replvlmax = 0;
		repstatus = NONE;
		repStandingID = 0;
		repmin = 0;
		repmax = 0;
		replvl = 0
	else
		CurWatchedFaction, replvl, repmin, repmax, repvalue = GetWatchedFactionInfo()
	end
	
	watchedFaction = CurWatchedFaction
	rep = repvalue - repmin
	replvlmax = repmax - repmin
	repstatus = getglobal("FACTION_STANDING_LABEL"..replvl)
	repStandingID = replvl
	
	local percentRep
	if (replvlmax <= 0) then
		percentRep = 0
	else
		percentRep = (rep/(replvlmax))*100
	end
	local percentRepStr = tostring(percentRep)
	
	if watchedFaction == NONE then
		watchedFaction = L["Faction not set"]
		repstatus = "---"
		rep = 0
		replvlmax = 0
		percentRepStr = "---"
	end
	
	local repStandingColor = {0.9, 0.9, 0.9}
	if watchedFaction then
		repStandingColor = {FACTION_BAR_COLORS[repStandingID].r, FACTION_BAR_COLORS[repStandingID].g, FACTION_BAR_COLORS[repStandingID].b}
	end
	
	if chosen == "x" then
		if UnitLevel("player") < MAX_PLAYER_LEVEL then
			self.text:SetText(strform("|cff1783d1Exp: |r%s (%.2f%%)", shortnum(xp), percentXP))
		else
			chosen = "r";
		end
	elseif chosen == "r" then
		if (repstatus == "---") then
			self.text:SetText(L["Faction Not Set"])
			else
			self.text:SetText(strform("|cff1783d1Rep:|r %s (%.2f%%)" ,shortnum(rep), percentRep))
		end
	end
	
	lastPanel = self
end

local function Click(self)

	if chosen == "x" then
		chosen = "r"
	else
		chosen = "x"
	end
	
	
	OnEvent(self)

end

local sb;
local function CreateSB(self)
	
	sb = CreateFrame("StatusBar", "Experience", self)
	sb:SetPoint("TOPLEFT", self, "BOTTOMLEFT", 1, 2)
	sb:SetWidth(self:GetWidth() - 3)
	sb:SetHeight(10)
	sb:SetStatusBarTexture(E["media"].normTex)
	--sb:CreateBackdrop('Transparent')
	sb:SetMinMaxValues(0, xpmax)	
	sb:SetFrameLevel(self:GetFrameLevel()+4)
	
	if UnitLevel("player") < MAX_PLAYER_LEVEL then
		sb:SetStatusBarColor(23/255, 131/255, 205/255)
		sb:SetMinMaxValues(0, xpmax)
	else
		--sb:SetStatusBarColor(FACTION_BAR_COLORS[repStandingID].r, FACTION_BAR_COLORS[repStandingID].g, FACTION_BAR_COLORS[repStandingID].b)	
		sb:SetMinMaxValues(0, replvlmax)
	end
	
end



local function OnEnter(self)
	DT:SetupTooltip(self)	
	local tip = DT.tooltip;	
	

	--CreateSB(tip)
    --
	--if UnitLevel("player") < MAX_PLAYER_LEVEL then
	--	sb:SetValue(xp)
	--else
	--	sb:SetValue(rep)
	--end


	
	if UnitLevel("player") < MAX_PLAYER_LEVEL then
	
		tip:AddLine(COMBAT_XP_GAIN)

		tip:AddDoubleLine(L["Current"], shortnum(xp).." ("..strform("%.2f",percentXP).."%)", 1, 1, 1, 1, 1, 1)
		tip:AddDoubleLine(L["Remaining"], shortnum(xpmax-xp).." ("..strform("%.2f", 100- percentXP).."%)", 1, 1, 1, 1, 1, 1)
		
		if restxp == 0 then		
			
		else
			tip:AddDoubleLine(L["Rested"], shortnum(restxp).." ("..strform("%.2f", 100 - percentRest).."%)", 1, 1, 1, 1, 1, 1)
		end
		tip:AddLine(" ")
		tip:AddLine(L["Reputation"])
	else
		tip:AddLine(L["Reputation"])	
	end
	
	local repStandingColor = {0.9, 0.9, 0.9}
	if watchedFaction then
		repStandingColor = {FACTION_BAR_COLORS[repStandingID].r, FACTION_BAR_COLORS[repStandingID].g, FACTION_BAR_COLORS[repStandingID].b}
	end
	
	tip:AddDoubleLine(FACTION, watchedFaction, 0.9, 0.9, 0.9, 0.9, 0.9, 0.9)
	tip:AddDoubleLine(STATUS, repstatus, 0.9, 0.9, 0.9, repStandingColor[1], repStandingColor[2], repStandingColor[3])
	tip:AddDoubleLine(L["Current"], shortnum(rep), 0.9, 0.9, 0.9, 0.9, 0.9, 0.9)
	tip:AddDoubleLine(L["Remaining"], shortnum(replvlmax - rep), 0.9, 0.9, 0.9, 0.9, 0.9, 0.9)
	

	DT.tooltip:Show()
	
end

local function ValueColorUpdate(hex, r, g, b)
	displayString = string.join("", "%s", hex, "%.2f%%|r")
	
	if lastPanel ~= nil then
		OnEvent(lastPanel)
	end
end
E['valueColorUpdateFuncs'][ValueColorUpdate] = true


local events = {
	'PLAYER_ENTERING_WORLD',
	"PLAYER_XP_UPDATE",
	"PLAYER_UPDATE_RESTING",
	"UPDATE_FACTION",
}



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
DT:RegisterDatatext('Exp Rep', events, OnEvent, nil, Click, OnEnter)

