
WeakAurasSaved = {
	["dynamicIconCache"] = {
	},
	["displays"] = {
		["MP5BG"] = {
			["sparkWidth"] = 10,
			["borderBackdrop"] = "Blizzard Tooltip",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = -204.000061035156,
			["anchorPoint"] = "CENTER",
			["parent"] = "MP5Bar",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/0mEizxbKG/1",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
					["custom"] = "WeakAuras.ScanEvents(\"TICKUPDATE\", true)",
					["do_custom"] = false,
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["names"] = {
						},
						["type"] = "status",
						["subeventPrefix"] = "SPELL",
						["custom_type"] = "stateupdate",
						["subeventSuffix"] = "_ENERGIZE",
						["duration"] = "2",
						["event"] = "Unit Characteristics",
						["unit"] = "player",
						["use_unit"] = true,
						["events"] = "PLAYER_ENTERING_WORLD, UNIT_SPELLCAST_SUCCEEDED, UNIT_MAXPOWER, CURRENT_SPELL_CAST_CHANGED",
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["check"] = "event",
						["unevent"] = "auto",
						["sourceUnit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 29,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["backdropInFront"] = false,
			["barColor"] = {
				0.28627450980392, -- [1]
				0.75686274509804, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["sparkHidden"] = "NEVER",
			["color"] = {
			},
			["version"] = 1,
			["subRegions"] = {
				{
					["type"] = "aurabar_bar",
				}, -- [1]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 15,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "SPARK",
					["text_anchorYOffset"] = -10,
					["text_fontSize"] = 20,
					["anchorXOffset"] = 0,
					["text_fontType"] = "None",
				}, -- [2]
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "1 Pixel",
					["border_size"] = 1,
				}, -- [3]
			},
			["height"] = 15,
			["anchorFrameType"] = "SCREEN",
			["load"] = {
				["use_class"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["PRIEST"] = true,
						["SHAMAN"] = true,
						["PALADIN"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["icon"] = false,
			["xOffset"] = 1.0001220703125,
			["sparkOffsetY"] = 10,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["useAdjustededMax"] = false,
			["smoothProgress"] = true,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["borderInFront"] = true,
			["frameStrata"] = 2,
			["icon_side"] = "RIGHT",
			["zoom"] = 0,
			["sparkHeight"] = 40,
			["texture"] = "ElvUI Norm",
			["spark"] = false,
			["sparkTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura32",
			["semver"] = "1.0.1",
			["tocversion"] = 11302,
			["id"] = "MP5BG",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.58107829093933, -- [4]
			},
			["alpha"] = 1,
			["width"] = 147,
			["sparkOffsetX"] = 0,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["desaturate"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["config"] = {
			},
			["uid"] = "HvV91dRQRNT",
		},
		["MMP"] = {
			["xOffset"] = 100.44424247742,
			["preferToUpdate"] = false,
			["yOffset"] = 212.88903808594,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["duration"] = "1",
						["unevent"] = "auto",
						["event"] = "Cooldown Progress (Item)",
						["use_genericShowOn"] = true,
						["use_itemName"] = true,
						["unit"] = "player",
						["itemName"] = 13444,
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["genericShowOn"] = "showOnReady",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["duration"] = "1",
						["use_itemName"] = true,
						["unit"] = "player",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["itemName"] = 13444,
						["event"] = "Cooldown Progress (Item)",
						["subeventSuffix"] = "_CAST_START",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 1,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
			},
			["height"] = 47.110649108887,
			["load"] = {
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["parent"] = "Healer Consumes",
			["config"] = {
			},
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["authorOptions"] = {
			},
			["url"] = "https://wago.io/APjFe045F/1",
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 11303,
			["id"] = "MMP",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["uid"] = "DB3OPuAo2pL",
			["inverse"] = false,
			["width"] = 47.999542236328,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["zoom"] = 0,
		},
		["Priest - Power Word: Shield"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = -178,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"Power Word: Shield", -- [1]
						},
						["ownOnly"] = true,
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["unitExists"] = true,
						["debuffType"] = "HELPFUL",
						["duration"] = "1",
						["useName"] = true,
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "status",
						["names"] = {
						},
						["event"] = "Cooldown Progress (Spell)",
						["matchesShowOn"] = "showAlways",
						["realSpellName"] = "Power Word: Shield",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["use_track"] = true,
						["spellName"] = 17,
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Conditions",
						["use_unit"] = true,
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["version"] = 1,
			["subRegions"] = {
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["use_never"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["SHAMAN"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Priest 2.0",
			["frameStrata"] = 1,
			["xOffset"] = -81,
			["regionType"] = "icon",
			["useTooltip"] = true,
			["url"] = "https://wago.io/6VG3fDk2t/1",
			["selfPoint"] = "CENTER",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["authorOptions"] = {
			},
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.7",
			["tocversion"] = 11303,
			["id"] = "Priest - Power Word: Shield",
			["config"] = {
			},
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["uid"] = "y9bZTQ4meEA",
			["inverse"] = false,
			["zoom"] = 0.3,
			["displayIcon"] = 135940,
			["cooldown"] = true,
			["width"] = 40,
		},
		["Racial Dwarf"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = -150,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/Q1lBL5NSY/1",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["internalVersion"] = 29,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["parent"] = "T's Racials",
			["desaturate"] = false,
			["tocversion"] = 11302,
			["version"] = 1,
			["subRegions"] = {
			},
			["height"] = 35,
			["anchorFrameType"] = "SCREEN",
			["selfPoint"] = "CENTER",
			["zoom"] = 0.33,
			["uid"] = "7fceD9AHp5u",
			["auto"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["unit"] = "player",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["realSpellName"] = "Stoneform",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["event"] = "Cooldown Progress (Spell)",
						["duration"] = "1",
						["use_track"] = true,
						["spellName"] = 20594,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["regionType"] = "icon",
			["load"] = {
				["use_race"] = true,
				["use_never"] = false,
				["talent"] = {
					["single"] = 13,
					["multi"] = {
						[13] = true,
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["class"] = {
					["single"] = "MAGE",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["race"] = {
					["single"] = "Dwarf",
					["multi"] = {
						["Scourge"] = true,
					},
				},
				["spellknown"] = 11426,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["width"] = 35,
			["authorOptions"] = {
			},
			["icon"] = true,
			["frameStrata"] = 1,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.6",
			["id"] = "Racial Dwarf",
			["keepAspectRatio"] = false,
			["alpha"] = 1,
			["xOffset"] = 180,
			["config"] = {
			},
			["inverse"] = true,
			["cooldownEdge"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
		},
		["LIP on melee hit"] = {
			["xOffset"] = -265.500183105469,
			["preferToUpdate"] = false,
			["yOffset"] = -146.499603271484,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/eD_d7DO7q/1",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_amount"] = false,
						["use_destFlags2"] = false,
						["duration"] = "5",
						["names"] = {
						},
						["destUnit"] = "player",
						["debuffType"] = "HELPFUL",
						["use_sourceName"] = false,
						["unevent"] = "timed",
						["unit"] = "player",
						["event"] = "Combat Log",
						["type"] = "event",
						["subeventSuffix"] = "_DAMAGE",
						["subeventPrefix"] = "SWING",
						["use_destFlags3"] = false,
						["use_sourceUnit"] = false,
						["sourceName"] = "Gehennas",
						["use_destUnit"] = true,
						["sourceUnit"] = "target",
						["spellIds"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["event"] = "Health",
						["unit"] = "player",
						["auraspellids"] = {
							"3169", -- [1]
						},
						["matchesShowOn"] = "showOnMissing",
						["useExactSpellId"] = true,
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["duration"] = "1",
						["use_itemName"] = true,
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["itemName"] = 3387,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Item)",
						["use_unit"] = true,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnReady",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [3]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["preset"] = "slidebottom",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 1,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = true,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 64,
			["load"] = {
				["use_size"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["regionType"] = "icon",
			["width"] = 64,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 11303,
			["id"] = "LIP on melee hit",
			["authorOptions"] = {
			},
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["uid"] = "uYy4bkX1VBb",
			["inverse"] = false,
			["config"] = {
			},
			["displayIcon"] = "134842",
			["cooldownEdge"] = false,
			["zoom"] = 0,
		},
		["Priest - Inner Focus"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = -177.999938964844,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/6VG3fDk2t/1",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["auranames"] = {
							"Immolate", -- [1]
						},
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["unit"] = "target",
						["unitExists"] = true,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["type"] = "status",
						["use_remaining"] = false,
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["event"] = "Cooldown Progress (Spell)",
						["matchesShowOn"] = "showAlways",
						["realSpellName"] = "Inner Focus",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["spellName"] = 14751,
						["use_genericShowOn"] = true,
						["use_unit"] = true,
						["use_track"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["use_alwaystrue"] = true,
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["event"] = "Conditions",
						["unit"] = "player",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["version"] = 1,
			["subRegions"] = {
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Priest 2.0",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["regionType"] = "icon",
			["zoom"] = 0.3,
			["cooldownEdge"] = false,
			["auto"] = false,
			["uid"] = "3GJKzQBe8Y2",
			["xOffset"] = -0.9998779296875,
			["frameStrata"] = 1,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.7",
			["tocversion"] = 11303,
			["id"] = "Priest - Inner Focus",
			["authorOptions"] = {
			},
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["config"] = {
			},
			["inverse"] = false,
			["width"] = 40,
			["displayIcon"] = 135863,
			["cooldown"] = true,
			["useTooltip"] = true,
		},
		["Priest - Stoneform"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = -177.999908447266,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = false,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"Rend", -- [1]
						},
						["matchesShowOn"] = "showAlways",
						["genericShowOn"] = "showAlways",
						["subeventPrefix"] = "SPELL",
						["unitExists"] = true,
						["debuffType"] = "HARMFUL",
						["ownOnly"] = true,
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["type"] = "status",
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["use_unit"] = true,
						["realSpellName"] = "Shadowguard",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["duration"] = "1",
						["names"] = {
						},
						["unit"] = "target",
						["use_track"] = true,
						["spellName"] = 19312,
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["version"] = 1,
			["subRegions"] = {
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["race"] = {
					["single"] = "Dwarf",
				},
				["use_never"] = false,
				["use_race"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["SHAMAN"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Priest 2.0",
			["authorOptions"] = {
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["regionType"] = "icon",
			["zoom"] = 0.3,
			["url"] = "https://wago.io/6VG3fDk2t/1",
			["uid"] = "XmOaqRiryGi",
			["xOffset"] = 39,
			["frameStrata"] = 1,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.7",
			["tocversion"] = 11303,
			["id"] = "Priest - Stoneform",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["width"] = 40,
			["config"] = {
			},
			["inverse"] = false,
			["auto"] = false,
			["displayIcon"] = 136051,
			["cooldown"] = true,
			["useTooltip"] = true,
		},
		["Priest - Fade"] = {
			["xOffset"] = 78.9998168945313,
			["preferToUpdate"] = false,
			["yOffset"] = -177.999969482422,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/6VG3fDk2t/1",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["auranames"] = {
							"Fade", -- [1]
						},
						["matchesShowOn"] = "showAlways",
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["unitExists"] = true,
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "status",
						["event"] = "Cooldown Progress (Spell)",
						["use_genericShowOn"] = true,
						["realSpellName"] = "Fade",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["names"] = {
						},
						["duration"] = "1",
						["use_track"] = true,
						["spellName"] = 586,
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["use_alwaystrue"] = true,
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["event"] = "Conditions",
						["unit"] = "player",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["version"] = 1,
			["subRegions"] = {
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Priest 2.0",
			["cooldownEdge"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["regionType"] = "icon",
			["zoom"] = 0.3,
			["auto"] = false,
			["uid"] = "C5kjw8rrB)h",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.7",
			["tocversion"] = 11303,
			["id"] = "Priest - Fade",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["width"] = 40,
			["config"] = {
			},
			["inverse"] = false,
			["internalVersion"] = 29,
			["displayIcon"] = 135994,
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Priest - Fear Ward"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = -177.999969482422,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/6VG3fDk2t/1",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"Rend", -- [1]
						},
						["matchesShowOn"] = "showAlways",
						["genericShowOn"] = "showAlways",
						["unit"] = "target",
						["unitExists"] = true,
						["debuffType"] = "HARMFUL",
						["ownOnly"] = true,
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["event"] = "Cooldown Progress (Spell)",
						["useName"] = true,
						["realSpellName"] = "Inner Fire",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["spellName"] = 10952,
						["use_genericShowOn"] = true,
						["use_unit"] = true,
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Conditions",
						["use_unit"] = true,
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["version"] = 1,
			["subRegions"] = {
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["use_never"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["SHAMAN"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Priest 2.0",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["regionType"] = "icon",
			["zoom"] = 0.3,
			["auto"] = false,
			["uid"] = "dCkT4A4Ng6X",
			["cooldownEdge"] = false,
			["xOffset"] = -40.9999389648438,
			["frameStrata"] = 1,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.7",
			["tocversion"] = 11303,
			["id"] = "Priest - Fear Ward",
			["authorOptions"] = {
			},
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["config"] = {
			},
			["inverse"] = false,
			["width"] = 40,
			["displayIcon"] = 135926,
			["cooldown"] = true,
			["useTooltip"] = true,
		},
		["Racial Troll"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = -150,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["internalVersion"] = 29,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["parent"] = "T's Racials",
			["desaturate"] = false,
			["anchorFrameType"] = "SCREEN",
			["version"] = 1,
			["subRegions"] = {
			},
			["height"] = 35,
			["alpha"] = 1,
			["keepAspectRatio"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["unit"] = "player",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["subeventPrefix"] = "SPELL",
						["realSpellName"] = "Berserking",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["event"] = "Cooldown Progress (Spell)",
						["use_genericShowOn"] = true,
						["use_track"] = true,
						["spellName"] = 20554,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["tocversion"] = 11302,
			["regionType"] = "icon",
			["load"] = {
				["use_race"] = true,
				["use_never"] = false,
				["talent"] = {
					["single"] = 13,
					["multi"] = {
						[13] = true,
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["class"] = {
					["single"] = "MAGE",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["race"] = {
					["single"] = "Troll",
					["multi"] = {
						["Scourge"] = true,
					},
				},
				["spellknown"] = 11426,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["uid"] = "36BCn54aQde",
			["auto"] = true,
			["width"] = 35,
			["url"] = "https://wago.io/Q1lBL5NSY/1",
			["zoom"] = 0.33,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.6",
			["id"] = "Racial Troll",
			["xOffset"] = 180,
			["frameStrata"] = 1,
			["authorOptions"] = {
			},
			["config"] = {
			},
			["inverse"] = true,
			["selfPoint"] = "CENTER",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
		},
		["Priest - Psychic Scream"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = -178,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/6VG3fDk2t/1",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"Rend", -- [1]
						},
						["ownOnly"] = true,
						["genericShowOn"] = "showAlways",
						["unit"] = "target",
						["unitExists"] = true,
						["debuffType"] = "HARMFUL",
						["duration"] = "1",
						["useName"] = true,
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "status",
						["names"] = {
						},
						["event"] = "Cooldown Progress (Spell)",
						["matchesShowOn"] = "showAlways",
						["realSpellName"] = "Psychic Scream",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["use_track"] = true,
						["spellName"] = 8122,
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Conditions",
						["use_unit"] = true,
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["version"] = 1,
			["subRegions"] = {
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["use_never"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["SHAMAN"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Priest 2.0",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["regionType"] = "icon",
			["zoom"] = 0.3,
			["auto"] = false,
			["cooldownEdge"] = false,
			["uid"] = "lDumAeeX(Io",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.7",
			["tocversion"] = 11303,
			["id"] = "Priest - Psychic Scream",
			["xOffset"] = -121,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["config"] = {
			},
			["inverse"] = false,
			["width"] = 40,
			["displayIcon"] = 136184,
			["cooldown"] = true,
			["useTooltip"] = true,
		},
		["Priest - Shackle"] = {
			["sparkWidth"] = 10,
			["sparkOffsetX"] = 0,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = -142,
			["anchorPoint"] = "CENTER",
			["parent"] = "Priest 2.0",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/6VG3fDk2t/1",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.75452660024166, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffClass"] = {
							["magic"] = true,
						},
						["auranames"] = {
							"Shackle Undead", -- [1]
						},
						["duration"] = "1",
						["use_unit"] = true,
						["unit"] = "multi",
						["debuffType"] = "HARMFUL",
						["buffShowOn"] = "showAlways",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["ownOnly"] = true,
						["event"] = "Health",
						["useName"] = true,
						["auraspellids"] = {
							"122", -- [1]
						},
						["use_spellName"] = true,
						["spellIds"] = {
							133, -- [1]
						},
						["use_sourceUnit"] = true,
						["remOperator"] = "<",
						["names"] = {
							"Fireball", -- [1]
						},
						["sourceUnit"] = "target",
						["spellName"] = "Fireball",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useTooltip"] = false,
			["frameStrata"] = 1,
			["selfPoint"] = "CENTER",
			["backdropInFront"] = false,
			["barColor"] = {
				0.2156862745098, -- [1]
				0.74901960784314, -- [2]
				0.70588235294118, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["id"] = "Priest - Shackle",
			["spark"] = false,
			["version"] = 1,
			["subRegions"] = {
				{
					["type"] = "aurabar_bar",
				}, -- [1]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "None",
				}, -- [2]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%n",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_LEFT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "None",
				}, -- [3]
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_offset"] = 1,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0.75452660024166, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "1 Pixel",
					["border_size"] = 1,
				}, -- [4]
			},
			["height"] = 30,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["load"] = {
				["use_class"] = true,
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["internalVersion"] = 29,
			["xOffset"] = -1.0001220703125,
			["auto"] = true,
			["zoom"] = 0,
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["borderInFront"] = true,
			["sparkOffsetY"] = 0,
			["icon_side"] = "LEFT",
			["icon"] = true,
			["sparkHeight"] = 30,
			["texture"] = "Skullflower1",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "1.0.5",
			["tocversion"] = 11303,
			["sparkHidden"] = "NEVER",
			["useAdjustededMax"] = false,
			["alpha"] = 1,
			["width"] = 280,
			["borderBackdrop"] = "None",
			["uid"] = "Udbj1MyUYwy",
			["inverse"] = false,
			["desaturate"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = "0",
						["variable"] = "unitCount",
					},
					["changes"] = {
						{
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["config"] = {
			},
		},
		["MP5Bar"] = {
			["controlledChildren"] = {
				"MP5 Bar", -- [1]
				"MP5BG", -- [2]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = -438.00048828125,
			["preferToUpdate"] = false,
			["yOffset"] = 97.00048828125,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/0mEizxbKG/1",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["internalVersion"] = 29,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["version"] = 1,
			["subRegions"] = {
			},
			["load"] = {
				["use_class"] = "false",
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["scale"] = 1,
			["border"] = false,
			["borderEdge"] = "1 Pixel",
			["regionType"] = "group",
			["borderSize"] = 2,
			["borderOffset"] = 4,
			["tocversion"] = 11302,
			["id"] = "MP5Bar",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["borderInset"] = 1,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["selfPoint"] = "BOTTOMLEFT",
			["uid"] = "CEwiz(Bw9gz",
		},
		["Priest 2.0"] = {
			["controlledChildren"] = {
				"Priest - Shackle", -- [1]
				"Priest - Fear Ward", -- [2]
				"Priest - Psychic Scream", -- [3]
				"Priest - Power Word: Shield", -- [4]
				"Priest - Stoneform", -- [5]
				"Priest - Inner Focus", -- [6]
				"Priest - Fade", -- [7]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = -439.500122070313,
			["preferToUpdate"] = false,
			["yOffset"] = 11.5003051757813,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/6VG3fDk2t/1",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["event"] = "Health",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["internalVersion"] = 29,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["version"] = 1,
			["subRegions"] = {
			},
			["load"] = {
				["use_class"] = "true",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["scale"] = 1,
			["border"] = false,
			["borderEdge"] = "1 Pixel",
			["regionType"] = "group",
			["borderSize"] = 2,
			["borderOffset"] = 4,
			["semver"] = "1.0.7",
			["tocversion"] = 11303,
			["id"] = "Priest 2.0",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["borderInset"] = 1,
			["authorOptions"] = {
			},
			["config"] = {
			},
			["conditions"] = {
			},
			["uid"] = "rBMoijW85EM",
			["selfPoint"] = "BOTTOMLEFT",
		},
		["Racial Gnome"] = {
			["parent"] = "T's Racials",
			["preferToUpdate"] = false,
			["yOffset"] = -150,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/Q1lBL5NSY/1",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["internalVersion"] = 29,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["xOffset"] = 180,
			["version"] = 1,
			["subRegions"] = {
			},
			["height"] = 35,
			["alpha"] = 1,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["cooldownEdge"] = true,
			["anchorFrameType"] = "SCREEN",
			["triggers"] = {
				{
					["trigger"] = {
						["use_genericShowOn"] = true,
						["type"] = "status",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["realSpellName"] = "Escape Artist",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 20589,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["tocversion"] = 11302,
			["regionType"] = "icon",
			["load"] = {
				["use_race"] = true,
				["use_never"] = false,
				["talent"] = {
					["single"] = 13,
					["multi"] = {
						[13] = true,
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["class"] = {
					["single"] = "MAGE",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["race"] = {
					["single"] = "Gnome",
					["multi"] = {
						["Scourge"] = true,
					},
				},
				["spellknown"] = 11426,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["authorOptions"] = {
			},
			["zoom"] = 0.33,
			["keepAspectRatio"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["auto"] = true,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.6",
			["id"] = "Racial Gnome",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 35,
			["config"] = {
			},
			["inverse"] = true,
			["uid"] = "CLEd2yWmaq4",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
		},
		["Racial Undead"] = {
			["parent"] = "T's Racials",
			["preferToUpdate"] = false,
			["yOffset"] = -150,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/Q1lBL5NSY/1",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["internalVersion"] = 29,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["width"] = 35,
			["version"] = 1,
			["subRegions"] = {
			},
			["height"] = 35,
			["keepAspectRatio"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "76(h9Y)1G5T",
			["cooldownEdge"] = true,
			["selfPoint"] = "CENTER",
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["duration"] = "1",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["realSpellName"] = "Will of the Forsaken",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Spell)",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["spellName"] = 7744,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["regionType"] = "icon",
			["alpha"] = 1,
			["load"] = {
				["use_race"] = true,
				["use_never"] = false,
				["talent"] = {
					["single"] = 13,
					["multi"] = {
						[13] = true,
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["class"] = {
					["single"] = "MAGE",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["race"] = {
					["single"] = "Scourge",
					["multi"] = {
						["Scourge"] = true,
					},
				},
				["spellknown"] = 11426,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["auto"] = true,
			["authorOptions"] = {
			},
			["icon"] = true,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.6",
			["tocversion"] = 11302,
			["id"] = "Racial Undead",
			["zoom"] = 0.33,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 180,
			["config"] = {
			},
			["inverse"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
		},
		["Racial Tauren"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = -150,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["internalVersion"] = 29,
			["selfPoint"] = "CENTER",
			["parent"] = "T's Racials",
			["desaturate"] = false,
			["frameStrata"] = 1,
			["version"] = 1,
			["subRegions"] = {
			},
			["height"] = 35,
			["tocversion"] = 11302,
			["keepAspectRatio"] = false,
			["url"] = "https://wago.io/Q1lBL5NSY/1",
			["uid"] = "D8AvpGNRRBL",
			["auto"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["unit"] = "player",
						["type"] = "status",
						["duration"] = "1",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["subeventPrefix"] = "SPELL",
						["realSpellName"] = "War Stomp",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Spell)",
						["names"] = {
						},
						["spellName"] = 20549,
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["regionType"] = "icon",
			["anchorFrameType"] = "SCREEN",
			["load"] = {
				["use_race"] = true,
				["use_never"] = false,
				["talent"] = {
					["single"] = 13,
					["multi"] = {
						[13] = true,
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["class"] = {
					["single"] = "MAGE",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["race"] = {
					["single"] = "Tauren",
					["multi"] = {
						["Scourge"] = true,
					},
				},
				["spellknown"] = 11426,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["width"] = 35,
			["authorOptions"] = {
			},
			["zoom"] = 0.33,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.6",
			["id"] = "Racial Tauren",
			["xOffset"] = 180,
			["alpha"] = 1,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["config"] = {
			},
			["inverse"] = true,
			["icon"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
		},
		["Racial Human"] = {
			["xOffset"] = 180,
			["preferToUpdate"] = false,
			["yOffset"] = -150,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/Q1lBL5NSY/1",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["internalVersion"] = 29,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["parent"] = "T's Racials",
			["desaturate"] = false,
			["tocversion"] = 11302,
			["version"] = 1,
			["subRegions"] = {
			},
			["height"] = 35,
			["icon"] = true,
			["width"] = 35,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_genericShowOn"] = true,
						["type"] = "status",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["realSpellName"] = "Perception",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 20600,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["load"] = {
				["use_race"] = true,
				["use_never"] = false,
				["talent"] = {
					["single"] = 13,
					["multi"] = {
						[13] = true,
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["class"] = {
					["single"] = "MAGE",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["race"] = {
					["single"] = "Human",
					["multi"] = {
						["Scourge"] = true,
					},
				},
				["spellknown"] = 11426,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["keepAspectRatio"] = false,
			["auto"] = true,
			["config"] = {
			},
			["alpha"] = 1,
			["zoom"] = 0.33,
			["cooldownEdge"] = true,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.6",
			["id"] = "Racial Human",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "aPJE3JEYtKt",
			["inverse"] = true,
			["selfPoint"] = "CENTER",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
		},
		["T's Racials"] = {
			["controlledChildren"] = {
				"Racial Dwarf", -- [1]
				"Racial Gnome", -- [2]
				"Racial Human", -- [3]
				"Racial Night Elf", -- [4]
				"Racial Orc", -- [5]
				"Racial Tauren", -- [6]
				"Racial Troll", -- [7]
				"Racial Undead", -- [8]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["groupIcon"] = 136235,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/Q1lBL5NSY/1",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["event"] = "Health",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["internalVersion"] = 29,
			["selfPoint"] = "BOTTOMLEFT",
			["version"] = 1,
			["subRegions"] = {
			},
			["load"] = {
				["use_class"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["scale"] = 1,
			["border"] = false,
			["borderEdge"] = "1 Pixel",
			["regionType"] = "group",
			["borderSize"] = 2,
			["borderOffset"] = 4,
			["tocversion"] = 11302,
			["id"] = "T's Racials",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["yOffset"] = -15.9996337890625,
			["borderInset"] = 1,
			["config"] = {
			},
			["xOffset"] = -502.500366210938,
			["conditions"] = {
			},
			["uid"] = "MjNIA4kg8DV",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
		},
		["Racial Night Elf"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = -150,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/Q1lBL5NSY/1",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["internalVersion"] = 29,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["parent"] = "T's Racials",
			["desaturate"] = false,
			["tocversion"] = 11302,
			["version"] = 1,
			["subRegions"] = {
			},
			["height"] = 35,
			["anchorFrameType"] = "SCREEN",
			["selfPoint"] = "CENTER",
			["zoom"] = 0.33,
			["uid"] = "wSeBG31t6p8",
			["auto"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["unit"] = "player",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["realSpellName"] = "Shadowmeld",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["event"] = "Cooldown Progress (Spell)",
						["duration"] = "1",
						["use_track"] = true,
						["spellName"] = 20580,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["regionType"] = "icon",
			["load"] = {
				["use_race"] = true,
				["use_never"] = false,
				["talent"] = {
					["single"] = 13,
					["multi"] = {
						[13] = true,
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["class"] = {
					["single"] = "MAGE",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["race"] = {
					["single"] = "NightElf",
					["multi"] = {
						["Scourge"] = true,
					},
				},
				["spellknown"] = 11426,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["width"] = 35,
			["authorOptions"] = {
			},
			["icon"] = true,
			["frameStrata"] = 1,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.6",
			["id"] = "Racial Night Elf",
			["keepAspectRatio"] = false,
			["alpha"] = 1,
			["xOffset"] = 180,
			["config"] = {
			},
			["inverse"] = true,
			["cooldownEdge"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
		},
		["Racial Orc"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = -150,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/Q1lBL5NSY/1",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["internalVersion"] = 29,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["parent"] = "T's Racials",
			["version"] = 1,
			["subRegions"] = {
			},
			["height"] = 35,
			["keepAspectRatio"] = false,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["cooldownEdge"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["names"] = {
						},
						["type"] = "status",
						["duration"] = "1",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["realSpellName"] = "Blood Fury",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 20572,
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["tocversion"] = 11302,
			["regionType"] = "icon",
			["load"] = {
				["use_race"] = true,
				["use_never"] = false,
				["talent"] = {
					["single"] = 13,
					["multi"] = {
						[13] = true,
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["class"] = {
					["single"] = "MAGE",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["race"] = {
					["single"] = "Orc",
					["multi"] = {
						["Scourge"] = true,
					},
				},
				["spellknown"] = 11426,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["width"] = 35,
			["config"] = {
			},
			["auto"] = true,
			["zoom"] = 0.33,
			["icon"] = true,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.6",
			["id"] = "Racial Orc",
			["xOffset"] = 180,
			["alpha"] = 1,
			["authorOptions"] = {
			},
			["uid"] = "wtpsIxKl9N2",
			["inverse"] = true,
			["selfPoint"] = "CENTER",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
		},
		["MP5 Bar"] = {
			["sparkWidth"] = 10,
			["borderBackdrop"] = "Blizzard Tooltip",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = -203.999969482422,
			["anchorPoint"] = "CENTER",
			["parent"] = "MP5Bar",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/0mEizxbKG/1",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
					["custom"] = "WeakAuras.ScanEvents(\"TICKUPDATE\", true)",
					["do_custom"] = false,
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "2",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["event"] = "Health",
						["subeventSuffix"] = "_ENERGIZE",
						["custom_type"] = "stateupdate",
						["custom"] = "function(a, e, t)\n    local currentMana = UnitPower(\"player\" , 0)\n    \n    if e == \"UNIT_SPELLCAST_SUCCEEDED\" and currentMana < aura_env.lastMana and currentMana < UnitPowerMax(\"player\", 0) then\n        \n        aura_env.lastMana = currentMana\n        local duration = 5\n        a[\"\"] = {\n            show = true,\n            changed = true,\n            duration = duration,\n            expirationTime = GetTime() + duration,\n            progressType = \"timed\",\n            autoHide = true\n        }   \n        return true\n    end\n    \n    aura_env.lastMana = currentMana\n    return false\nend",
						["events"] = "PLAYER_ENTERING_WORLD, UNIT_SPELLCAST_SUCCEEDED, UNIT_MAXPOWER, CURRENT_SPELL_CAST_CHANGED",
						["use_sourceUnit"] = true,
						["check"] = "event",
						["unit"] = "player",
						["sourceUnit"] = "player",
						["spellIds"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 29,
			["zoom"] = 0,
			["selfPoint"] = "CENTER",
			["backdropInFront"] = false,
			["barColor"] = {
				0.28627450980392, -- [1]
				0.75686274509804, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["color"] = {
			},
			["spark"] = false,
			["version"] = 1,
			["subRegions"] = {
				{
					["type"] = "aurabar_bar",
				}, -- [1]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 15,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "SPARK",
					["text_anchorYOffset"] = -10,
					["text_fontSize"] = 20,
					["anchorXOffset"] = 0,
					["text_fontType"] = "None",
				}, -- [2]
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_offset"] = 0,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "1 Pixel",
					["border_size"] = 1,
				}, -- [3]
			},
			["height"] = 15,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["load"] = {
				["use_class"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["PRIEST"] = true,
						["SHAMAN"] = true,
						["PALADIN"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["icon"] = false,
			["anchorFrameType"] = "SCREEN",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["id"] = "MP5 Bar",
			["config"] = {
			},
			["smoothProgress"] = true,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["borderInFront"] = true,
			["frameStrata"] = 4,
			["icon_side"] = "RIGHT",
			["sparkOffsetY"] = 10,
			["sparkHeight"] = 40,
			["texture"] = "ElvUI Norm",
			["auto"] = true,
			["sparkTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura32",
			["semver"] = "1.0.1",
			["tocversion"] = 11302,
			["sparkHidden"] = "NEVER",
			["backgroundColor"] = {
				0, -- [1]
				0.22352941176471, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["alpha"] = 1,
			["width"] = 147,
			["sparkOffsetX"] = 0,
			["uid"] = "84Lb2rczkA(",
			["inverse"] = false,
			["xOffset"] = 1.00018310546875,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["stickyDuration"] = false,
		},
		["Rune"] = {
			["xOffset"] = 54.221862792969,
			["preferToUpdate"] = false,
			["yOffset"] = 213.3337097168,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["duration"] = "1",
						["unevent"] = "auto",
						["genericShowOn"] = "showOnReady",
						["use_genericShowOn"] = true,
						["use_itemName"] = true,
						["unit"] = "player",
						["itemName"] = 20520,
						["event"] = "Cooldown Progress (Item)",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 20520,
						["unevent"] = "auto",
						["duration"] = "1",
						["use_itemName"] = true,
						["unit"] = "player",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["event"] = "Cooldown Progress (Item)",
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 1,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
			},
			["height"] = 46.222221374512,
			["load"] = {
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["parent"] = "Healer Consumes",
			["config"] = {
			},
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["authorOptions"] = {
			},
			["url"] = "https://wago.io/APjFe045F/1",
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 11303,
			["id"] = "Rune",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["uid"] = "nMtVWq03nTN",
			["inverse"] = false,
			["width"] = 46.221988677979,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["zoom"] = 0,
		},
		["Healer Consumes"] = {
			["controlledChildren"] = {
				"Rune", -- [1]
				"DRune", -- [2]
				"MMP", -- [3]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = -509.944458007813,
			["preferToUpdate"] = false,
			["yOffset"] = -442.944488525391,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/APjFe045F/1",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["internalVersion"] = 29,
			["selfPoint"] = "BOTTOMLEFT",
			["version"] = 1,
			["subRegions"] = {
			},
			["load"] = {
				["use_class"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["scale"] = 1,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "group",
			["borderSize"] = 2,
			["borderOffset"] = 4,
			["tocversion"] = 11303,
			["id"] = "Healer Consumes",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["borderInset"] = 1,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["uid"] = "DTWrWfzFa07",
		},
		["DRune"] = {
			["xOffset"] = 9.7775268554688,
			["preferToUpdate"] = false,
			["yOffset"] = 213.77810668945,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["duration"] = "1",
						["unevent"] = "auto",
						["event"] = "Cooldown Progress (Item)",
						["use_genericShowOn"] = true,
						["use_itemName"] = true,
						["unit"] = "player",
						["itemName"] = 12662,
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["genericShowOn"] = "showOnReady",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["duration"] = "1",
						["use_itemName"] = true,
						["unit"] = "player",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["itemName"] = 12662,
						["event"] = "Cooldown Progress (Item)",
						["subeventSuffix"] = "_CAST_START",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 1,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
			},
			["height"] = 43.555534362793,
			["load"] = {
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["parent"] = "Healer Consumes",
			["uid"] = "7ejXaA78jC)",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["url"] = "https://wago.io/APjFe045F/1",
			["width"] = 42.666637420654,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 11303,
			["id"] = "DRune",
			["authorOptions"] = {
			},
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["config"] = {
			},
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["zoom"] = 0,
		},
	},
	["lastArchiveClear"] = 1590169101,
	["minimap"] = {
		["hide"] = false,
	},
	["lastUpgrade"] = 1590169109,
	["dbVersion"] = 29,
	["registered"] = {
	},
	["login_squelch_time"] = 10,
	["frame"] = {
		["xOffset"] = 25.0003662109375,
		["height"] = 665.000061035156,
		["width"] = 830,
		["yOffset"] = -130.499084472656,
	},
	["editor_theme"] = "Monokai",
}
