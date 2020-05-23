-- This file contains a series of temporary fixes to resolve errors in the default UI implementation of LibUIDropDownMenu
-- Source: https://www.townlong-yak.com/bugs/PfF9rr-UIDropDownMenu  (credit to addon developer foxlit)

-- https://www.townlong-yak.com/bugs/YhgQma-SetValueRefreshTaint
if (COMMUNITY_UIDD_REFRESH_PATCH_VERSION or 0) < 2 then
	COMMUNITY_UIDD_REFRESH_PATCH_VERSION = 2
	if select(4, GetBuildInfo()) > 8e4 then
		local function CleanDropdowns()
			if COMMUNITY_UIDD_REFRESH_PATCH_VERSION ~= 2 then
				return
			end
			local f, f2 = FriendsFrame, FriendsTabHeader
			local s = f:IsShown()
			f:Hide()
			f:Show()
			if not f2:IsShown() then
				f2:Show()
				f2:Hide()
			end
			if not s then
				f:Hide()
			end
		end
		hooksecurefunc("Communities_LoadUI", CleanDropdowns)
		hooksecurefunc("SetCVar", function(n)
			if n == "lastSelectedClubId" then
				CleanDropdowns()
			end
		end)
	end
end

-- https://www.townlong-yak.com/bugs/Mx7CWN-RefreshOverread
if (UIDD_REFRESH_OVERREAD_PATCH_VERSION or 0) < 1 then
	UIDD_REFRESH_OVERREAD_PATCH_VERSION = 1
	local function drop(t, k)
		local c = 42
		t[k] = nil
		while not issecurevariable(t, k) do
			if t[c] == nil then
				t[c] = nil
			end
			c = c + 1
		end
	end
	hooksecurefunc("UIDropDownMenu_InitializeHelper", function()
		if UIDD_REFRESH_OVERREAD_PATCH_VERSION ~= 1 then
			return
		end
		for i=1,UIDROPDOWNMENU_MAXLEVELS do
			for j=1,UIDROPDOWNMENU_MAXBUTTONS do
				local b, _ = _G["DropDownList" .. i .. "Button" .. j]
				_ = issecurevariable(b, "checked")      or drop(b, "checked")
				_ = issecurevariable(b, "notCheckable") or drop(b, "notCheckable")
			end
		end
	end)
end