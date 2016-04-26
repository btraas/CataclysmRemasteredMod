--  SCAR SCRIPT  ------------------------------------------------------------------------------
--  Name: Mission01cata.lua
--  Purpose:  Cata Mission 1 Mission Script
----------------------------------------------------------------------------------------------------
-- import library files
dofilepath("data:scripts/SCAR/SCAR_Util.lua")
dofilepath("data:scripts/scar/restrict.lua")


nbl_int_buffer = 0
nbl_int_tmp = null
nbl_mg_buffer = 0
nbl_mg_tmp = null
nbl_ion_buffer = 0
nbl_ion_tmp = null

tai_int_buffer = 0
tai_int_tmp = null
tai_ion_buffer = 0
tai_ion_tmp = null

-- objectives

-- MISSION RULES

-- displays "SAVING GAME..." subtitle in top middle of screen
function Rule_PlaySaveGameLocationCard()
	Subtitle_Message( "$3651", 3 )						-- SAVING GAME...
	Rule_Remove ("Rule_PlaySaveGameLocationCard")
end

-- this function must be here - this is the mission start point
function OnInit()
	SPRestrict()
	print("oninit issued" )	
	Rule_Add("Rule_Init")
end



function Rule_Init()
	Rule_Remove( "Rule_Init" )
	--Rule_PlayerLose()
	-- set the sound directory
	Sound_SpeechSubtitlePath("speech:missions/mission01cata/")
	
	-- haha I wish... currentRace = 11;
	
	-- set the names of the players
	--Player_SetPlayerName(0,"Kiith Somtaaw")
	Player_SetPlayerName(1,"Kiith Nabaal")
	Player_SetPlayerName(2,"Hiigaran Defense Fleet")
	Player_SetPlayerName(3,"Taiidani Imperial Fleet")
		
	-- set the alliances for all of the hiigaran ships
	SetAlliance( 0, 1 )
	SetAlliance( 1, 0 )
	SetAlliance( 0, 2 )
	SetAlliance( 2, 0 )
	SetAlliance( 1, 2 )
	SetAlliance( 2, 1 )
	
	--SetAlliance( 2, 4 )
	--SetAlliance( 4, 2 )
	--SetAlliance( 3, 4 )
	--SetAlliance( 4, 3 )

	Player_SetDefaultShipTactic( 1, DefensiveTactics )
	Player_SetDefaultShipTactic( 2, DefensiveTactics )
	Player_SetDefaultShipTactic( 3, AggressiveTactics )
	
	--UI_StopFlashButton("NewTaskbar", "btnDiplomacy")
	
	-- disable/enable the AI
	CPU_Enable( 1, 0 )
	CPU_Enable( 2, 0 )
	CPU_Enable( 3, 0 )

	SobGroup_SetMadState(Player_GetShipsByType(2, "kus_proximitysensor"), "open")
	SobGroup_SetAsDeployed(Player_GetShipsByType(2, "kus_proximitysensor"))
	
	SobGroup_Attack(3, "firelanceAttackers", "firelanceIons")
	
	nbl_int_buffer = SobGroup_Count(Player_GetShipsByType(1, "Kus_interceptor"))
	nbl_mg_buffer = SobGroup_Count(Player_GetShipsByType(1, "Kus_multiguncorvette"))
	nbl_ion_buffer = SobGroup_Count(Player_GetShipsByType(1, "Kus_ioncannonfrigate_tank"))	
	tai_int_buffer = SobGroup_Count(Player_GetShipsByType(3, "Tai_interceptor"))
	tai_ion_buffer = SobGroup_Count(Player_GetShipsByType(3, "Tai_ioncannonfrigate_tank"))
	
	Rule_Add("Rule_ReplaceNblInt")
	--Rule_Add("Rule_ReplaceNblMg") meh, why? tai interceptors are no match
	Rule_Add("Rule_ReplaceNblIon")
	Rule_Add("Rule_ReplaceTaiInt")
	Rule_Add("Rule_ReplaceTaiIon")
	
	
	HW2_SetResearchLevel( 1 )
	Player_SetRU(0, 2000)
	
	--Event_Start( "intelevent_intro" )	
	
	Sound_MusicPlay("Data:sound/music/battle/Cbattle_02")
--	Player_GrantResearchOption(0, "SMTFighterDrive") 
	
	
	--DisableMothership()
	
	-- this prevents the taskbar from using the taskbar state from the players profile.
	--  eg. prevents the taskbar from being hidden when it is set to hidden by the profile
	--FE_TaskbarIgnoreProfilePhase(1)
			
	--SobGroup_AbilityActivate( "Tanis_Whole", AB_AcceptDocking, 0 )
	--Rule_Add( "SparkiesOnMothership" )
	
	-- begin the opening intelevent
	--NISLoad( "nis/NIS01A" )
	--g_NISState = NISPlay( "nis/NIS01A" )
	-- for seamless transition between animatic and nis, the animatic starts the NIS
	--g_NISState = NISGetPlayingHandle("nis/NIS01A")
	--NISDisableInterface(1) -- this disables the interface when the NIS is done playing, it needs to be re-enabled by scar
	
	
	playEvent()
	
	Rule_Remove( "Rule_Init" )	
	
	--Rule_Add( "Rule_PlayerWins" )
	--Rule_Add( "Rule_PlayerLose" )	
	
	Player_UnrestrictBuildOption( 0, 'smt_acolyte' )
	Player_UnrestrictBuildOption( 0, 'smt_worker' )

	--Player_UnrestrictBuildOption( 0, "Hgn_MS_Module_Research" ) --Hgn_MS_Module_Research
	--Player_UnrestrictBuildOption( 0, "smt_Scout" ) --Hgn_Scout
	--Player_UnrestrictBuildOption( 0, "Hgn_ResourceCollector" ) --Hgn_ResourceCollector
	--Player_UnrestrictBuildOption( 0, "Hgn_Probe" ) --Hgn_Probe
	 -----RESEARCH DATA-----
--~ 	Player_UnrestrictResearchOption( 0, "MothershipHealthUpgrade1" ) --MothershipHealthUpgrade1
--~ 	Player_UnrestrictResearchOption( 0, "MothershipMAXSPEEDUpgrade1" ) --MothershipMAXSPEEDUpgrade1
--~ 	Player_UnrestrictResearchOption( 0, "InterceptorMAXSPEEDUpgrade1" ) --InterceptorMAXSPEEDUpgrade1
--~ 	Player_UnrestrictResearchOption( 0, "AttackBomberMAXSPEEDUpgrade1" ) --AttackBomberMAXSPEEDUpgrade1
--~ 	Player_UnrestrictResearchOption( 0, "ResourceCollectorHealthUpgrade1" ) --ResourceCollectorHealthUpgrade1
	
end

function playEvent()
	--Event_Start( "intelevent_mothershipjumps" )
	--Event_Start( "intelevent_intro" )
	Event_Start( "start" )
end
function Rule_ReplaceNblInt()
	if( SobGroup_Count(Player_GetShipsByType (1, "Kus_interceptor")) < nbl_int_buffer ) then
		Rule_Remove("Rule_ReplaceNblInt")
		nbl_int_tmp = SobGroup_CreateShip(Player_GetShipsByType (1, "Kus_carrier"), "Kus_interceptor") 
		Rule_Add("Rule_checkbuilt_NblInt")
	end
end
function Rule_checkbuilt_NblInt()
	if( nbl_int_tmp == nil) or (SobGroup_IsDocked(nbl_int_tmp) == 0 ) then
		Rule_Remove("Rule_checkbuilt_NblInt")
		nbl_int_tmp = null
		Rule_Add("Rule_ReplaceNblInt")
	end
end

function Rule_ReplaceNblMg()
	if( SobGroup_Count(Player_GetShipsByType (1, "Kus_multiguncorvette")) < nbl_mg_buffer ) then
		Rule_Remove("Rule_ReplaceNblMg")
		nbl_mg_int = SobGroup_CreateShip(Player_GetShipsByType (1, "Kus_carrier"), "Kus_multiguncorvette") 
		Rule_Add("Rule_checkbuilt_NblMg")
	end
end
function Rule_checkbuilt_NblMg()
	if( nbl_mg_tmp == nil) or (SobGroup_IsDocked(nbl_mg_tmp) == 0 ) then
		Rule_Remove("Rule_checkbuilt_NblMg")
		nbl_mg_tmp = null
		Rule_Add("Rule_ReplaceNblMg")
	end
end


function Rule_ReplaceNblIon()
	if( SobGroup_Count(Player_GetShipsByType (1, "Kus_ioncannonfrigate_tank")) < nbl_ion_buffer ) then
		Rule_Remove("Rule_ReplaceNblIon")
		nbl_ion_tmp = SobGroup_CreateShip(Player_GetShipsByType (1, "Kus_carrier"), "Kus_ioncannonfrigate_tank") 
		Rule_Add("Rule_checkbuilt_NblIon")
	end
end
function Rule_checkbuilt_NblIon()
	if( nbl_ion_tmp == nil) or (SobGroup_IsDocked(nbl_ion_tmp) == 0 ) then
		Rule_Remove("Rule_checkbuilt_NblIon")
		nbl_ion_tmp = null
		Rule_Add("Rule_ReplaceNblIon")
	end
end


function Rule_ReplaceTaiInt()
	if( SobGroup_Count(Player_GetShipsByType (3, "Tai_interceptor")) < tai_int_buffer ) then
		Rule_Remove("Rule_ReplaceTaiInt")
		tai_int_tmp = SobGroup_CreateShip(Player_GetShipsByType (3, "Tai_carrier"), "Tai_interceptor") 
		Rule_Add("Rule_checkbuilt_TaiInt")
	end
end
function Rule_checkbuilt_TaiInt()
	if( tai_int_tmp == nil) or (SobGroup_IsDocked(tai_int_tmp) == 0 ) then
		Rule_Remove("Rule_checkbuilt_TaiInt")
		tai_int_tmp = null
		Rule_Add("Rule_ReplaceTaiInt")
	end
end

function Rule_ReplaceTaiIon()
	--print('counting tai ion...')
	if( SobGroup_Count(Player_GetShipsByType (3, "tai_ioncannonfrigate_tank")) < tai_ion_buffer ) then
		print('tai ion lost!')
		Rule_Remove("Rule_ReplaceTaiIon")
		tai_ion_tmp = SobGroup_CreateShip(Player_GetShipsByType (3, "Tai_carrier"), "Tai_ioncannonfrigate_tank") 
		Rule_Add("Rule_checkbuilt_TaiIon")
	end
end
function Rule_checkbuilt_TaiIon()
	if( tai_ion_tmp == nil) or (SobGroup_IsDocked(tai_ion_tmp) == 0 ) then
		Rule_Remove("Rule_checkbuilt_TaiIon")
		tai_ion_tmp = null
		Rule_Add("Rule_ReplaceTaiIon")
	end
end

-- if all objectives are complete.
function Rule_PlayerWins()
	--if ( Objective_GetState( obj_prim_beginharvesting_id ) == OS_Complete ) and
	--( Objective_GetState( obj_prim_buildfightersubsystem_id ) == OS_Complete ) and
	--( Objective_GetState( obj_prim_buildtwointerceptors_id ) == OS_Complete ) and
	--( Objective_GetState( obj_prim_researchplasmabomb_id ) == OS_Complete ) and
	--( Objective_GetState( obj_prim_buildtwobombers_id ) == OS_Complete ) and
	--( Objective_GetState( obj_prim_destroyvaygrgates_id ) == OS_Complete ) and
	if ( 0 == 1 ) then
	
		-- turn off invulnerable subsystem
		SobGroup_SetInvulnerabilityOfHardPoint( "Mothership", "HardpointProduction1", 0 )
		
	
		--Sound_MusicPlay( "data:sound/music/ambient/AMB_01" )
		Event_Start( "intelevent_mothershipjumps" )
		Rule_Add( "Rule_VaygrEnterHyperspace" )
		Rule_Remove( "Rule_PlayerWins" )
	end
end


-- END GAME: HYPERSPACE OUT

-- BEGIN GAME: LOSE CONDITIONS
-- Lose condition
function Rule_PlayerLose()
	
	if ( SobGroup_Empty( "Mothership" ) == 1 ) then
		
		Event_Start( "speechevent_playerloses" )
		
		Rule_Remove( "Rule_PlayerLose" )
		
	end
	
end
-- END GAME: LOSE CONDITIONS


-- EVENTS
-- create the events table
Events = {} -- the name of this table must always be Events - this is what the game looks for

-- this is the intro intelevent

Events.start = 
{
	{
		{ "Universe_AllowPlayerOrders( 1 )", "" },
		{ "Sound_EnableAllSpeech(1)","" },
		{ "Universe_EnableSkip(0)", "" },
		{"EventPlaying = 0",""},
		{ "Sound_ExitIntelEvent()","" },
	}
}

Events.intelevent_mothershipjumps  =
{
	{
	--	{ "Camera_AllowControl(0)",""},
	--	{ "Universe_AllowPlayerOrders( 0 )", "" },
	--	{ "Universe_EnableSkip(1)", "" },
		{ "Sound_EnterIntelEvent()","" },
		--{ "Sound_SetMuteActor('Fleet')", ""},
		{ "SobGroup_SetAutoLaunch('Mothership', ShipHoldStayDockedAlways)",""},		
		{ "SobGroup_SetTactics('Player_Ships0', PassiveTactics)", "" },
	--	{ "Sensors_EnableCameraZoom( 0 )", "" },
	--	{ "Sensors_Toggle( 0 )", "" },
		--{ "SetTOSettings( TO_NoATIAtAll )","" },
		{ "SobGroup_DeSelectAll()",""},
		HW2_Letterbox( 1 ),
		HW2_Wait( 1 ),
	},
	{				
		HW2_SubTitleEvent( Actor_FleetIntel, "$4961", 8 ), --tactical officer online
		HW2_Wait(2),
	},
	{
		HW2_SubTitleEvent( 26, "$40531", 4 ), --tactical officer online
	},	
	
	{
		HW2_Wait( 2 ),
	},
	{
		--{ "Sound_ExitIntelEvent()","" },
		--{ "Universe_EnableSkip( 0 )", "" },
		{ "Camera_AllowControl(1)",""},
		--{ "ClearTOSettings()",""},
		{ "setMissionComplete( 1 )","" },		
	},
}

Events.vaygrexithyperspace =
{
	{
		{ "SobGroup_ExitHyperSpace('Vgr_HyperspaceIn_6', 'vol_Vgr_HyperspaceExit_6' )", "" },
		HW2_Wait( 1.5 ),
	},
	{
		{ "SobGroup_ExitHyperSpace('Vgr_HyperspaceIn_2', 'vol_Vgr_HyperspaceExit_2' )", "" },
		HW2_Wait( 0.1 ),
	},
	{
		{ "SobGroup_ExitHyperSpace('Vgr_HyperspaceIn_5', 'vol_Vgr_HyperspaceExit_5' )", "" },
		HW2_Wait( 0.5 ),
	},
	{
		{ "SobGroup_ExitHyperSpace('Vgr_HyperspaceIn_1', 'vol_Vgr_HyperspaceExit_1' )", "" },
		HW2_Wait( 0.8 ),
	},
	{
		{ "SobGroup_ExitHyperSpace('Vgr_HyperspaceIn_3', 'vol_Vgr_HyperspaceExit_3' )", "" },
		HW2_Wait( 1 ),
	},
	{
		{ "SobGroup_ExitHyperSpace('Vgr_HyperspaceIn_4', 'vol_Vgr_HyperspaceExit_4' )", "" },
	},
}

-- this is an event to say the player has lost
Events.speechevent_playerloses =
{
	{
		{ "Sound_EnableAllSpeech(0)","" },
		{ "Universe_AllowPlayerOrders( 0 )", "" },
		HW2_Pause( 1 ),
		HW2_Letterbox( 1 ),
		HW2_Fade( 1 ),
		HW2_Wait(2),		
	},
	{
		HW2_LocationCardEvent( "Sorry, not finished yet!", 4 ),
	},
	{
		{ "Universe_AllowPlayerOrders( 1 )", "" },
		{ "Sound_EnableAllSpeech(1)","" },
		{ "setMissionComplete( 0 )","" },
	},
}