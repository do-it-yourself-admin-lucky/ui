local E, L, V, P, G, _ =  unpack(ElvUI)
local EQXP = E:NewModule('QuestXP', 'AceEvent-3.0', 'AceHook-3.0')

local addonName, addonTable = ...
local EP = LibStub("LibElvUIPlugin-1.0")

local questBar
local questLogXP

local UnitXPMax = UnitXPMax
local UnitXP = UnitXP
local GetMapInfo = C_Map.GetMapInfo
local GetBestMapForUnit = C_Map.GetBestMapForUnit
local GetQuestLogRewardXP = GetQuestLogRewardXP
local CreateFrame = CreateFrame

--Default options
P["QuestXP"] = {
    ["IncludeIncomplete"] = false,
    ["CurrentZoneOnly"] = false,
    ["QuestXPColor"] = {r = 217/255,g = 217/255,b = 0},
    ["Bubbles"] = true,
    ["AddQuestXPToTooltip"] = true
}

function EQXP:InsertOptions()
    E.Options.args.databars.args.experience.args.questXP = {
        order = 100,
        type = "group",
        name = "Quest XP",
        guiInline = true,
        args = {
            QuestXPColor = {
                order = 1,
                type = "color",
                name = "Quest XP Color",
                get = function(info)
                    local t = E.db.QuestXP.QuestXPColor
                    return t.r, t.g, t.b, t.a, 102/255, 136/255, 255/255, 1
                end,
                set = function(info, r, g, b, a)
                     local t = E.db.QuestXP.QuestXPColor
                     t.r, t.g, t.b, t.a = r, g, b, a
                     EQXP:Refresh()
                end
            },
            Bubbles = {
                order = 2,
                type = "toggle",
                name = "Bubbles",
                get = function(info) return E.db.QuestXP.Bubbles end,
                set = function(info, val) E.db.QuestXP.Bubbles = val; EQXP:Refresh() end
            },
            IncludeIncompleted = {
                order = 3,
                type = "toggle",
                name = "Include Incomplete Quests",
                get = function(info) return E.db.QuestXP.IncludeIncomplete end,
                set = function(info, val) E.db.QuestXP.IncludeIncomplete = val; EQXP:Refresh() end
            },
            CurrentZoneOnly = {
                order = 4,
                type = "toggle",
                name = "Current Zone Quests Only",
                get = function(info) return E.db.QuestXP.CurrentZoneOnly end,
                set = function(info, val) E.db.QuestXP.CurrentZoneOnly = val; EQXP:Refresh() end
            },
            AddQuestXPToTooltip = {
                order = 5,
                type = "toggle",
                name = "Add Quest XP To Tooltip",
                get = function(info) return E.db.QuestXP.AddQuestXPToTooltip end,
                set = function(info, val) E.db.QuestXP.AddQuestXPToTooltip = val; EQXP:HookXPBar(val) end
            },
        }
    }
end

function EQXP:Refresh(event)


    if (E.db.QuestXP.Bubbles) then
        ElvUI_ExperienceBar.bubbles:Show()
    else
        ElvUI_ExperienceBar.bubbles:Hide()
    end

	
	local maxXP = UnitXPMax("player");
	
    
    questBar:SetMinMaxValues(0, maxXP);

    local mapID = GetBestMapForUnit("player")
	
	if mapID == nil then
		return
	end
	
	
    local zoneName = GetMapInfo(mapID).name

    local currentXP = UnitXP("player")
    local currentQuestXPTotal = self:GetQuestLogXP()

	

    questLogXP = currentQuestXPTotal
    questBar:SetValue(min(currentXP + currentQuestXPTotal, UnitXPMax("player")))
	
	local col = E.db.QuestXP.QuestXPColor
	
	if (currentXP + currentQuestXPTotal) >= maxXP then
		questBar:SetStatusBarColor(0/255, 255/255, 0/255, 0.5)
	else
		questBar:SetStatusBarColor(col.r, col.g, col.b, col.a)
	end
    
	
    ElvUI_ExperienceBar.bubbles:SetWidth(ElvUI_ExperienceBar:GetWidth() - 4)
    ElvUI_ExperienceBar.bubbles:SetHeight(ElvUI_ExperienceBar:GetHeight() - 8)
end

function EQXP:GetQuestLogXP()
    local currentQuestXPTotal = 0
    local lastHeader
    local i = 1
    while GetQuestLogTitle(i) do
      local questLogTitleText, level, suggestedGroup, isHeader, isCollapsed, isComplete, isDaily, questID = GetQuestLogTitle(i)
        if (not isHeader) then
            local incompleteCheck = true
            local zoneCheck = true

            if (not E.db.QuestXP.IncludeIncomplete) then
                if not isComplete then
                    incompleteCheck = false                    
                end

            end

            if E.db.QuestXP.CurrentZoneOnly then
                if lastHeader ~= zoneName then
                    zoneCheck = false
                end
            end

            if incompleteCheck and zoneCheck then
                currentQuestXPTotal = currentQuestXPTotal + GetQuestLogRewardXP(questID)
            end
        else
            lastHeader = questLogTitleText
      end
      i = i + 1
    end

    return currentQuestXPTotal
end

function EQXP:AddExpBarTooltip(frame)
    self.hooks[frame].OnEnter(frame)
    local GameTooltip = _G.GameTooltip
    GameTooltip:AddDoubleLine("Quest Log XP:", questLogXP, 1, 1, 1)
	GameTooltip:Show()
end

function EQXP:HookXPBar(val)
    if (val) then
        EQXP:RawHookScript(ElvUI_ExperienceBar, "OnEnter", "AddExpBarTooltip")
    else
        EQXP:Unhook(ElvUI_ExperienceBar, "OnEnter")
    end

end


function EQXP:Initialize()

    local bar = ElvUI_ExperienceBar
    questBar = CreateFrame('StatusBar', nil, bar)
    bar.questBar = questBar
    questBar:SetInside()
    questBar:SetStatusBarTexture(E.media.normTex)
    E:RegisterStatusBar(bar.questBar)

    questBar:SetOrientation(E.db.databars.experience.orientation)
    questBar:SetReverseFill(E.db.databars.experience.reverseFill)

    questBar.eventFrame = CreateFrame("Frame")
    questBar.eventFrame:Hide()
    
    questBar.eventFrame:RegisterEvent("QUEST_LOG_UPDATE")
    questBar.eventFrame:RegisterEvent("PLAYER_XP_UPDATE")
    questBar.eventFrame:RegisterEvent("ZONE_CHANGED")
    questBar.eventFrame:RegisterEvent("ZONE_CHANGED_NEW_AREA")
    questBar.eventFrame:RegisterEvent("UNIT_PORTRAIT_UPDATE")
    questBar.eventFrame:SetScript("OnEvent", function(self, event) EQXP:Refresh(event) end)

    bar.bubbles = CreateFrame("StatusBar", nil, bar)
    bar.bubbles:SetStatusBarTexture("Interface\\AddOns\\ElvUI_QuestXP_Classic\\Textures\\bubbles")
    bar.bubbles:SetPoint("CENTER", bar, "CENTER", 0, 0)
    bar.bubbles:SetWidth(bar:GetWidth() - 4)
    bar.bubbles:SetHeight(bar:GetHeight() - 8)
    bar.bubbles:SetInside()

    -- XXX: Blizz tiling breakage.
    bar.bubbles:GetStatusBarTexture():SetHorizTile(false)

    bar.bubbles:SetFrameLevel(bar:GetFrameLevel() + 4)

    self:Refresh()

    self:HookXPBar(E.db.QuestXP.AddQuestXPToTooltip)

    EP:RegisterPlugin(addonName, EQXP.InsertOptions)
end

E:RegisterModule(EQXP:GetName())