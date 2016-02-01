function Squads(playerid)
	Player_UnrestrictBuildOption(playerid, PlayerRace_GetString(playerid, "squad_unrestrict", ""))

end

function SquadToggle()
	local i=0;
	local numplayers=Universe_PlayerCount();
	while (i<numplayers) do
		Squads(i);
		i=(i + 1);
	end
	

end

