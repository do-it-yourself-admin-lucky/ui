local E, L, V, P, G = unpack(ElvUI); --Inport: Engine, Locales, PrivateDB, ProfileDB, GlobalDB
local DT = E:GetModule('DataTexts')

--Lua functions
local select = select
local format, join = string.format, string.join
local ceil = math.ceil
local strform = string.format
local tonumber = tonumber
local tostring = tostring

--WoW API / Variables
local L_EasyMenu = L_EasyMenu
local setCV = SetCVar
local getCV = GetCVar
local IsShiftKeyDown = IsShiftKeyDown

local volumeCVars = {
	{
		Name = "Master",
		Volume = {
			CVar = "Sound_MasterVolume",
			Value = 0
		},
		Enable = {
			CVar = "Sound_EnableMaster",
			Value = 0
		}
	},
	{
		Name = "SFX",
		Volume = {
			CVar = "Sound_SFXVolume",
			Value = 0
		},
		Enable = {
			CVar = "Sound_EnableSXF",
			Value = 0
		}
	},
	{
		Name = "Ambience",
		Volume = {
			CVar = "Sound_AmbienceVolume",
			Value = 0
		},
		Enable = {
			CVar = "Sound_EnableAmbience",
			Value = 0
		}
	},
	{
		Name = "Dialog",
		Volume = {
			CVar = "Sound_DialogVolume",
			Value = 0
		},
		Enable = {
			CVar = "Sound_EnableDialog",
			Value = 0
		}
	},
	{
		Name = "Music",
		Volume = {
			CVar = "Sound_MusicVolume",
			Value = 0
		},
		Enable = {
			CVar = "Sound_EnableMusic",
			Value = 0
		}
	}
}

local activeVolumeIndex = 1
local activeVolume = volumeCVars[activeVolumeIndex]


local function roundVal(num, numDecimalPlaces)
  local mult = 10^(numDecimalPlaces or 0)
  return ceil(num * mult + 0.5) / mult
end

local function OnEvent(self, event, ...)
	for key,value in pairs(volumeCVars) do
		value.Volume.Value = roundVal(getCV(value.Volume.CVar), 3)
		setCV(value.Volume.CVar, value.Volume.Value)
		value.Enable.Value = getCV(value.Enable.CVar)
	end

	if (event == "PLAYER_ENTERING_WORLD" ) then

		self:EnableMouseWheel(true)

		self:SetScript("OnMouseWheel", function(tself, delta)
			local vol = activeVolume.Volume.Value;
			local volScale = 100;
			
			if (IsShiftKeyDown()) then
				volScale = 10;
			end

			vol = vol + (delta / volScale)

			if (vol >= 1) then
				vol = 1
			elseif (vol <= 0) then
				vol = 0
			end
			
			
			activeVolume.Volume.Value = vol
			setCV(activeVolume.Volume.CVar, vol)
			self.text:SetText(activeVolume.Name..": "..strform("%.f", vol * 100) .. "%")
		end)
		
	end
	
	self.text:SetText(activeVolume.Name..": "..strform("%.f", activeVolume.Volume.Value * 100) .. "%")
	
end



local function OnEnter(self)
	DT:SetupTooltip(self)	
	local tip = DT.tooltip;	
	
	
	
	
	tip:AddDoubleLine("Test", "Test 2", 1, 1, 1, 1, 1, 1)

	--DT.tooltip:Show()
	
end

local function OnClick(self)
	activeVolumeIndex = activeVolumeIndex + 1
	if (activeVolumeIndex == 6) then
		activeVolumeIndex = 1
	end

	activeVolume = volumeCVars[activeVolumeIndex]
	

	OnEvent(self, nil, nil)
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


DT:RegisterDatatext('Volume', {'PLAYER_ENTERING_WORLD', "CVAR_UPDATE"}, OnEvent, nil, OnClick, OnEnter, nil)

