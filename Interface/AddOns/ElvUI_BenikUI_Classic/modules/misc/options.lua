local BUI, E, _, V, P, G = unpack(select(2, ...))
local L = E.Libs.ACL:GetLocale('ElvUI', E.global.general.locale or 'enUS');

local tinsert = table.insert

local function miscTable()
	E.Options.args.benikui.args.misc = {
		order = 35,
		type = 'group',
		name = L["Miscellaneous"],
		args = {
			name = {
				order = 1,
				type = 'header',
				name = BUI:cOption(L["Miscellaneous"]),
			},
			flightMode = {
				order = 2,
				type = 'toggle',
				name = L['Flight Mode'],
				desc = L['Display the Flight Mode screen when taking flight paths'],
				get = function(info) return E.db.benikui.misc[ info[#info] ] end,
				set = function(info, value) E.db.benikui.misc[ info[#info] ] = value; BUI:GetModule('FlightMode'):Toggle() E:StaticPopup_Show('PRIVATE_RL') end,
			},
			afkMode = {
				order = 3,
				type = 'toggle',
				name = L['AFK Mode'],
				get = function(info) return E.db.benikui.misc[ info[#info] ] end,
				set = function(info, value) E.db.benikui.misc[ info[#info] ] = value; E:StaticPopup_Show('PRIVATE_RL') end,
			},
		},
	}
end
tinsert(BUI.Config, miscTable)
