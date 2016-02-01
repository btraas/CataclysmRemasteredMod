function Balance(playerid)
	Player_UnrestrictResearchOption(playerid, PlayerRace_GetString(playerid, "Balance_research_Unrestrict", ""))
	Player_UnrestrictBuildOption(playerid, PlayerRace_GetString(playerid, "Balance_build_Unrestrict", ""))
	Player_RestrictBuildOption(playerid, PlayerRace_GetString(playerid, "Balance_build_restrict", ""))
end

function HW2BalanceToggle()
	local i=0;
	local numplayers=Universe_PlayerCount();
	while (i<numplayers) do
		Balance(i);
		i=(i + 1);
	end
	

end

function Experimental(playerid)
	Player_RestrictBuildOption(playerid, PlayerRace_GetString(playerid, "Experimental_build_restrict", ""))
	Player_UnrestrictResearchOption(playerid, PlayerRace_GetString(playerid, "Experimental_research_Unrestrict", ""))
	Player_UnrestrictBuildOption(playerid, PlayerRace_GetString(playerid, "Experimental_build_Unrestrict", ""))
end

function HW2ExperimentalToggle()
	local i=0;
	local numplayers=Universe_PlayerCount();
	while (i<numplayers) do
		Experimental(i);
		i=(i + 1);
	end
	

end

function HW1Upgrades(playerid)
	Player_UnrestrictResearchOption(playerid, PlayerRace_GetString(playerid, "HW1Upgrades_research_Unrestrict", ""))
	Player_UnrestrictBuildOption(playerid, PlayerRace_GetString(playerid, "HW1Upgrades_build_Unrestrict", ""))
	Player_RestrictBuildOption(playerid, PlayerRace_GetString(playerid, "HW1Upgrades_build_restrict", ""))
end

function HW1UpgradesToggle()
	local i=0;
	local numplayers=Universe_PlayerCount();
	while (i<numplayers) do
		HW1Upgrades(i);
		i=(i + 1);
	end
end

function HW2noUpgrades(playerid)
	Player_RestrictResearchOption(playerid, PlayerRace_GetString(playerid, "HW2noUpgrades_research_restrict", ""))
	Player_RestrictBuildOption(playerid, PlayerRace_GetString(playerid, "HW2noUpgrades_build_restrict", ""))
	Player_UnrestrictResearchOption(playerid, PlayerRace_GetString(playerid, "HW2noUpgrades_research_Unrestrict", ""))
	Player_UnrestrictBuildOption(playerid, PlayerRace_GetString(playerid, "HW2noUpgrades_build_Unrestrict", ""))
end

function HW2noUpgradesToggle()
	local i=0;
	local numplayers=Universe_PlayerCount();
	while (i<numplayers) do
		HW2noUpgrades(i);
		i=(i + 1);
	end
end

function HW1Balance(playerid)
	Player_RestrictResearchOption(playerid, PlayerRace_GetString(playerid, "HW1Balance_research_restrict", ""))
	Player_RestrictBuildOption(playerid, PlayerRace_GetString(playerid, "HW1Balance_build_restrict", ""))
	Player_UnrestrictBuildOption(playerid, PlayerRace_GetString(playerid, "HW1Balance_build_Unrestrict", ""))
end

function HW1BalanceToggle()
	local i=0;
	local numplayers=Universe_PlayerCount();
	while (i<numplayers) do
		HW1Balance(i);
		i=(i + 1);
	end
end

