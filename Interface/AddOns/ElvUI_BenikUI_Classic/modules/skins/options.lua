local BUI, E, _, V, P, G = unpack(select(2, ...))
local L = E.Libs.ACL:GetLocale('ElvUI', E.global.general.locale or 'enUS');

local tinsert, format = table.insert, string.format
local ipairs, unpack = ipairs, unpack

local IsAddOnLoaded = IsAddOnLoaded
local ADDONS = ADDONS

local DecorElvUIAddons = {
	{'ElvUI_LocationPlus', L['LocationPlus'], 'locplus'},
	{'ElvUI_SLE', L['Shadow & Light'], 'sle'},
	{'ElvUI_Enhanced', L['ElvUI_Enhanced'], 'enh'},
	{'ElvUI_DTBars2', L['DT Bars 2'], 'dtb2'},
}

local PassToAddonSkins = {
	{'Skada', L['Skada'], 'skada'},
	{'Recount', L['Recount'], 'recount'},
	{'AtlasLoot', L['AtlasLoot'], 'atlasloot'},
	{'DBM-Core', L['Deadly Boss Mods'], 'dbm'},
	{'BigWigs', L['BigWigs'], 'bigwigs'},
	{'Immersion', L['Immersion'], 'immersion'},
	{'Spy', L['Spy'], 'spy'},
	{'XToLevel', L['XToLevel'], 'xtoLevel'},
}

local SupportedProfiles = {
	{'AddOnSkins', 'AddOnSkins'},
	{'BigWigs', 'BigWigs'},
	{'DBM-Core', 'Deadly Boss Mods'},
	{'Details', 'Details'},
	{'ElvUI_VisualAuraTimers', 'ElvUI VisualAuraTimers'},
	{'ElvUI_LocationPlus', 'Location Plus'},
	{'InFlight_Load', 'InFlight'},
	{'MikScrollingBattleText', "Mik's Scrolling Battle Text"},
	{'Pawn', 'Pawn'},
	{'Recount', 'Recount'},
	{'Skada', 'Skada'},
	{'ProjectAzilroka', 'Project Azilroka'},
}

BUI.profileStrings = {
	[1] = format('|cfffff400%s |r', L['BenikUI successfully created and applied profile(s) for:']),
	[2] = format('|cfffff400%s |r', L[': Profile for this character already exists. Aborting.']),
}

local pa = L['Project Azilroka']

local function SkinTable()
	E.Options.args.benikui.args.skins = {
		order = 40,
		type = 'group',
		name = ADDONS,
		args = {
			name = {
				order = 1,
				type = 'header',
				name = BUI:cOption(ADDONS),
			},
			desc = {
				order = 2,
				type = 'description',
				name = L['Choose which addon you wish to be decorated to fit with BenikUI style'].."\n",
			},
		},
	}

	E.Options.args.benikui.args.skins.args.elvuiaddons = {
		order = 3,
		type = 'group',
		guiInline = true,
		name = L['ElvUI AddOns'],
		get = function(info) return E.db.benikuiSkins.elvuiAddons[ info[#info] ] end,
		set = function(info, value) E.db.benikuiSkins.elvuiAddons[ info[#info] ] = value; E:StaticPopup_Show('PRIVATE_RL') end,
		args = {
			},
		}

	local elvorder = 0
	for i, v in ipairs(DecorElvUIAddons) do
		local addonName, addonString, addonOption = unpack( v )
		E.Options.args.benikui.args.skins.args.elvuiaddons.args[addonOption] = {
			order = elvorder + 1,
			type = 'toggle',
			name = addonString,
			desc = format('%s '..addonString..' %s', L['Enable/Disable'], L['decor.']),
			disabled = function() return not IsAddOnLoaded(addonName) or not E.db.benikui.general.benikuiStyle end,
		}
	end

	-- Project Azilroka
	E.Options.args.benikui.args.skins.args.elvuiaddons.args.pa = {
		order = elvorder + 1,
		type = 'toggle',
		name = pa,
		desc = format('%s '..pa..' %s', L['Enable/Disable'], L['decor.']),
		disabled = function() return not (BUI.PA) or not E.db.benikui.general.benikuiStyle end,
	}

	E.Options.args.benikui.args.skins.args.addonskins = {
		order = 4,
		type = 'group',
		guiInline = true,
		name = L['AddOnSkins'],
		get = function(info) return E.db.benikuiSkins.addonSkins[ info[#info] ] end,
		set = function(info, value) E.db.benikuiSkins.addonSkins[ info[#info] ] = value; E:StaticPopup_Show('PRIVATE_RL') end,
		args = {
			},
		}

	local addorder = 0
	for i, v in ipairs(PassToAddonSkins) do
		local addonName, addonString, addonOption = unpack( v )
		E.Options.args.benikui.args.skins.args.addonskins.args[addonOption] = {
			order = addorder + 1,
			type = 'toggle',
			name = addonString,
			desc = format('%s '..addonString..' %s', L['Enable/Disable'], L['decor.']),
			disabled = function() return not (BUI.AS and IsAddOnLoaded(addonName)) or not E.db.benikui.general.benikuiStyle end,
		}
	end

	E.Options.args.benikui.args.skins.args.variousSkins = {
		order = 5,
		type = 'group',
		guiInline = true,
		name = L['Skins'],
		get = function(info) return E.db.benikuiSkins.variousSkins[ info[#info] ] end,
		set = function(info, value) E.db.benikuiSkins.variousSkins[ info[#info] ] = value; E:StaticPopup_Show('PRIVATE_RL') end,
		args = {
			talkingHead = {
				order = 1,
				type = 'toggle',
				name = L["TalkingHead"],
			},
			decursive = {
				order = 2,
				type = 'toggle',
				name = L['Decursive'],
				disabled = function() return not IsAddOnLoaded('Decursive') end,
			},
			storyline = {
				order = 3,
				type = 'toggle',
				name = L['Storyline'],
				disabled = function() return not IsAddOnLoaded('Storyline') end,
			},
			inflight = {
				order = 4,
				type = 'toggle',
				name = L['InFlight'],
				set = function(info, value) E.db.benikuiSkins.variousSkins[ info[#info] ] = value;
					if E.db.benikuiSkins.variousSkins.inflight then
						BUI:LoadInFlightProfile(true)
					else
						BUI:LoadInFlightProfile(false)
					end
					E:StaticPopup_Show('PRIVATE_RL') end,
				disabled = function() return not IsAddOnLoaded('InFlight_Load') end,
			},
			zygor = {
				order = 5,
				type = 'toggle',
				name = L['Zygor Guides'],
				disabled = function() return not BUI.ZG end,
			},
		},
	}

	E.Options.args.benikui.args.skins.args.profiles = {
		order = 6,
		type = 'group',
		guiInline = true,
		name = L['Profiles'],
		args = {
		},
	}

	local optionOrder = 1
	for i, v in ipairs(SupportedProfiles) do
		local addon, addonName = unpack(v)
		E.Options.args.benikui.args.skins.args.profiles.args[addon] = {
			order = optionOrder + 1,
			type = 'execute',
			name = addonName,
			desc = L['This will create and apply profile for ']..addonName,
			func = function()
				if addon == 'DBM-Core' then
					BUI:LoadDBMProfile()
				elseif addon == 'BigWigs' then
					BUI:LoadBigWigsProfile()
				elseif addon == 'Details' then
					BUI:LoadDetailsProfile()
				elseif addon == 'InFlight_Load'then
					if E.db.benikuiSkins.variousSkins.inflight then
						BUI:LoadInFlightProfile(true)
					else
						BUI:LoadInFlightProfile(false)
					end
				elseif addon == 'ElvUI_LocationPlus' then
					BUI:LoadLocationPlusProfile()
				elseif addon == 'MikScrollingBattleText' then
					BUI:LoadMSBTProfile()
				elseif addon == 'Pawn' then
					BUI:LoadPawnProfile()
				elseif addon == 'Recount' then
					BUI:LoadRecountProfile()
				elseif addon == 'Skada' then
					BUI:LoadSkadaProfile()
				elseif addon == 'ElvUI_VisualAuraTimers' then
					BUI:LoadVATProfile()
				elseif addon == 'AddOnSkins' then
					BUI:LoadAddOnSkinsProfile()
				elseif addon == 'ProjectAzilroka' then
					BUI:LoadPAProfile()
				end
				E:StaticPopup_Show('PRIVATE_RL')
			end,
			disabled = function() return not IsAddOnLoaded(addon) end,
		}
	end
end

tinsert(BUI.Config, SkinTable)
