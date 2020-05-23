------------------------------------------------
--                 CT_MapMod                  --
--                                            --
-- Simple addon that allows the user to add   --
-- notes and gathered nodes to the world map. --
-- Please do not modify or otherwise          --
-- redistribute this without the consent of   --
-- the CTMod Team. Thank you.                 --
--					      --
-- Original credits to Cide and TS (Vanilla)  --
-- Maintained by Resike from 2014 to 2017     --
-- Rebuilt by Dahk Celes (DDCorkum) in 2018   --
------------------------------------------------

-- Please contribute new translations at <https://wow.curseforge.com/projects/ctmod/localization>
-- Also see the auto-gathering section in CT_MapMod.lua, for converting mining nodes into types of ore

local module = select(2, ...);
module.text = module.text or { };

local L = module.text


-----------------------------------------------
-- enUS (Default) Unlocalized Strings 

L["CT_MapMod/Herb/Adders Tongue"] = "Adders Tongue"
L["CT_MapMod/Herb/Adder's Tongue"] = "Adder's Tongue"
L["CT_MapMod/Herb/Aethril"] = "Aethril"
L["CT_MapMod/Herb/Akunda's Bite"] = "Akunda's Bite"
L["CT_MapMod/Herb/Anchor Weed"] = "Anchor Weed"
L["CT_MapMod/Herb/Ancient Lichen"] = "Ancient Lichen"
L["CT_MapMod/Herb/Arthas' Tears"] = "Arthas' Tears"
L["CT_MapMod/Herb/Astral Glory"] = "Astral Glory"
L["CT_MapMod/Herb/Azshara's Veil"] = "Azshara's Veil"
L["CT_MapMod/Herb/Black Lotus"] = "Black Lotus"
L["CT_MapMod/Herb/Blindweed"] = "Blindweed"
L["CT_MapMod/Herb/Briarthorn"] = "Briarthorn"
L["CT_MapMod/Herb/Bruiseweed"] = "Bruiseweed"
L["CT_MapMod/Herb/Cinderbloom"] = "Cinderbloom"
L["CT_MapMod/Herb/Dreamfoil"] = "Dreamfoil"
L["CT_MapMod/Herb/Dreaming Glory"] = "Dreaming Glory"
L["CT_MapMod/Herb/Dreamleaf"] = "Dreamleaf"
L["CT_MapMod/Herb/Earthroot"] = "Earthroot"
L["CT_MapMod/Herb/Fadeleaf"] = "Fadeleaf"
L["CT_MapMod/Herb/Fel-Encrusted Herb"] = "Fel-Encrusted Herb"
L["CT_MapMod/Herb/Felweed"] = "Felweed"
L["CT_MapMod/Herb/Fire Leaf"] = "Fire Leaf"
L["CT_MapMod/Herb/Firebloom"] = "Firebloom"
L["CT_MapMod/Herb/Fireweed"] = "Fireweed"
L["CT_MapMod/Herb/Fjarnskaggl"] = "Fjarnskaggl"
L["CT_MapMod/Herb/Flame Cap"] = "Flame Cap"
L["CT_MapMod/Herb/Fool's Cap"] = "Fool's Cap"
L["CT_MapMod/Herb/Foxflower"] = "Foxflower"
L["CT_MapMod/Herb/Frost Lotus"] = "Frost Lotus"
L["CT_MapMod/Herb/Frostweed"] = "Frostweed"
L["CT_MapMod/Herb/Frozen Herb"] = "Frozen Herb"
L["CT_MapMod/Herb/Ghost Mushroom"] = "Ghost Mushroom"
L["CT_MapMod/Herb/Goldclover"] = "Goldclover"
L["CT_MapMod/Herb/Golden Lotus"] = "Golden Lotus"
L["CT_MapMod/Herb/Golden Sansam"] = "Golden Sansam"
L["CT_MapMod/Herb/Goldthorn"] = "Goldthorn"
L["CT_MapMod/Herb/Gorgrond Flytrap"] = "Gorgrond Flytrap"
L["CT_MapMod/Herb/Grave Moss"] = "Grave Moss"
L["CT_MapMod/Herb/Green Tea Leaf"] = "Green Tea Leaf"
L["CT_MapMod/Herb/Gromsblood"] = "Gromsblood"
L["CT_MapMod/Herb/Heartblossom"] = "Heartblossom"
L["CT_MapMod/Herb/Icecap"] = "Icecap"
L["CT_MapMod/Herb/Icethorn"] = "Icethorn"
L["CT_MapMod/Herb/Khadgars Whisker"] = "Khadgar's Whisker"
L["CT_MapMod/Herb/Kingsblood"] = "Kingsblood"
L["CT_MapMod/Herb/Lichbloom"] = "Lichbloom"
L["CT_MapMod/Herb/Liferoot"] = "Liferoot"
L["CT_MapMod/Herb/Mageroyal"] = "Mageroyal"
L["CT_MapMod/Herb/Mana Thistle"] = "Mana Thistle"
L["CT_MapMod/Herb/Mountain Silversage"] = "Mountain Silversage"
L["CT_MapMod/Herb/Nagrand Arrowbloom"] = "Nagrand Arrowbloom"
L["CT_MapMod/Herb/Netherbloom"] = "Netherbloom"
L["CT_MapMod/Herb/Netherdust Bush"] = "Netherdust Bush"
L["CT_MapMod/Herb/Nightmare Vine"] = "Nightmare Vine"
L["CT_MapMod/Herb/Peacebloom"] = "Peacebloom"
L["CT_MapMod/Herb/Plaguebloom"] = "Plaguebloom"
L["CT_MapMod/Herb/Purple Lotus"] = "Purple Lotus"
L["CT_MapMod/Herb/Ragveil"] = "Ragveil"
L["CT_MapMod/Herb/Rain Poppy"] = "Rain Poppy"
L["CT_MapMod/Herb/Riverbud"] = "Riverbud"
L["CT_MapMod/Herb/Sea Stalks"] = "Sea Stalks"
L["CT_MapMod/Herb/Sha-Touched Herb"] = "Sha-Touched Herb"
L["CT_MapMod/Herb/Silkweed"] = "Silkweed"
L["CT_MapMod/Herb/Silverleaf"] = "Silverleaf"
L["CT_MapMod/Herb/Siren's Sting"] = "Siren's Sting"
L["CT_MapMod/Herb/Snow Lily"] = "Snow Lily"
L["CT_MapMod/Herb/Sorrowmoss"] = "Sorrowmoss"
L["CT_MapMod/Herb/Star Moss"] = "Star Moss"
L["CT_MapMod/Herb/Starflower"] = "Starflower"
L["CT_MapMod/Herb/Starlight Rose"] = "Starlight Rose"
L["CT_MapMod/Herb/Stormvein"] = "Stormvein"
L["CT_MapMod/Herb/Stormvine"] = "Stormvine"
L["CT_MapMod/Herb/Stranglekelp"] = "Stranglekelp"
L["CT_MapMod/Herb/Sungrass"] = "Sungrass"
L["CT_MapMod/Herb/Swiftthistle"] = "Swiftthistle"
L["CT_MapMod/Herb/Talador Orchid"] = "Talador Orchid"
L["CT_MapMod/Herb/Talandra's Rose"] = "Talandra's Rose"
L["CT_MapMod/Herb/Terocone"] = "Terocone"
L["CT_MapMod/Herb/Tiger Lily"] = "Tiger Lily"
L["CT_MapMod/Herb/Twilight Jasmine"] = "Twilight Jasmine"
L["CT_MapMod/Herb/Whiptail"] = "Whiptail"
L["CT_MapMod/Herb/Wild Steelbloom"] = "Wild Steelbloom"
L["CT_MapMod/Herb/Winter's Kiss"] = "Winter's Kiss"
L["CT_MapMod/Herb/Wintersbite"] = "Wintersbite"
L["CT_MapMod/Herb/Withered Herb"] = "Withered Herb"
L["CT_MapMod/Herb/Zin'anthid"] = "Zin'anthid"
L["CT_MapMod/Map/Add a new pin to the map"] = "Add a new pin to the map"
L["CT_MapMod/Map/Click on the map where you want the pin"] = "Click on the map where you want the pin"
L["CT_MapMod/Map/New Pin"] = "New Pin"
L["CT_MapMod/Map/Reset the map"] = "Reset the map"
L["CT_MapMod/Map/Right-Click to Drag"] = "Right-Click to Drag"
L["CT_MapMod/Map/Where am I?"] = "Where am I?"
L["CT_MapMod/Options/Add Features/Coordinates/Line 1"] = "Coordinates show where you and your mouse cursor are on the map"
L["CT_MapMod/Options/Add Features/Coordinates/ShowCursorCoordsOnMapLabel"] = "Show cursor coordinates"
L["CT_MapMod/Options/Add Features/Coordinates/ShowPlayerCoordsOnMapLabel"] = "Show player coordinates"
L["CT_MapMod/Options/Add Features/Heading"] = "Add Features to World Map"
L["CT_MapMod/Options/Add Features/WhereAmI/Line 1"] = "The 'Where am I?' button resets the map to your location."
L["CT_MapMod/Options/Add Features/WhereAmI/ShowMapResetButtonLabel"] = "Show 'Where am I' button"
L["CT_MapMod/Options/Always"] = "Always"
L["CT_MapMod/Options/At Bottom"] = "At Bottom"
L["CT_MapMod/Options/At Top"] = "At Top"
L["CT_MapMod/Options/At Top Left"] = "At Top Left"
L["CT_MapMod/Options/Auto"] = "Auto"
L["CT_MapMod/Options/Disabled"] = "Disabled"
L["CT_MapMod/Options/Pins/Gathering/HerbNoteDisplayLabel"] = "Show herb nodes"
L["CT_MapMod/Options/Pins/Gathering/Line 1"] = "Identify herbalism and mining nodes on the map."
L["CT_MapMod/Options/Pins/Gathering/OreNoteDisplayLabel"] = "Show ore nodes"
L["CT_MapMod/Options/Pins/Heading"] = "Create and Display Pins"
L["CT_MapMod/Options/Pins/Icon Size"] = "Icon Size"
L["CT_MapMod/Options/Pins/IncludeRandomSpawnsCheckButton"] = "Include randomly-spawning rare nodes"
L["CT_MapMod/Options/Pins/IncludeRandomSpawnsTip"] = "Also creates pins for random nodes like Anchor's Weed and Platinum"
L["CT_MapMod/Options/Pins/OverwriteGatheringCheckButton"] = "Overwrite existing gathering nodes"
L["CT_MapMod/Options/Pins/OverwriteGatheringTip"] = "When two types of  herb or ore are very close, keep the newest one"
L["CT_MapMod/Options/Pins/User/Line 1"] = "Identify points of interest on the map with custom icons"
L["CT_MapMod/Options/Pins/User/UserNoteDisplayLabel"] = "Show custom user notes"
L["CT_MapMod/Options/Reset/Heading"] = "Reset Options"
L["CT_MapMod/Options/Reset/Line 1"] = "Note: This will reset the options to default and then reload your UI."
L["CT_MapMod/Options/Reset/ResetAllCheckbox"] = "Reset options for all of your characters"
L["CT_MapMod/Options/Reset/ResetButton"] = "Reset Options"
L["CT_MapMod/Options/Tips/Heading"] = "Tips"
L["CT_MapMod/Options/Tips/Line 1"] = "You can use /ctmap, /ctmapmod, or /mapmod to open this options window directly."
L["CT_MapMod/Options/Tips/Line 2"] = "Add pins to the world map using the 'new note' button at the top corner of the map!"
L["CT_MapMod/Ore/Adamantite"] = "Adamantite"
L["CT_MapMod/Ore/Blackrock"] = "Blackrock"
L["CT_MapMod/Ore/Cobalt"] = "Cobalt"
L["CT_MapMod/Ore/Copper"] = "Copper"
L["CT_MapMod/Ore/Elementium"] = "Elementium"
L["CT_MapMod/Ore/Fel Iron"] = "Fel Iron"
L["CT_MapMod/Ore/Felslate"] = "Felslate"
L["CT_MapMod/Ore/Ghost Iron"] = "Ghost Iron"
L["CT_MapMod/Ore/Gold"] = "Gold"
L["CT_MapMod/Ore/Iron"] = "Iron"
L["CT_MapMod/Ore/Khorium"] = "Khorium"
L["CT_MapMod/Ore/Kyparite"] = "Kyparite"
L["CT_MapMod/Ore/Leystone"] = "Leystone"
L["CT_MapMod/Ore/Mithril"] = "Mithril"
L["CT_MapMod/Ore/Monelite"] = "Monelite"
L["CT_MapMod/Ore/Obsidian"] = "Obsidian"
L["CT_MapMod/Ore/Osmenite"] = "Osmenite"
L["CT_MapMod/Ore/Platinum"] = "Platinum"
L["CT_MapMod/Ore/Pyrite"] = "Pyrite"
L["CT_MapMod/Ore/Saronite"] = "Saronite"
L["CT_MapMod/Ore/Silver"] = "Silver"
L["CT_MapMod/Ore/Storm Silver"] = "Storm Silver"
L["CT_MapMod/Ore/Thorium"] = "Thorium"
L["CT_MapMod/Ore/Tin"] = "Tin"
L["CT_MapMod/Ore/Titanium"] = "Titanium"
L["CT_MapMod/Ore/Trillium"] = "Trillium"
L["CT_MapMod/Ore/True Iron"] = "True Iron"
L["CT_MapMod/Ore/Truesilver"] = "Truesilver"
L["CT_MapMod/Pin/Cancel"] = "Cancel"
L["CT_MapMod/Pin/Delete"] = "Delete"
L["CT_MapMod/Pin/Description"] = "Description"
L["CT_MapMod/Pin/Herb"] = "Herbalism Node"
L["CT_MapMod/Pin/Icon"] = "Icon"
L["CT_MapMod/Pin/Name"] = "Name"
L["CT_MapMod/Pin/Okay"] = "Okay"
L["CT_MapMod/Pin/Ore"] = "Mining Node"
L["CT_MapMod/Pin/Right-Click to Drag"] = "Right-Click to Drag"
L["CT_MapMod/Pin/Shift-Click to Edit"] = "Shift-Click to Edit"
L["CT_MapMod/Pin/Type"] = "Type"
L["CT_MapMod/Pin/User"] = "Custom Icon"
L["CT_MapMod/User/Blue Shield"] = "Blue Shield"
L["CT_MapMod/User/Diamond"] = "Diamond"
L["CT_MapMod/User/Green Square"] = "Green Square"
L["CT_MapMod/User/Grey Note"] = "Grey Note"
L["CT_MapMod/User/Red Cross"] = "Red Cross"
L["CT_MapMod/User/Red Dot"] = "Red Dot"
L["CT_MapMod/User/White Circle"] = "White Circle"


-----------------------------------------------
-- frFR 
-- Credits to ddc (and Sasmira before 2018 rewrite)

if (GetLocale() == "frFR") then

L["CT_MapMod/Herb/Adder's Tongue"] = "Langue de serpent"
L["CT_MapMod/Herb/Aethril"] = "Aethril"
L["CT_MapMod/Herb/Akunda's Bite"] = "Mâche d’Akunda"
L["CT_MapMod/Herb/Anchor Weed"] = "Ancoracée"
L["CT_MapMod/Herb/Ancient Lichen"] = "Lichen ancien"
L["CT_MapMod/Herb/Arthas' Tears"] = "Larmes d'Arthas"
L["CT_MapMod/Herb/Astral Glory"] = "Astralée"
L["CT_MapMod/Herb/Azshara's Veil"] = "Voile d'Azshara"
L["CT_MapMod/Herb/Blindweed"] = "Aveuglette"
L["CT_MapMod/Herb/Briarthorn"] = "Eglantine"
L["CT_MapMod/Herb/Bruiseweed"] = "Doulourante"
L["CT_MapMod/Herb/Cinderbloom"] = "Cendrelle"
L["CT_MapMod/Herb/Dreamfoil"] = "Feuillerêve"
L["CT_MapMod/Herb/Dreaming Glory"] = "Glaurier"
L["CT_MapMod/Herb/Dreamleaf"] = "Songefeuille"
L["CT_MapMod/Herb/Earthroot"] = "Terrestrine"
L["CT_MapMod/Herb/Fadeleaf"] = "Pâlerette"
L["CT_MapMod/Herb/Felweed"] = "Gangrelette"
L["CT_MapMod/Herb/Fire Leaf"] = "Feuille de feu"
L["CT_MapMod/Herb/Firebloom"] = "Fleur de feu"
L["CT_MapMod/Herb/Fireweed"] = "Ignescente"
L["CT_MapMod/Herb/Fjarnskaggl"] = "Fjarnskaggl"
L["CT_MapMod/Herb/Fool's Cap"] = "Berluette"
L["CT_MapMod/Herb/Foxflower"] = "Vulpille"
L["CT_MapMod/Herb/Frostweed"] = "Givrelette"
L["CT_MapMod/Herb/Ghost Mushroom"] = "Champignon fantôme"
L["CT_MapMod/Herb/Goldclover"] = "Trèfle doré"
L["CT_MapMod/Herb/Golden Sansam"] = "Sansam doré"
L["CT_MapMod/Herb/Goldthorn"] = "Dorépine"
L["CT_MapMod/Herb/Gorgrond Flytrap"] = "Dionée de Gorgrond"
L["CT_MapMod/Herb/Grave Moss"] = "Tombeline"
L["CT_MapMod/Herb/Green Tea Leaf"] = "Feuille de thé vert"
L["CT_MapMod/Herb/Gromsblood"] = "Gromsang"
L["CT_MapMod/Herb/Heartblossom"] = "Pétale de cœur"
L["CT_MapMod/Herb/Icecap"] = "Chapeglace"
L["CT_MapMod/Herb/Icethorn"] = "Glacépine"
L["CT_MapMod/Herb/Khadgars Whisker"] = "Moustache de Khadgar"
L["CT_MapMod/Herb/Kingsblood"] = "Sang-royal"
L["CT_MapMod/Herb/Lichbloom"] = "Fleur-de-liche"
L["CT_MapMod/Herb/Liferoot"] = "Vietérule"
L["CT_MapMod/Herb/Mageroyal"] = "Mage royal"
L["CT_MapMod/Herb/Mana Thistle"] = "Chardon de mana"
L["CT_MapMod/Herb/Mountain Silversage"] = "Sauge-argent des montagnes"
L["CT_MapMod/Herb/Nagrand Arrowbloom"] = "Sagittaire de Nagrand"
L["CT_MapMod/Herb/Netherbloom"] = "Néantine"
L["CT_MapMod/Herb/Nightmare Vine"] = "Cauchemardelle"
L["CT_MapMod/Herb/Peacebloom"] = "Pacifique"
L["CT_MapMod/Herb/Purple Lotus"] = "Lotus pourpre"
L["CT_MapMod/Herb/Ragveil"] = "Voile-misère"
L["CT_MapMod/Herb/Rain Poppy"] = "Pavot de pluie"
L["CT_MapMod/Herb/Riverbud"] = "Rivebulbe"
L["CT_MapMod/Herb/Sea Stalks"] = "Brins-de-mer"
L["CT_MapMod/Herb/Silkweed"] = "Herbe à soie"
L["CT_MapMod/Herb/Silverleaf"] = "Feuillargent"
L["CT_MapMod/Herb/Siren's Sting"] = "Pollen de sirène"
L["CT_MapMod/Herb/Snow Lily"] = "Lys des neiges"
L["CT_MapMod/Herb/Sorrowmoss"] = "Chagrinelle"
L["CT_MapMod/Herb/Star Moss"] = "Mousse étoilée"
L["CT_MapMod/Herb/Starflower"] = "Bourrache"
L["CT_MapMod/Herb/Starlight Rose"] = "Rose lumétoile"
L["CT_MapMod/Herb/Stormvine"] = "Vignétincelle"
L["CT_MapMod/Herb/Stranglekelp"] = "Etouffante"
L["CT_MapMod/Herb/Sungrass"] = "Soleillette"
L["CT_MapMod/Herb/Swiftthistle"] = "Chardonnier"
L["CT_MapMod/Herb/Talador Orchid"] = "Orchidée de Talador"
L["CT_MapMod/Herb/Talandra's Rose"] = "Rose de Talandra"
L["CT_MapMod/Herb/Terocone"] = "Terocône"
L["CT_MapMod/Herb/Tiger Lily"] = "Lys tigré"
L["CT_MapMod/Herb/Twilight Jasmine"] = "Jasmin crépusculaire"
L["CT_MapMod/Herb/Whiptail"] = "Fouettine"
L["CT_MapMod/Herb/Wild Steelbloom"] = "Aciérite sauvage"
L["CT_MapMod/Herb/Winter's Kiss"] = "Bise-d’hiver"
L["CT_MapMod/Herb/Zin'anthid"] = "Zin’anthide"
L["CT_MapMod/Map/Add a new pin to the map"] = "Ajouter une épingle à la carte"
L["CT_MapMod/Map/Click on the map where you want the pin"] = "Cliquez sur la carte pour placer l'épingle"
L["CT_MapMod/Map/New Pin"] = "Ajouter"
L["CT_MapMod/Map/Reset the map"] = "Remet la carte"
L["CT_MapMod/Map/Right-Click to Drag"] = "Clic droit pour faire glisser"
L["CT_MapMod/Map/Where am I?"] = "Où suis-je?"
L["CT_MapMod/Options/Add Features/Coordinates/Line 1"] = "Les coordonnées indiquent où vous et votre curseur êtes sur la carte."
L["CT_MapMod/Options/Add Features/Coordinates/ShowCursorCoordsOnMapLabel"] = "Montrer les cordonnées du curseur"
L["CT_MapMod/Options/Add Features/Coordinates/ShowPlayerCoordsOnMapLabel"] = "Montrer les cordonnées du joueur"
L["CT_MapMod/Options/Add Features/Heading"] = "Ajouter des fonctionnalités à la carte"
L["CT_MapMod/Options/Add Features/WhereAmI/Line 1"] = "Le bouton 'Où suis-je?' remet la carte à votre position"
L["CT_MapMod/Options/Add Features/WhereAmI/ShowMapResetButtonLabel"] = "Montrer le bouton 'Où suis-je'"
L["CT_MapMod/Options/Always"] = "Toujours"
L["CT_MapMod/Options/At Bottom"] = "En bas"
L["CT_MapMod/Options/At Top"] = "En haut"
L["CT_MapMod/Options/At Top Left"] = "En haut à gauche"
L["CT_MapMod/Options/Auto"] = "Auto"
L["CT_MapMod/Options/Disabled"] = "Désactivé"
L["CT_MapMod/Options/Pins/Gathering/HerbNoteDisplayLabel"] = "Montrer les noeuds d'herbes"
L["CT_MapMod/Options/Pins/Gathering/Line 1"] = "Identifier les noeuds d'herboristerie et de minage sur la carte"
L["CT_MapMod/Options/Pins/Gathering/OreNoteDisplayLabel"] = "Montrer les noeuds d'ore"
L["CT_MapMod/Options/Pins/Heading"] = "Créer et montrer des épingles"
L["CT_MapMod/Options/Pins/Icon Size"] = "Grandeur de l'icône"
L["CT_MapMod/Options/Pins/User/Line 1"] = "Identifier les points d’intérêts sur la carte avec des épingles personnalisées"
L["CT_MapMod/Options/Pins/User/UserNoteDisplayLabel"] = "Montres les épingles personnalisées"
L["CT_MapMod/Options/Reset/Heading"] = "Réinitialiser les options"
L["CT_MapMod/Options/Reset/Line 1"] = "Note: Ce bouton réinitialise les options aux valeurs par défaut, et il recharge l'interface"
L["CT_MapMod/Options/Reset/ResetAllCheckbox"] = "Réinitialiser les options pour tous les personnages"
L["CT_MapMod/Options/Reset/ResetButton"] = "Réinitialiser"
L["CT_MapMod/Options/Tips/Heading"] = "Des conseils"
L["CT_MapMod/Options/Tips/Line 1"] = "Vous pouvez taper /ctmap ou /ctcarte pour accéder ces options."
L["CT_MapMod/Options/Tips/Line 2"] = "Ajouter des épingles à la carte en appuyant le bouton 'Ajouter' dans le coin supérieur droit de la carte."
L["CT_MapMod/Ore/Blackrock"] = "Rochenoire"
L["CT_MapMod/Ore/Cobalt"] = "Cobalt"
L["CT_MapMod/Ore/Copper"] = "Cuivre"
L["CT_MapMod/Ore/Fel Iron"] = "Gangrefer"
L["CT_MapMod/Ore/Felslate"] = "Gangreschiste"
L["CT_MapMod/Ore/Ghost Iron"] = "Ectofer"
L["CT_MapMod/Ore/Gold"] = "Or"
L["CT_MapMod/Ore/Iron"] = "Fer"
L["CT_MapMod/Ore/Khorium"] = "Khorium"
L["CT_MapMod/Ore/Leystone"] = "Tellurium"
L["CT_MapMod/Ore/Mithril"] = "Mithril"
L["CT_MapMod/Ore/Monelite"] = "Monélite"
L["CT_MapMod/Ore/Osmenite"] = "Osménite"
L["CT_MapMod/Ore/Platinum"] = "Platine"
L["CT_MapMod/Ore/Pyrite"] = "Pyrite"
L["CT_MapMod/Ore/Saronite"] = "Saronite"
L["CT_MapMod/Ore/Silver"] = "Argent"
L["CT_MapMod/Ore/Storm Silver"] = "Foudrargent"
L["CT_MapMod/Ore/Thorium"] = "Thorium"
L["CT_MapMod/Ore/Tin"] = "Etain"
L["CT_MapMod/Ore/Trillium"] = "Trillium"
L["CT_MapMod/Ore/Truesilver"] = "Vrai-argent"
L["CT_MapMod/Pin/Cancel"] = "Annuler"
L["CT_MapMod/Pin/Delete"] = "Supprimer"
L["CT_MapMod/Pin/Description"] = "Description"
L["CT_MapMod/Pin/Icon"] = "Icône"
L["CT_MapMod/Pin/Name"] = "Nom"
L["CT_MapMod/Pin/Okay"] = "Accepter"
L["CT_MapMod/Pin/Right-Click to Drag"] = "Clic droit pour faire glisser"
L["CT_MapMod/Pin/Shift-Click to Edit"] = "<Maj>-Clic pour éditer"
L["CT_MapMod/Pin/Type"] = "Type"
L["CT_MapMod/User/Blue Shield"] = "Bouclier bleu"
L["CT_MapMod/User/Diamond"] = "Diamant"
L["CT_MapMod/User/Green Square"] = "Carré vert"
L["CT_MapMod/User/Grey Note"] = "Epingle grise"
L["CT_MapMod/User/Red Cross"] = "Croix rouge"
L["CT_MapMod/User/White Circle"] = "Cercle blanc"


-----------------------------------------------
-- deDE
-- Credits to dynaletik
-- Contributions by ddc, taubenhaucher (and Hjörvarör before 2018 rewrite)
	
elseif (GetLocale() == "deDE") then

L["CT_MapMod/Herb/Adder's Tongue"] = "Schlangenzunge"
L["CT_MapMod/Herb/Aethril"] = "Aethril"
L["CT_MapMod/Herb/Akunda's Bite"] = "Akundas Biss"
L["CT_MapMod/Herb/Anchor Weed"] = "Ankerkraut"
L["CT_MapMod/Herb/Ancient Lichen"] = "Urflechte"
L["CT_MapMod/Herb/Arthas' Tears"] = "Arthas' Tränen"
L["CT_MapMod/Herb/Astral Glory"] = "Astralwinde"
L["CT_MapMod/Herb/Azshara's Veil"] = "Azsharas Schleier"
L["CT_MapMod/Herb/Blindweed"] = "Blindkraut"
L["CT_MapMod/Herb/Briarthorn"] = "Wilddornrose"
L["CT_MapMod/Herb/Bruiseweed"] = "Beulengras"
L["CT_MapMod/Herb/Cinderbloom"] = "Aschenblüte"
L["CT_MapMod/Herb/Dreamfoil"] = "Traumblatt"
L["CT_MapMod/Herb/Dreaming Glory"] = "Traumwinde"
L["CT_MapMod/Herb/Dreamleaf"] = "Traumlaub"
L["CT_MapMod/Herb/Earthroot"] = "Erdwurzel"
L["CT_MapMod/Herb/Fadeleaf"] = "Blassblatt"
L["CT_MapMod/Herb/Felweed"] = "Teufelsgras"
L["CT_MapMod/Herb/Fire Leaf"] = "Feuerblatt"
L["CT_MapMod/Herb/Firebloom"] = "Feuerblüte"
L["CT_MapMod/Herb/Fireweed"] = "Feuerwurz"
L["CT_MapMod/Herb/Fjarnskaggl"] = "Fjarnskaggl"
L["CT_MapMod/Herb/Fool's Cap"] = "Narrenkappe"
L["CT_MapMod/Herb/Foxflower"] = "Fuchsblume"
L["CT_MapMod/Herb/Frostweed"] = "Frostwurz"
L["CT_MapMod/Herb/Ghost Mushroom"] = "Geisterpilz"
L["CT_MapMod/Herb/Goldclover"] = "Goldklee"
L["CT_MapMod/Herb/Golden Sansam"] = "Goldener Sansam"
L["CT_MapMod/Herb/Goldthorn"] = "Golddorn"
L["CT_MapMod/Herb/Gorgrond Flytrap"] = "Gorgrondfliegenfalle"
L["CT_MapMod/Herb/Grave Moss"] = "Grabmoos"
L["CT_MapMod/Herb/Green Tea Leaf"] = "Teepflanze"
L["CT_MapMod/Herb/Gromsblood"] = "Gromsblut"
L["CT_MapMod/Herb/Heartblossom"] = "Herzblüte"
L["CT_MapMod/Herb/Icecap"] = "Eiskappe"
L["CT_MapMod/Herb/Icethorn"] = "Eisdorn"
L["CT_MapMod/Herb/Khadgars Whisker"] = "Khadgars Schnurrbart"
L["CT_MapMod/Herb/Kingsblood"] = "Königsblut"
L["CT_MapMod/Herb/Lichbloom"] = "Lichblüte"
L["CT_MapMod/Herb/Liferoot"] = "Lebenswurz"
L["CT_MapMod/Herb/Mageroyal"] = "Maguskönigskraut"
L["CT_MapMod/Herb/Mana Thistle"] = "Manadistel"
L["CT_MapMod/Herb/Mountain Silversage"] = "Bergsilbersalbei"
L["CT_MapMod/Herb/Nagrand Arrowbloom"] = "Nagrandpfeilkelch"
L["CT_MapMod/Herb/Netherbloom"] = "Netherblüte"
L["CT_MapMod/Herb/Nightmare Vine"] = "Alptraumranke"
L["CT_MapMod/Herb/Peacebloom"] = "Friedensblume"
L["CT_MapMod/Herb/Purple Lotus"] = "Lila Lotus"
L["CT_MapMod/Herb/Ragveil"] = "Zottelkappe"
L["CT_MapMod/Herb/Rain Poppy"] = "Regenmohn"
L["CT_MapMod/Herb/Riverbud"] = "Flussknospe"
L["CT_MapMod/Herb/Sea Stalks"] = "Meeresstängel"
L["CT_MapMod/Herb/Silkweed"] = "Seidenkraut"
L["CT_MapMod/Herb/Silverleaf"] = "Silberblatt"
L["CT_MapMod/Herb/Siren's Sting"] = "Sirenendorn"
L["CT_MapMod/Herb/Snow Lily"] = "Schneelilie"
L["CT_MapMod/Herb/Sorrowmoss"] = "Trauermoos"
L["CT_MapMod/Herb/Star Moss"] = "Sternmoos"
L["CT_MapMod/Herb/Starflower"] = "Sternenblume"
L["CT_MapMod/Herb/Starlight Rose"] = "Sternlichtrose"
L["CT_MapMod/Herb/Stormvine"] = "Sturmwinde"
L["CT_MapMod/Herb/Stranglekelp"] = "Würgetang"
L["CT_MapMod/Herb/Sungrass"] = "Sonnengras"
L["CT_MapMod/Herb/Swiftthistle"] = "Flitzdistel"
L["CT_MapMod/Herb/Talador Orchid"] = "Taladororchidee"
L["CT_MapMod/Herb/Talandra's Rose"] = "Talandras Rose"
L["CT_MapMod/Herb/Terocone"] = "Terozapfen"
L["CT_MapMod/Herb/Tiger Lily"] = "Tigerlilie"
L["CT_MapMod/Herb/Twilight Jasmine"] = "Schattenjasmin"
L["CT_MapMod/Herb/Whiptail"] = "Gertenrohr"
L["CT_MapMod/Herb/Wild Steelbloom"] = "Wildstahlblume"
L["CT_MapMod/Herb/Winter's Kiss"] = "Winterkuss"
L["CT_MapMod/Herb/Zin'anthid"] = "Zin'anthide"
L["CT_MapMod/Map/Add a new pin to the map"] = "Einen neuen Pin zur Karte hinzufügen"
L["CT_MapMod/Map/Click on the map where you want the pin"] = "Klicke auf der Karte, wohin der Pin soll"
L["CT_MapMod/Map/New Pin"] = "Neuer Pin"
L["CT_MapMod/Map/Reset the map"] = "Karte zurücksetzen"
L["CT_MapMod/Map/Right-Click to Drag"] = "Rechtsklick zum Verschieben"
L["CT_MapMod/Map/Where am I?"] = "Wo bin ich?"
L["CT_MapMod/Options/Add Features/Coordinates/Line 1"] = "Die Koordinaten zeigen an, wo Du und Dein Mauszeiger sich auf der Karte befinden."
L["CT_MapMod/Options/Add Features/Coordinates/ShowCursorCoordsOnMapLabel"] = "Cursorkoordinaten anzeigen"
L["CT_MapMod/Options/Add Features/Coordinates/ShowPlayerCoordsOnMapLabel"] = "Spielerkoordinaten anzeigen"
L["CT_MapMod/Options/Add Features/Heading"] = "Funktionen zur Weltkarte hinzufügen"
L["CT_MapMod/Options/Add Features/WhereAmI/Line 1"] = "Die Schaltfläche \"Wo bin ich?\" setzt die Karte auf Deinen Standort zurück."
L["CT_MapMod/Options/Add Features/WhereAmI/ShowMapResetButtonLabel"] = "Schaltfläche \"Wo bin ich\" anzeigen"
L["CT_MapMod/Options/Always"] = "Immer"
L["CT_MapMod/Options/At Bottom"] = "Unten"
L["CT_MapMod/Options/At Top"] = "Oben"
L["CT_MapMod/Options/At Top Left"] = "Oben links"
L["CT_MapMod/Options/Auto"] = "Automatisch"
L["CT_MapMod/Options/Disabled"] = "Deaktiviert"
L["CT_MapMod/Options/Pins/Gathering/HerbNoteDisplayLabel"] = "Kräuter anzeigen"
L["CT_MapMod/Options/Pins/Gathering/Line 1"] = "Zeigt Kräuter- und Bergbauvorkommen auf der Karte."
L["CT_MapMod/Options/Pins/Gathering/OreNoteDisplayLabel"] = "Erze anzeigen"
L["CT_MapMod/Options/Pins/Heading"] = "Pins erstellen und anzeigen"
L["CT_MapMod/Options/Pins/Icon Size"] = "Symbolgröße"
L["CT_MapMod/Options/Pins/IncludeRandomSpawnsCheckButton"] = "Zufällig erscheinende seltene Erze / Kräuter berücksichtigen"
L["CT_MapMod/Options/Pins/IncludeRandomSpawnsTip"] = "Erstellt Pins auch für zufällige Vorkommen wie Ankerkraut und Platin"
L["CT_MapMod/Options/Pins/OverwriteGatheringCheckButton"] = "Bestehende Erz-/Kräutervorkommen überschreiben"
L["CT_MapMod/Options/Pins/OverwriteGatheringTip"] = "Wenn zwei Arten von Erz oder Kräutern nahe beieinander liegen wird die neueste gespeichert"
L["CT_MapMod/Options/Pins/User/Line 1"] = "Markiere interessante Punkte auf der Karte mit benutzerdefinierten Symbolen"
L["CT_MapMod/Options/Pins/User/UserNoteDisplayLabel"] = "Benutzerdefinierte Hinweise anzeigen"
L["CT_MapMod/Options/Reset/Heading"] = "Optionen zurücksetzen"
L["CT_MapMod/Options/Reset/Line 1"] = "Hinweis: Setzt Optionen auf Standardwerte zurück und lädt das Interface neu."
L["CT_MapMod/Options/Reset/ResetAllCheckbox"] = "Optionen für alle Charaktere zurücksetzen"
L["CT_MapMod/Options/Reset/ResetButton"] = "Zurücksetzen"
L["CT_MapMod/Options/Tips/Heading"] = "Hinweise"
L["CT_MapMod/Options/Tips/Line 1"] = "Durch Eingabe von /ctkarte, /ctmap, /ctmapmod oder /mapmod wird dieses Optionsfenster direkt geöffnet."
L["CT_MapMod/Options/Tips/Line 2"] = "Füge über die Schaltfläche 'Neuer Pin' am oberen Kartenrand Pins zur Weltkarte hinzu!"
L["CT_MapMod/Ore/Blackrock"] = "Schwarzfels"
L["CT_MapMod/Ore/Cobalt"] = "Kobalt"
L["CT_MapMod/Ore/Copper"] = "Kupfer"
L["CT_MapMod/Ore/Fel Iron"] = "Teufelseisen"
L["CT_MapMod/Ore/Felslate"] = "Teufelsschiefer"
L["CT_MapMod/Ore/Ghost Iron"] = "Geistereisen"
L["CT_MapMod/Ore/Gold"] = "Gold"
L["CT_MapMod/Ore/Iron"] = "Eisen"
L["CT_MapMod/Ore/Khorium"] = "Khorium"
L["CT_MapMod/Ore/Kyparite"] = "Kyparit"
L["CT_MapMod/Ore/Leystone"] = "Leystein"
L["CT_MapMod/Ore/Mithril"] = "Mithril"
L["CT_MapMod/Ore/Monelite"] = "Monelit"
L["CT_MapMod/Ore/Osmenite"] = "Osmenit"
L["CT_MapMod/Ore/Platinum"] = "Platin"
L["CT_MapMod/Ore/Pyrite"] = "Pyrit"
L["CT_MapMod/Ore/Saronite"] = "Saronit"
L["CT_MapMod/Ore/Silver"] = "Silber"
L["CT_MapMod/Ore/Storm Silver"] = "Sturmsilber"
L["CT_MapMod/Ore/Thorium"] = "Thorium"
L["CT_MapMod/Ore/Tin"] = "Zinn"
L["CT_MapMod/Ore/Trillium"] = "Trillium"
L["CT_MapMod/Ore/True Iron"] = "Echteisen"
L["CT_MapMod/Ore/Truesilver"] = "Echtsilber"
L["CT_MapMod/Pin/Cancel"] = "Abbrechen"
L["CT_MapMod/Pin/Delete"] = "Löschen"
L["CT_MapMod/Pin/Description"] = "Beschreibung"
L["CT_MapMod/Pin/Icon"] = "Symbol"
L["CT_MapMod/Pin/Name"] = "Name"
L["CT_MapMod/Pin/Okay"] = "Ok"
L["CT_MapMod/Pin/Right-Click to Drag"] = "Rechtsklick zum Verschieben"
L["CT_MapMod/Pin/Shift-Click to Edit"] = "Shift-Klick zum Bearbeiten"
L["CT_MapMod/Pin/Type"] = "Art"


-----------------------------------------------
-- esES
-- Contributions by valdesca, ddc

elseif (GetLocale() == "esES" or GetLocale() == "esMX") then
L["CT_MapMod/Herb/Akunda's Bite"] = "Mordisco de Akunda"
L["CT_MapMod/Herb/Riverbud"] = "Brotarrío"
L["CT_MapMod/Herb/Sea Stalks"] = "Tallomares"
L["CT_MapMod/Herb/Siren's Sting"] = "Aguijón de sirena"
L["CT_MapMod/Herb/Star Moss"] = "Musgo estelar"
L["CT_MapMod/Herb/Winter's Kiss"] = "Beso gélido"
L["CT_MapMod/Herb/Zin'anthid"] = "Zin'anthid"
L["CT_MapMod/Map/Add a new pin to the map"] = "Añade un punto en el mapa."
L["CT_MapMod/Options/Add Features/Coordinates/Line 1"] = "Las Coordinadas se muestran donde tu y el cursor están en el mapa."
L["CT_MapMod/Options/Add Features/Coordinates/ShowCursorCoordsOnMapLabel"] = "Muestra las Coordenadas del cursor"
L["CT_MapMod/Options/Add Features/Coordinates/ShowPlayerCoordsOnMapLabel"] = "Muestra las coordenadas del Jugador"
L["CT_MapMod/Options/Add Features/Heading"] = "Añade Opciones al Mapa Mundo"
L["CT_MapMod/Options/Add Features/WhereAmI/Line 1"] = "El botón \"Donde estoy yo?\" cambia el mapa a tu localización."
L["CT_MapMod/Options/Add Features/WhereAmI/ShowMapResetButtonLabel"] = "Muestra el botón \"Donde estoy yo\""
L["CT_MapMod/Options/Always"] = "Siempre mostrar"
L["CT_MapMod/Options/At Top"] = "Arriba de todo"
L["CT_MapMod/Options/At Top Left"] = "Arriba Izquierda"
L["CT_MapMod/Options/Auto"] = "Auto"
L["CT_MapMod/Options/Disabled"] = "Desactiva"
L["CT_MapMod/Ore/Copper"] = "Cobre"
L["CT_MapMod/Ore/Iron"] = "Hierro"
L["CT_MapMod/Ore/Monelite"] = "Monalita"
L["CT_MapMod/Ore/Osmenite"] = "Osmenita"
L["CT_MapMod/Ore/Storm Silver"] = "Plata de tormenta"
L["CT_MapMod/Pin/Cancel"] = "Cancelar"
L["CT_MapMod/Pin/Delete"] = "Borrar"


-----------------------------------------------
-- ptBR
-- Contributions by BansheeLyris, ddc

elseif (GetLocale() == "ptBR") then
L["CT_MapMod/Herb/Adder's Tongue"] = "Língua-de-áspide"
L["CT_MapMod/Herb/Aethril"] = "Aethril"
L["CT_MapMod/Herb/Akunda's Bite"] = "Mordida de Akunda"
L["CT_MapMod/Herb/Anchor Weed"] = "Erva-ancorina"
L["CT_MapMod/Herb/Ancient Lichen"] = "Líquen-antigo"
L["CT_MapMod/Herb/Arthas' Tears"] = "Lágrimas-de-arthas"
L["CT_MapMod/Herb/Astral Glory"] = "Glória-astral"
L["CT_MapMod/Herb/Azshara's Veil"] = "Véu-de-azshara"
L["CT_MapMod/Herb/Blindweed"] = "Ervacega"
L["CT_MapMod/Herb/Riverbud"] = "Broto-do-rio"
L["CT_MapMod/Herb/Sea Stalks"] = "Talo-marinho"
L["CT_MapMod/Herb/Siren's Sting"] = "Picada da Sereia"
L["CT_MapMod/Herb/Star Moss"] = "Musgo-estrela"
L["CT_MapMod/Herb/Winter's Kiss"] = "Beijo-do-inverno"
L["CT_MapMod/Herb/Zin'anthid"] = "Zin'antida"
L["CT_MapMod/Map/Add a new pin to the map"] = "Adicione um novo marcador no mapa"
L["CT_MapMod/Options/Add Features/Coordinates/Line 1"] = "Coordenadas mostram onde você e o seu mouse estão no mapa"
L["CT_MapMod/Options/Add Features/Coordinates/ShowCursorCoordsOnMapLabel"] = "Mostrar coordenadas do mouse"
L["CT_MapMod/Options/Add Features/Coordinates/ShowPlayerCoordsOnMapLabel"] = "Mostrar coordenadas do personagem"
L["CT_MapMod/Options/Add Features/Heading"] = "Adicionar recursos ao Mapa-Múndi"
L["CT_MapMod/Options/Add Features/WhereAmI/Line 1"] = "O botão 'Onde estou?' redefine o mapa para sua localização."
L["CT_MapMod/Options/Add Features/WhereAmI/ShowMapResetButtonLabel"] = "Mostrar botão 'Onde estou?' "
L["CT_MapMod/Options/Always"] = "Sempre"
L["CT_MapMod/Options/Auto"] = "Automático"
L["CT_MapMod/Ore/Blackrock"] = "Rocha Negra"
L["CT_MapMod/Ore/Monelite"] = "Monelita"
L["CT_MapMod/Ore/Osmenite"] = "Osmenita"
L["CT_MapMod/Ore/Storm Silver"] = "Prata Procelosa"
L["CT_MapMod/Pin/Cancel"] = "Cancelar"


-----------------------------------------------
-- ruRU
-- Contributions by imposeren, ddc

elseif (GetLocale() == "ruRU") then
L["CT_MapMod/Herb/Akunda's Bite"] = "Укус Акунды"
L["CT_MapMod/Herb/Peacebloom"] = "Мироцвет"
L["CT_MapMod/Herb/Riverbud"] = "Речной горох"
L["CT_MapMod/Herb/Sea Stalks"] = "Морской стебель"
L["CT_MapMod/Herb/Silverleaf"] = "Сребролист"
L["CT_MapMod/Herb/Siren's Sting"] = "Укус сирены"
L["CT_MapMod/Herb/Star Moss"] = "Звездный мох"
L["CT_MapMod/Herb/Wild Steelbloom"] = "Дикий сталецвет"
L["CT_MapMod/Herb/Winter's Kiss"] = "Поцелуй зимы"
L["CT_MapMod/Herb/Zin'anthid"] = "Зин'антария"
L["CT_MapMod/Map/Add a new pin to the map"] = "Добавить новую точку на карту"
L["CT_MapMod/Map/Click on the map where you want the pin"] = "Кликните на карте там где хотите добавить точку"
L["CT_MapMod/Options/Add Features/Coordinates/Line 1"] = "Координаты показывают где находитесь вы и курсор над картой"
L["CT_MapMod/Options/Always"] = "Всегда"
L["CT_MapMod/Options/Auto"] = "Автоматически"
L["CT_MapMod/Ore/Copper"] = "Медная"
L["CT_MapMod/Ore/Monelite"] = "Монелита"
L["CT_MapMod/Ore/Osmenite"] = "Осменита"
L["CT_MapMod/Ore/Storm Silver"] = "Штормового серебра"
L["CT_MapMod/Ore/Tin"] = "Оловянная"
L["CT_MapMod/Ore/Truesilver"] = "Истинного серебра"
L["CT_MapMod/Pin/Delete"] = "Удалить"
L["CT_MapMod/Pin/Description"] = "Описание"



-----------------------------------------------
-- zhCN
-- Contributions by cnzjs

elseif (GetLocale() == "zhCN") then
L["CT_MapMod/Map/Add a new pin to the map"] = "添加标记"


end