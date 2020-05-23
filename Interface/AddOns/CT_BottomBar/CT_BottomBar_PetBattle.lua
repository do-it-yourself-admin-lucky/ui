------------------------------------------------
--               CT_BottomBar                 --
--                                            --
-- Breaks up the main menu bar into pieces,   --
-- allowing you to hide and move the pieces   --
-- independently of each other.               --
--                                            --
-- Please do not modify or otherwise          --
-- redistribute this without the consent of   --
-- the CTMod Team. Thank you.                 --
------------------------------------------------

--------------------------------------------
-- Initialization

local _G = getfenv(0);
local module = _G.CT_BottomBar;

--------------------------------------------
-- Miscellaneous

function module:hasPetBattleUI()
	local hasPetBattleUI;
	hasPetBattleUI = CT_BottomBar_SecureFrame:GetAttribute("has-petbattle");
	return hasPetBattleUI;
end
