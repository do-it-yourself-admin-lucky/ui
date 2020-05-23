local BUI, E, _, V, P, G = unpack(select(2, ...))
local L = E.Libs.ACL:GetLocale('ElvUI', E.global.general.locale or 'enUS');
local mod = BUI:GetModule('Actionbars');

local tinsert = table.insert

local function abTable()
	E.Options.args.benikui.args.actionbars = {
		order = 7,
		type = 'group',
		name = L['ActionBars'],
		args = {
			name = {
				order = 1,
				type = 'header',
				name = BUI:cOption(L['ActionBars']),
			},
			style = {
				order = 2,
				type = 'group',
				name = L['BenikUI Style'],
				guiInline = true,
				args = {
				},
			},
			toggleButtons = {
				order = 3,
				type = 'group',
				name = L['Switch Buttons (requires BenikUI Style)'],
				guiInline = true,
				get = function(info) return E.db.benikui.actionbars.toggleButtons[ info[#info] ] end,
				set = function(info, value) E.db.benikui.actionbars.toggleButtons[ info[#info] ] = value; mod:ShowButtons() end,
				args = {
					enable = {
						order = 1,
						type = 'toggle',
						name = L.SHOW,
						desc = L['Show small buttons over Actionbar 1 or 2 decoration, to show/hide Actionbars 3 or 5.'],
						disabled = function() return not E.private.actionbar.enable or not E.db.benikui.general.benikuiStyle end,
					},
					chooseAb = {
						order = 1,
						type = 'select',
						name = L['Show in:'],
						desc = L['Choose Actionbar to show to'],
						values = {
							['BAR1'] = L['Bar 1'],
							['BAR2'] = L['Bar 2'],
						},
						disabled = function() return not E.private.actionbar.enable or not E.db.benikui.general.benikuiStyle or not E.db.benikui.actionbars.toggleButtons.enable end,
					},
				},
			},
			transparent = {
				order = 4,
				type = 'toggle',
				name = L['Transparent Backdrops'],
				desc = L['Applies transparency in all actionbar backdrops and actionbar buttons.'],
				disabled = function() return not E.private.actionbar.enable end,
				get = function(info) return E.db.benikui.actionbars[ info[#info] ] end,
				set = function(info, value) E.db.benikui.actionbars[ info[#info] ] = value; mod:TransparentBackdrops() end,
			},
			--[[requestStop = {
				order = 5,
				type = 'toggle',
				name = L['Request Stop button'],
				get = function(info) return E.db.benikui.actionbars[ info[#info] ] end,
				set = function(info, value) E.db.benikui.actionbars[ info[#info] ] = value; E:StaticPopup_Show('PRIVATE_RL'); end,
			},]]
		},
	}

	for i = 1, 10 do
		local name = L["Bar "]..i
		E.Options.args.benikui.args.actionbars.args.style.args['bar'..i] = {
			order = i,
			type = 'toggle',
			name = name,
			disabled = function() return not E.private.actionbar.enable end,
			get = function(info) return E.db.benikui.actionbars.style[ info[#info] ] end,
			set = function(info, value)
				E.db.benikui.actionbars.style[ info[#info] ] = value;
				mod:ToggleStyle()
			end,
		}
	end

	E.Options.args.benikui.args.actionbars.args.style.args.spacer = {
		order = 20,
		type = 'header',
		name = '',
	}

	E.Options.args.benikui.args.actionbars.args.style.args.petbar = {
		order = 21,
		type = 'toggle',
		name = L["Pet Bar"],
		disabled = function() return not E.private.actionbar.enable end,
		get = function(info) return E.db.benikui.actionbars.style[ info[#info] ] end,
		set = function(info, value)
			E.db.benikui.actionbars.style[ info[#info] ] = value;
			mod:ToggleStyle()
		end,
	}

	E.Options.args.benikui.args.actionbars.args.style.args.stancebar = {
		order = 22,
		type = 'toggle',
		name = L["Stance Bar"],
		disabled = function() return not E.private.actionbar.enable end,
		get = function(info) return E.db.benikui.actionbars.style[ info[#info] ] end,
		set = function(info, value)
			E.db.benikui.actionbars.style[ info[#info] ] = value;
			mod:ToggleStyle()
		end,
	}
end
tinsert(BUI.Config, abTable)
