
GUID = 
	{ 110, 91, 157, 190, 18, 23, 250, 78, 144, 20, 41, 246, 181, 128, 214, 15, }
GameRulesName = "Ships Test Duel"
Description = "New duel script with choice of squadrons by user interface\nhttp://www.pds.hwaccess.net\nScript by LeSunTzu"
SaveGameVersion = 1.0
SinglePlayer = 0

ExtFilter = "rules_dm"

Race_Paths = "Deathmatch"

Level_Pass_Tags = "std"
Race_Pass_Tags = "race_dm,race_gbx"

GameSetupOptions = 
	{ 
	{
		 name = "startingfleetoption",
		 locName = "Starting Assets",
		 tooltip = "Select start option: Begin the game with a Shipyard/Patrol Flotilla, or a full expeditionary force. Jin Vagyr and Sobani are player-only commands.",
		 default = 0,
		 visible = 0,
		 choices =
			{ "1", "duel", }, },
    {
        name = "unitcaps",
        locName = "$3214",
        tooltip = "$3234",
        default = 1,
        visible = 1,
        choices =
        {
            "$3215", "Small",
            "$3216", "Normal",
            "$3217", "Large",
			"$4801", "Huge",	--to localize
        },
    },
	{ 
		name = "resstart", 
		locName = "$3205", 
		tooltip = "Select starting RU levels. Starting off with some RUs in the supply chain is proper for a prepared engagement.", 
		default = 0, 
		visible = 1, 
		choices = 
			{  "0", "0", "3000", "3000", "10000", "10000", "50000", "50000", "500000", "500000",  }, }, 
	{ 
		name = "lockteams", 
		locName = "$3220", 
		tooltip = "$3235", 
		default = 0, 
		visible = 0, 
		choices = 
			{ "$3221", "yes", "$3222", "no", }, }, 
	{ 
		name = "startlocation", 
		locName = "$3225", 
		tooltip = "Lock starting locations: As PDS is meant as a wargame and not a free-for-all, Fixed is recommended for pseudo-scenario-based gameplay.", 
		default = 1, 
		visible = 0, 
		choices = 
			{ "$3226", "random", "$3227", "fixed", }, }, 
{name = "Research", 
        locName = "Research", 
        tooltip = "Toogles Research", 
        default = 0, 
        visible = 1, 
        choices = { "On", "on", "Off", "off", }, }, 
--{name = "Squadrons", 
--        locName = "Squadrons", 
--        tooltip = "Allows the HW1 races to build fighters and corvettes on squadrons", 
--        default = 0, 
--        visible = 1, 
--        choices = { "$3183", "no", "$3184", "yes", }, }, 
{name = "BuildSpeed", 
        locName = "Fixed Build Speed", 
        tooltip = "Select how fast the ships should be built", 
        default = 0, 
        visible = 1, 
        choices = 
            { "No", "0", "1x", "1", "2x", "2", "3x", "3", "4x", "4", "5x", "5", "10x", "10", "Instant", "100", }, }, 
	}
	    
dofilepath("data:scripts/ShipList.lua")
dofilepath("data:scripts/scar/restrict.lua")
dofilepath("data:leveldata/multiplayer/lib/research.lua")
dofilepath("data:leveldata/multiplayer/lib/main.lua")
--dofilepath("data:leveldata/multiplayer/lib/Squads.lua")

Events = {}
Events.endGame = 
	{ 
		{ 
			{ "wID = Wait_Start(5)", "Wait_End(wID)", }, 
		}, 
	}

function OnInit()
	MPRestrict()
	SetStartFleetSuffix("duel")
	SobGroup_Create("sgCPUSq1")
	SobGroup_Create("sgCPUSq2")
	SobGroup_Create("sgCPUSq3")
	Rule_AddInterval("Rule_SetUpUI", 0.5)
--	research = GetGameSettingAsNumber("research")
	if (GetGameSettingAsString("Research") == "off") then
        	Rule_Add("DisableResearch")
	end
--    if (GetGameSettingAsString("Squadrons") == "yes") then
--        	SquadToggle()	
--	end
	BuildMultiplier = tonumber(GetGameSettingAsString("BuildSpeed"))
	if (BuildMultiplier > 0) then
		Rule_AddInterval("BuildSpeedMultiplier",1)
	end
end
--Persona_GetNumber("cfg_race_index_sort", 1)
function Rule_SetUpUI()
	if Player_GetRace(0) == 1 then 
		UI_ShowScreen("ShipSelectorPlayer1", ePopup)
	else	if Player_GetRace(0) == 2 then 
		UI_ShowScreen("ShipSelectorPlayer2", ePopup)
		else	if Player_GetRace(0) == 3 then 
		UI_ShowScreen("ShipSelectorPlayer3", ePopup)
			else	if Player_GetRace(0) == 4 then 
		UI_ShowScreen("ShipSelectorPlayer4", ePopup)
				else	if Player_GetRace(0) == 5 then 
		UI_ShowScreen("ShipSelectorPlayer5", ePopup)
					else	if Player_GetRace(0) == 6 then 
		UI_ShowScreen("ShipSelectorPlayer6", ePopup)
						else	if Player_GetRace(0) == 7 then 
		UI_ShowScreen("ShipSelectorPlayer7", ePopup)
							else	if Player_GetRace(0) == 8 then 
		UI_ShowScreen("ShipSelectorPlayer8", ePopup)
								else
		UI_ShowScreen("ShipSelectorPlayer9", ePopup)
								end
							end
						end	
					end
				end
			end	
		end
	end
	if Player_GetRace(1) == 1 then 
		UI_ShowScreen("ShipSelectorCPU1", ePopup)
	else	if Player_GetRace(1) == 2 then 
		UI_ShowScreen("ShipSelectorCPU2", ePopup)
		else	if Player_GetRace(1) == 3 then 
		UI_ShowScreen("ShipSelectorCPU3", ePopup)
			else	if Player_GetRace(1) == 4 then 
		UI_ShowScreen("ShipSelectorCPU4", ePopup)
				else	if Player_GetRace(1) == 5 then 
		UI_ShowScreen("ShipSelectorCPU5", ePopup)
					else	if Player_GetRace(1) == 6 then 
		UI_ShowScreen("ShipSelectorCPU6", ePopup)
						else	if Player_GetRace(1) == 7 then 
		UI_ShowScreen("ShipSelectorCPU7", ePopup)
							else	if Player_GetRace(1) == 8 then 
		UI_ShowScreen("ShipSelectorCPU8", ePopup)
								else
		UI_ShowScreen("ShipSelectorCPU9", ePopup)
								end
							end
						end
					end
				end
			end
		end
	end
	UI_ShowScreen("PlayerSquadron1", ePopup)
	UI_ShowScreen("PlayerSquadron2", ePopup)
	UI_ShowScreen("PlayerSquadron3", ePopup)
	UI_ShowScreen("CPUSquadron1", ePopup)
	UI_ShowScreen("CPUSquadron2", ePopup)
	UI_ShowScreen("CPUSquadron3", ePopup)
	Rule_AddInterval("Rule_SpawnShips", 1)
	Rule_Remove("Rule_SetUpUI")
end

function Rule_UpdateCost()
	local iCostPlayer = 0
	local iCostCPU = 0
	for i, iCount in tHGNShips do
		if UI_IsNamedElementVisible("PlayerSquadron1", iCount.ThingToBuild)==1 then
			iCostPlayer = iCostPlayer + iCount.Cost
		end
		if UI_IsNamedElementVisible("PlayerSquadron2", iCount.ThingToBuild)==1 then
			iCostPlayer = iCostPlayer + iCount.Cost
		end
		if UI_IsNamedElementVisible("PlayerSquadron3", iCount.ThingToBuild)==1 then
			iCostPlayer = iCostPlayer + iCount.Cost
		end
		if UI_IsNamedElementVisible("CPUSquadron1", iCount.ThingToBuild)==1 then
			iCostCPU = iCostCPU + iCount.Cost
		end
		if UI_IsNamedElementVisible("CPUSquadron2", iCount.ThingToBuild)==1 then
			iCostCPU = iCostCPU + iCount.Cost
		end
		if UI_IsNamedElementVisible("CPUSquadron3", iCount.ThingToBuild)==1 then
			iCostCPU = iCostCPU + iCount.Cost
		end
	end
	for i, iCount in tVGRShips do
		if UI_IsNamedElementVisible("PlayerSquadron1", iCount.ThingToBuild)==1 then
			iCostPlayer = iCostPlayer + iCount.Cost
		end
		if UI_IsNamedElementVisible("PlayerSquadron2", iCount.ThingToBuild)==1 then
			iCostPlayer = iCostPlayer + iCount.Cost
		end
		if UI_IsNamedElementVisible("PlayerSquadron3", iCount.ThingToBuild)==1 then
			iCostPlayer = iCostPlayer + iCount.Cost
		end
		if UI_IsNamedElementVisible("CPUSquadron1", iCount.ThingToBuild)==1 then
			iCostCPU = iCostCPU + iCount.Cost
		end
		if UI_IsNamedElementVisible("CPUSquadron2", iCount.ThingToBuild)==1 then
			iCostCPU = iCostCPU + iCount.Cost
		end
		if UI_IsNamedElementVisible("CPUSquadron3", iCount.ThingToBuild)==1 then
			iCostCPU = iCostCPU + iCount.Cost
		end
	end
	UI_SetTextLabelText("ShipSelectorPlayer1", "PlayerCost", "COST: "..iCostPlayer)
	UI_SetTextLabelText("ShipSelectorPlayer2", "PlayerCost", "COST: "..iCostPlayer)
	UI_SetTextLabelText("ShipSelectorCPU1", "CPUCost", "COST: "..iCostCPU)
	UI_SetTextLabelText("ShipSelectorCPU2", "CPUCost", "COST: "..iCostCPU)
end

function Rule_SpawnShips()
	if UI_IsScreenActive("PlayerSquadron1") == 0 and UI_IsScreenActive("PlayerSquadron2") == 0 then

		for i, iCount in tHGNShips do
			if UI_IsNamedElementVisible("PlayerSquadron1", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(0, iCount.ThingToBuild, "NewShip", "Player_Ships0", "volPlayerSq1")
			end
			if UI_IsNamedElementVisible("PlayerSquadron2", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(0, iCount.ThingToBuild, "NewShip", "Player_Ships0", "volPlayerSq2")
			end
			if UI_IsNamedElementVisible("PlayerSquadron3", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(0, iCount.ThingToBuild, "NewShip", "Player_Ships0", "volPlayerSq3")
			end
			if UI_IsNamedElementVisible("CPUSquadron1", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(1, iCount.ThingToBuild, "NewShip", "sgCPUSq1", "volCPUSpawn")
			end
			if UI_IsNamedElementVisible("CPUSquadron2", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(1, iCount.ThingToBuild, "NewShip", "sgCPUSq2", "volCPUSpawn")
			end
			if UI_IsNamedElementVisible("CPUSquadron3", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(1, iCount.ThingToBuild, "NewShip", "sgCPUSq3", "volCPUSpawn")
			end
		end
		for i, iCount in tVGRShips do
			if UI_IsNamedElementVisible("PlayerSquadron1", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(0, iCount.ThingToBuild, "NewShip", "Player_Ships0", "volPlayerSq1")
			end
			if UI_IsNamedElementVisible("PlayerSquadron2", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(0, iCount.ThingToBuild, "NewShip", "Player_Ships0", "volPlayerSq2")
			end
			if UI_IsNamedElementVisible("PlayerSquadron3", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(0, iCount.ThingToBuild, "NewShip", "Player_Ships0", "volPlayerSq3")
			end
			if UI_IsNamedElementVisible("CPUSquadron1", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(1, iCount.ThingToBuild, "NewShip", "sgCPUSq1", "volCPUSpawn")
			end
			if UI_IsNamedElementVisible("CPUSquadron2", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(1, iCount.ThingToBuild, "NewShip", "sgCPUSq2", "volCPUSpawn")
			end
			if UI_IsNamedElementVisible("CPUSquadron3", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(1, iCount.ThingToBuild, "NewShip", "sgCPUSq3", "volCPUSpawn")
			end
		end
		for i, iCount in tKPRShips do
			if UI_IsNamedElementVisible("PlayerSquadron1", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(0, iCount.ThingToBuild, "NewShip", "Player_Ships0", "volPlayerSq1")
			end
			if UI_IsNamedElementVisible("PlayerSquadron2", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(0, iCount.ThingToBuild, "NewShip", "Player_Ships0", "volPlayerSq2")
			end
			if UI_IsNamedElementVisible("PlayerSquadron3", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(0, iCount.ThingToBuild, "NewShip", "Player_Ships0", "volPlayerSq3")
			end
			if UI_IsNamedElementVisible("CPUSquadron1", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(1, iCount.ThingToBuild, "NewShip", "sgCPUSq1", "volCPUSpawn")
			end
			if UI_IsNamedElementVisible("CPUSquadron2", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(1, iCount.ThingToBuild, "NewShip", "sgCPUSq2", "volCPUSpawn")
			end
			if UI_IsNamedElementVisible("CPUSquadron3", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(1, iCount.ThingToBuild, "NewShip", "sgCPUSq3", "volCPUSpawn")
			end
		end
		for i, iCount in tBENShips do
			if UI_IsNamedElementVisible("PlayerSquadron1", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(0, iCount.ThingToBuild, "NewShip", "Player_Ships0", "volPlayerSq1")
			end
			if UI_IsNamedElementVisible("PlayerSquadron2", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(0, iCount.ThingToBuild, "NewShip", "Player_Ships0", "volPlayerSq2")
			end
			if UI_IsNamedElementVisible("PlayerSquadron3", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(0, iCount.ThingToBuild, "NewShip", "Player_Ships0", "volPlayerSq3")
			end
			if UI_IsNamedElementVisible("CPUSquadron1", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(1, iCount.ThingToBuild, "NewShip", "sgCPUSq1", "volCPUSpawn")
			end
			if UI_IsNamedElementVisible("CPUSquadron2", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(1, iCount.ThingToBuild, "NewShip", "sgCPUSq2", "volCPUSpawn")
			end
			if UI_IsNamedElementVisible("CPUSquadron3", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(1, iCount.ThingToBuild, "NewShip", "sgCPUSq3", "volCPUSpawn")
			end
		end
		for i, iCount in tKUSShips do
			if UI_IsNamedElementVisible("PlayerSquadron1", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(0, iCount.ThingToBuild, "NewShip", "Player_Ships0", "volPlayerSq1")
			end
			if UI_IsNamedElementVisible("PlayerSquadron2", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(0, iCount.ThingToBuild, "NewShip", "Player_Ships0", "volPlayerSq2")
			end
			if UI_IsNamedElementVisible("PlayerSquadron3", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(0, iCount.ThingToBuild, "NewShip", "Player_Ships0", "volPlayerSq3")
			end
			if UI_IsNamedElementVisible("CPUSquadron1", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(1, iCount.ThingToBuild, "NewShip", "sgCPUSq1", "volCPUSpawn")
			end
			if UI_IsNamedElementVisible("CPUSquadron2", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(1, iCount.ThingToBuild, "NewShip", "sgCPUSq2", "volCPUSpawn")
			end
			if UI_IsNamedElementVisible("CPUSquadron3", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(1, iCount.ThingToBuild, "NewShip", "sgCPUSq3", "volCPUSpawn")
			end
		end
		for i, iCount in tTAIShips do
			if UI_IsNamedElementVisible("PlayerSquadron1", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(0, iCount.ThingToBuild, "NewShip", "Player_Ships0", "volPlayerSq1")
			end
			if UI_IsNamedElementVisible("PlayerSquadron2", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(0, iCount.ThingToBuild, "NewShip", "Player_Ships0", "volPlayerSq2")
			end
			if UI_IsNamedElementVisible("PlayerSquadron3", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(0, iCount.ThingToBuild, "NewShip", "Player_Ships0", "volPlayerSq3")
			end
			if UI_IsNamedElementVisible("CPUSquadron1", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(1, iCount.ThingToBuild, "NewShip", "sgCPUSq1", "volCPUSpawn")
			end
			if UI_IsNamedElementVisible("CPUSquadron2", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(1, iCount.ThingToBuild, "NewShip", "sgCPUSq2", "volCPUSpawn")
			end
			if UI_IsNamedElementVisible("CPUSquadron3", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(1, iCount.ThingToBuild, "NewShip", "sgCPUSq3", "volCPUSpawn")
			end
		end
		for i, iCount in tTURShips do
			if UI_IsNamedElementVisible("PlayerSquadron1", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(0, iCount.ThingToBuild, "NewShip", "Player_Ships0", "volPlayerSq1")
			end
			if UI_IsNamedElementVisible("PlayerSquadron2", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(0, iCount.ThingToBuild, "NewShip", "Player_Ships0", "volPlayerSq2")
			end
			if UI_IsNamedElementVisible("PlayerSquadron3", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(0, iCount.ThingToBuild, "NewShip", "Player_Ships0", "volPlayerSq3")
			end
			if UI_IsNamedElementVisible("CPUSquadron1", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(1, iCount.ThingToBuild, "NewShip", "sgCPUSq1", "volCPUSpawn")
			end
			if UI_IsNamedElementVisible("CPUSquadron2", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(1, iCount.ThingToBuild, "NewShip", "sgCPUSq2", "volCPUSpawn")
			end
			if UI_IsNamedElementVisible("CPUSquadron3", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(1, iCount.ThingToBuild, "NewShip", "sgCPUSq3", "volCPUSpawn")
			end
		end
		for i, iCount in tKADShips do
			if UI_IsNamedElementVisible("PlayerSquadron1", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(0, iCount.ThingToBuild, "NewShip", "Player_Ships0", "volPlayerSq1")
			end
			if UI_IsNamedElementVisible("PlayerSquadron2", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(0, iCount.ThingToBuild, "NewShip", "Player_Ships0", "volPlayerSq2")
			end
			if UI_IsNamedElementVisible("PlayerSquadron3", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(0, iCount.ThingToBuild, "NewShip", "Player_Ships0", "volPlayerSq3")
			end
			if UI_IsNamedElementVisible("CPUSquadron1", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(1, iCount.ThingToBuild, "NewShip", "sgCPUSq1", "volCPUSpawn")
			end
			if UI_IsNamedElementVisible("CPUSquadron2", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(1, iCount.ThingToBuild, "NewShip", "sgCPUSq2", "volCPUSpawn")
			end
			if UI_IsNamedElementVisible("CPUSquadron3", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(1, iCount.ThingToBuild, "NewShip", "sgCPUSq3", "volCPUSpawn")
			end
		end
		for i, iCount in tEMPShips do
			if UI_IsNamedElementVisible("PlayerSquadron1", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(0, iCount.ThingToBuild, "NewShip", "Player_Ships0", "volPlayerSq1")
			end
			if UI_IsNamedElementVisible("PlayerSquadron2", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(0, iCount.ThingToBuild, "NewShip", "Player_Ships0", "volPlayerSq2")
			end
			if UI_IsNamedElementVisible("PlayerSquadron3", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(0, iCount.ThingToBuild, "NewShip", "Player_Ships0", "volPlayerSq3")
			end
			if UI_IsNamedElementVisible("CPUSquadron1", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(1, iCount.ThingToBuild, "NewShip", "sgCPUSq1", "volCPUSpawn")
			end
			if UI_IsNamedElementVisible("CPUSquadron2", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(1, iCount.ThingToBuild, "NewShip", "sgCPUSq2", "volCPUSpawn")
			end
			if UI_IsNamedElementVisible("CPUSquadron3", iCount.ThingToBuild)==1 then
				SobGroup_SpawnNewShipInSobGroup(1, iCount.ThingToBuild, "NewShip", "sgCPUSq3", "volCPUSpawn")
			end
		end
		SobGroup_Despawn("sgCPUSq1")
		SobGroup_Despawn("sgCPUSq2")
		SobGroup_Despawn("sgCPUSq3")
		Rule_AddInterval("Rule_Respawn", 1)
		Rule_AddInterval("SetupRule", 2)
		Rule_Remove("Rule_UpdateCost")
		Rule_Remove("Rule_SpawnShips")
	end

end


function Rule_Respawn()
	SobGroup_Spawn("sgCPUSq1", "volCPUSq1")
	SobGroup_Spawn("sgCPUSq2", "volCPUSq2")
	SobGroup_Spawn("sgCPUSq3", "volCPUSq3")
	Rule_Remove("Rule_Respawn")
end
	
function SetupRule()
	
	Sensors_SetCameraMinMax (0, 50000)
	AISetup()

	Rule_Add("MainRule")

	Rule_Remove("SetupRule")

end



function AISetup()

	for i = 0, 1 do

		--Player_SetRU(i, 0)

		Player_SetDefaultShipTactic(i, AggressiveTactics)

	end
end

function MainRule()

	local playerIndex = 0

	local playerCount = Universe_PlayerCount()

	while  playerIndex<playerCount do

		if	Player_IsAlive(playerIndex)==1 then

			if	Player_NumberOfAwakeShips(playerIndex)==0 then

				Player_Kill(playerIndex)

			end 

		end
 
		playerIndex = (playerIndex + 1)

	end
 
	
	local numAlive = 0

	local numEnemies = 0

	local gameOver = 1

	
	playerIndex = 0

	while (playerIndex < playerCount) do

		if (Player_IsAlive(playerIndex)==1) then

			local otherPlayerIndex = 0;

			while (otherPlayerIndex < playerCount) do

				if (AreAllied(playerIndex, otherPlayerIndex) == 0) then

					if (Player_IsAlive(otherPlayerIndex)==1) then

						gameOver = 0

					else

						numEnemies = numEnemies + 1

					end

				end

				otherPlayerIndex = otherPlayerIndex+1

			end

			numAlive = numAlive + 1

		end

		
		playerIndex = playerIndex+1

	end

		
	if (numEnemies == 0 and numAlive>0) then

		gameOver = 0;

	end

	
	if	gameOver==1 then

		Event_Start("endGame")

		Rule_Add("waitForEnd")

		Rule_Remove("MainRule")

	end
 
end



function waitForEnd()

	if	Event_IsDone("endGame") then

		setGameOver()

		Rule_Remove("waitForEnd")

	end
 

end
function DisableResearch()
    local iPlayer = 0
    local iPlayerCount = Universe_PlayerCount()
    while (iPlayer < iPlayerCount) do
        if  Player_IsAlive(iPlayer)==1 then
            Player_GrantAllResearch(iPlayer)
        end
        iPlayer = iPlayer + 1
    end
    Rule_Remove("DisableResearch")
end

function BuildSpeedMultiplier()
    local iPlayer = 0
    local iPlayerCount = Universe_PlayerCount()
    while (iPlayer < iPlayerCount) do
        if (Player_IsAlive(iPlayer) == 1) then
            SobGroup_SetBuildSpeedMultiplier("Player_Ships"..iPlayer, BuildMultiplier)
        end
        iPlayer = iPlayer + 1
    end
end
