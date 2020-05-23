ElvUF.Tags.Events['raidgroup'] = 'GROUP_ROSTER_UPDATE'
ElvUF.Tags.Methods['raidgroup'] = function(unit)
	if IsInRaid() then
		for i = 1, GetNumGroupMembers() do
			local name, _, subgroup = GetRaidRosterInfo(i)
			if name == UnitName('player') then
				return format('Group: %d', subgroup)
			end
		end
	end
end