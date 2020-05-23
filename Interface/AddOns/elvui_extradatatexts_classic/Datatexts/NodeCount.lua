local E, L, V, P, G = unpack(ElvUI); --Inport: Engine, Locales, PrivateDB, ProfileDB, GlobalDB
local DT = E:GetModule('DataTexts')


--Created By Hydra
--Recoded for ElvUI by Caedis

local pairs = pairs
local format = format
local select = select
local tonumber = tonumber
local match = string.match
local GetItemInfo = GetItemInfo

local RarityColor = ITEM_QUALITY_COLORS

local herbs = {
	["Green Tea Leaf"] = true,
	["Snow Lily"] = true,
	["Silkweed"] = true,
	["Golden Lotus"] = true,
	["Black Lotus"] = true,
	["Fel Lotus"] = true,
	["Frost Lotus"] = true,
	["Wildvine"] = true,
	["Adder's Tongue"] = true,
	["Ancient Lichen"] = true,
	["Arthas' Tears"] = true,
	["Azshara's Veil"] = true,
	["Blindweed"] = true,
	["Bloodthistle"] = true,
	["Briarthorn"] = true,
	["Bruiseweed"] = true,
	["Cinderblood"] = true,
	["Deadnettle"] = true,
	["Dragon's Teeth"] = true,
	["Dreamfoil"] = true,
	["Dreaming Glory"] = true,
	["Earthroot"] = true,
	["Fadeleaf"] = true,
	["Felweed"] = true,
	["Fire Leaf"] = true,
	["Firebloom"] = true,
	["Flame Cap"] = true,
	["Fool's Cap"] = true,
	["Fool's Cap Spores"] = true,
	["Ghost Mushroom"] = true,
	["Goldclover"] = true,
	["Folden Sansam"] = true,
	["Goldthorn"] = true,
	["Grave Moss"] = true,
	["Gromsblood"] = true,
	["Heartblossom"] = true,
	["Icecap"] = true,
	["Icethorn"] = true,
	["Khadgar's Whisker"] = true,
	["Kingsblood"] = true,
	["Lichbloom"] = true,
	["Liferoot"] = true,
	["Mageroyal"] = true,
	["Mana Thistle"] = true,
	["Mountain Silversage"] = true,
	["Netherbloom"] = true,
	["Nightmare Vine"] = true,
	["Peacebloom"] = true,
	["Purple Lotus"] = true,
	["Ragveil"] = true,
	["Rain Poppy"] = true,
	["Silverleaf"] = true,
	["Sorrowmoss"] = true,
	["Stormvine"] = true,
	["Stranglekelp"] = true,
	["Sungrass"] = true,
	["Swiftthistle"] = true,
	["Talandra's Rose"] = true,
	["Terocone"] = true,
	["Tiger Lily"] = true,
	["Twilight Jasmine"] = true,
	["Whiptail"] = true,
	["Wild Steelbloom"] = true,
}

local ore = {
	["Ghost Iron Ore"] = true,
	["Kyparite Ore"] = true,
	["Black Trillium Ore"] = true,
	["White Trillium Ore"] = true,
	["Ghost Iron Nugget"] = true,
	["Silver Ore"] = true,
	["Pyrite Ore"] = true,
	["Titanium Ore"] = true,
	["Eternium Ore"] = true,
	["Gold Ore"] = true,
	["Khorium Ore"] = true,
	["Truesilver Ore"] = true,
	["Adamantite Ore"] = true,
	["Cobalt Ore"] = true,
	["Copper Ore"] = true,
	["Dark Iton Ore"] = true,
	["Dense Stone"] = true,
	["Elementium Ore"] = true,
	["Fel Iron Ore"] = true,
	["Heavy Stone"] = true,
	["Iron Ore"] = true,
	["Kyparite Fragment"] = true,
	["Large Obsidian Shard"] = true,
	["Mithril Ore"] = true,
	["Obsidium Ore"] = true,
	["Rough Stone"] = true,
	["Saronite Ore"] = true,
	["Small Obsidian Shard"] = true,
	["Solid Stone"] = true,
	["Thorium Ore"] = true,
	["Tin Ore"] = true,	
}

local skins = {
	["Artic Fur"] = true,
	["Magnificent Hide"] = true,
	["Pristine Hide"] = true,
	["Refined Scale of Onyxia"] = true,
	["Scale of Onyxia"] = true,
	["Dreamscale"] = true,
	["Black Dragonscale"] = true,
	["Black Whelp Scale"] = true,
	["Blackened Dragonscale"] = true,
	["Blue Dragonscale"] = true,
	["Borean Leather"] = true,
	["Borean Leather Scraps"] = true,
	["Cobra Scales"] = true,
	["Core Leather"] = true,
	["Crystal Infused Leather"] = true,
	["Cured Heavy Hide"] = true,
	["Cured Light Hide"] = true,
	["Cured Medium Hide"] = true,
	["Cured Rugged Hide"] = true,
	["Cured Thick Hide"] = true,
	["Deeprock Salt"] = true,
	["Deepsea Scale"] = true,
	["Deviate Scale"] = true,
	["Devilsaur Leather"] = true,
	["Enchanted Leather"] = true,
	["Exotic Leather"] = true,
	["Fel Hide"] = true,
	["Fel Scales"] = true,
	["Green Dragonscale"] = true,
	["Green Whelp Scale"] = true,
	["Heavy Borean Leather"] = true,
	["Heavy Hide"] = true,
	["Heavy Knothide Leather"] = true,
	["Heavy Leather"] = true,
	["Heavy Savage Leather"] = true,
	["Heavy Scorpid Scale"] = true,
	["Icy Dragonscale"] = true,
	["Jormungar Scale"] = true,
	["Knothide Leather"] = true,
	["Knothide Leather Scraps"] = true,
	["Light Hide"] = true,
	["Light Leather"] = true,
	["Medium Hide"] = true,
	["Medium Leather"] = true,
	["Nerubian Chitin"] = true,
	["Nether Dragonscales"] = true,
	["Perfect Deviate Scale"] = true,
	["Primal Bat Leather"] = true,
	["Primal Tiger Leather"] = true,
	["Prismatic Scale"] = true,
	["Raptor Hide"] = true,
	["Red Dragonscale"] = true,
	["Refined Deeprock Salt"] = true,
	["Rugged Hide"] = true,
	["Rugged Leather"] = true,
	["Rugged Leather Scraps"] = true,
	["Savage Leather"] = true,
	["Savage Leather Scraps"] = true,
	["Scorpid Scale"] = true,
	["Sha-Touched Leather"] = true,
	["Slimy Murlock Scale"] = true,
	["Thick Clefthoof Leather"] = true,
	["Thick Hide"] = true,
	["Thick Leather"] = true,
	["Thick Murlock Scale"] = true,
	["Thick Kodo Leather"] = true,
	["Turtle Scales"] = true,
	["Warbear Leather"] = true,
	["Wind Scales"] = true,
	["Worn Dragonscale"] = true,
}

local fish = {
	["Jade Lungfish"] = true,
	["Giant Mantis Shrimp"] = true,
	["Redbelly Mandarin"] = true,
	["Tiger Gourami"] = true,
	["Jewel Danio"] = true,
	["Reef Octopus"] = true,
	["Krasarang Paddlefish"] = true,
	["Golden Carp"] = true,
	["Emperor Salmon"] = true,
	["Murglesnoutv"] = true,
	["Mountain Trout"] = true,
	["Blackbelly Mudfish"] = true,
	["Striped Lurker"] = true,
	["Lavascale Catfish"] = true,
	["Albino Cavefish"] = true,
	["Fathorn Eel"] = true,
	["Algaefin Rockfish"] = true,
	["Deepsea Sagefish"] = true,
	["Sharptooth"] = true,
	["Highland Guppy"] = true,
	["Magic Eater"] = true,
	["Shimmering Minnow"] = true,
	["Slippery Eel"] = true,
	["Sewer Carp"] = true,
	["Fountain Goldfish"] = true,
	["Bonescale Snapper"] = true,
	["Moonglow Cuttlefish"] = true,
	["Imperial Manta Ray"] = true,
	["Rockfin Grouper"] = true,
	["Borean Man O' War"] = true,
	["Musselback Sculpin"] = true,
	["Dragonfin Angelfish"] = true,
	["Giant Sunfish"] = true,
	["Glacial Salmon"] = true,
	["Fangtooth Herring"] = true,
	["Barrelhead Goby"] = true,
	["Nettlefish"] = true,
	["Flassfin Minnow"] = true,
	["Deep Sea Monsterbelly"] = true,
	["Bloodfin Catfish"] = true,
	["Crescent-Tail Skullfish"] = true,
	["Barbed Gill Trout"] = true,
	["Spotted Feltail"] = true,
	["Zangarian Sporefish"] = true,
	["Figluster's Mudfish"] = true,
	["Icefin Bluefish"] = true,
	["Golden Darter"] = true,
	["Furious Crawdad"] = true,
	["Darkclaw Lobster"] = true,
	["Raw Whitescale Salmon"] = true,
	["Raw Glossy Mightfish"] = true,
	["Raw Redgill"] = true,
	["Raw Nightfin Snapper"] = true,
	["Raw Sunscale Salmon"] = true,
	["Raw Spotted Yellowtail"] = true,
	["Raw Summer Bass"] = true,
	["Raw Greater Sagefish"] = true,
	["Raw Mithril Head Trout"] = true,
	["Raw Rockscale Cod"] = true,
	["Raw Bristle Whisker Catfish"] = true,
	["Raw Sagefish"] = true,
	["Raw Longjaw Mud Snapper"] = true,
	["Raw Loch Frenzy"] = true,
	["Raw Rainbow Fin Albacore"] = true,
	["Raw Brilliant Smallfish"] = true,
	["Raw Slitherskin Mackerel"] = true,
}   
    
local gathered = {}
    
local function OnEvent(self, event, msg)
	
	if event == "CHAT_MSG_LOOT" then

		local ID = match(msg, "item:(%d+)") -- Thanks Elv!
		local Quantity = tonumber(match(msg, "x(%d+).")) or 1
		local Name,_,_,_,_,_,SubType = GetItemInfo(ID)
	
		
		if (not (herbs[Name] or ore[Name] or skins[Name] or fish[Name])) then
			return
		end
		
		if (not gathered[SubType]) then
			gathered[SubType] = {}
		end
		
		if (not gathered[SubType][Name]) then
			gathered[SubType][Name] = {Nodes = 0, Quantity = 0}
		end
		
		gathered[SubType][Name].Nodes = gathered[SubType][Name].Nodes + 1
		gathered[SubType][Name].Quantity = gathered[SubType][Name].Quantity + Quantity
		
		
		local largest = 0
		local name		
		for SubType, Info in pairs(gathered) do
		
			for Name, Value in pairs(Info) do
				
				if Value.Quantity > largest then
					largest = Value.Quantity;
					name = Name;
				end
				
			end
		
		end
		if name then
			
			self.text:SetText(format("%s - %s", name, largest))
			
		else
		
			self.text:SetText("None")
		
		end
	end
end



local function OnEnter(self)
	DT:SetupTooltip(self)
	local tip = DT.tooltip
	tip:SetOwner(self, "ANCHOR_BOTTOM", 0, -5)
		for SubType, Info in pairs(gathered) do
		tip:AddLine(SubType, 1, 1, 0)
		
		for Name, Value in pairs(Info) do
			local Rarity = select(3, GetItemInfo(Name))
			local R, G, B = 1, 1, 1
		
			if (Rarity > 1) then
				R, G, B = RarityColor[Rarity].r, RarityColor[Rarity].g, RarityColor[Rarity].b
			end
		
			if (Value.Nodes == 1) then
				tip:AddLine(format("%s: %d (%d node)", Name, Value.Quantity, Value.Nodes), R, G, B)
			else
				tip:AddLine(format("%s: %d (%d nodes)", Name, Value.Quantity, Value.Nodes), R, G, B)
			end
		end
		
		tip:AddLine("")
	end
	
	tip:Show()
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
DT:RegisterDatatext('Node Counter', {'CHAT_MSG_LOOT'}, OnEvent, nil, nil, OnEnter)

