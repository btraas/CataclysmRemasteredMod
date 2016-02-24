--  SCAR SCRIPT  ------------------------------------------------------------------------------
--  Name: Mission01cata.lua
--  Purpose:  Cata Mission 1 Mission Script
----------------------------------------------------------------------------------------------------
-- import library files
dofilepath("data:scripts/SCAR/SCAR_Util.lua")
dofilepath("data:scripts/scar/restrict.lua")
--dofilepath("data:scripts/ThoughtDump.lua")

SOUND_PATH = "data:sound/speech/missions/mission01cata/"
Actor_TacticalOfficer = 26
Actor_KuunLan = 27
Actor_Kiith_Nabaal = 28

firelancefrigs = "Defend the Frigates"

pointer_incomingFighters_id = null;

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
	--SPRestrict()
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
	
	SobGroup_SetMadState(Player_GetShipsByType(0, "Hgn_smt_ms_sp"), "open")
	
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
	
	
	--HW2_SetResearchLevel( 1 )
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
	
--	print("hw1 Fleet command: "..HW1_FleetCommand)
	playEvent()
	
	Rule_Remove( "Rule_Init" )	
	
	--Rule_Add( "Rule_PlayerWins" )
	--Rule_Add( "Rule_PlayerLose" )	
	
	HW2_SetResearchLevel( 1 )
	
	-- Defaults given in SP campaign
	Player_GrantResearchOption(0, "SMTFighterDrive" )
	Player_GrantResearchOption(0, "SMTCapitalShipDrive" )
	
	Camera_SetLetterboxStateNoUI(0,0)	

	Rule_Add( "Rule_HasBuiltAcolytes" )
	Rule_Add( "Rule_BombersDestroyed" )

end

function playEvent()
	Event_Start( "intelevent_mothershipjumps" )
	--Event_Start( "intelevent_intro" )
	--Event_Start( "start" )
end

-- {{{ Rules to keep Hiigaran / Taiidan main battle going

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

-- }}} 

function Rule_HasBuiltAcolytes()
	if ( SobGroup_Count( Player_GetShipsByType(0, "Hgn_Smt_AcolyteE" ) ) >= 1 ) then
		Rule_Remove("Rule_HasBuiltAcolytes")


		SobGroup_Attack(3, "incoming_fighters", "Mothership")

		Event_Start( "incoming_fighters" )
	end
end

function Rule_BombersDestroyed()
	if ( SobGroup_Empty( "firelanceAttackers" ) == 1) then
		Rule_Remove("Rule_BombersDestroyed")
		
		Event_Start( "bombers_destroyed" )
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

Events.start = -- {{{
{
	{
		{ "Universe_AllowPlayerOrders( 1 )", "" },
		{ "Sound_EnableAllSpeech(1)","" },
		{ "Universe_EnableSkip(0)", "" },
		{"EventPlaying = 0",""},
		{ "Sound_ExitIntelEvent()","" },
	}
} -- }}}

Events.intelevent_mothershipjumps  = -- {{{
{
	{
		HW2_SubTitleEvent( Actor_KuunLan, "$1", 1),
		HW2_SubTitleEvent( Actor_KuunLan, "Auto-launch set", 1),
	},
	{
		{ "Sound_EnterIntelEvent()","" },
		
		HW2_Letterbox( 1 ),
		HW2_Wait( 1 ),
	},
	{				
		HW2_SubTitleEvent( Actor_TacticalOfficer, "$2", 1),
		HW2_SubTitleEvent( Actor_TacticalOfficer, "Tactical Officer Online. Full power to sensors, analyzing combat data now.", 6 ), --tactical officer online
		{ "Universe_EnableSkip(1)", "" },
		{"Camera_UsePanning(1)",""},
		
	},
	{
		HW2_SubTitleEvent( Actor_TacticalOfficer, "Command, we need to find out where we can do the most good.", 4 ),
	},
	{
		HW2_SubTitleEvent( Actor_KuunLan, "$3", 15 ), --understood tactical
		HW2_SubTitleEvent( Actor_KuunLan, "Understood, tactical. Attention carrier Veer-Rak!", 3 ),
	},
	{
		HW2_SubTitleEvent( Actor_KuunLan, "This is Kiith Somtaaw mining vessel Kuun-Lan.", 3 ),
	},
	{
		HW2_SubTitleEvent( Actor_KuunLan, "We have arrived in sector 112 and request targeting data.", 4 ),
	},	
	{
		HW2_Wait( 4 ),
	},
	{
		HW2_SubTitleEvent( Actor_Kiith_Nabaal, "$4", 5 ), --Good to have you...
		HW2_SubTitleEvent( Actor_Kiith_Nabaal, "Good to have you, Kuun-Lan.", 2 ),
	},
	{
		HW2_SubTitleEvent( Actor_Kiith_Nabaal, "We've got a strike fleet needing cover in sector 109. Can you assist?", 5 ),
	},
	{
		HW2_Wait( 1 ),
	},
	{
		HW2_SubTitleEvent( Actor_KuunLan, "$5", 5 ), -- we'll send everything
		HW2_SubTitleEvent( Actor_KuunLan, "We'll send everything we've got. But be advised, we are a mining vessel.", 3 ),
	},
	{
		HW2_SubTitleEvent( Actor_KuunLan, "It would be best if we do not have to move directly into the main battle.", 5 ), -- we'll send everything
	},
	{
		HW2_Wait( 1 ),
	},
	{
		{ "Sensors_Toggle( 1 )",""},
		HW2_Wait( 1 )
	},
	{
		{"ping_firelacnefrigates_id  = HW2_PingCreateWithLabel( firelancefrigs, 'firelanceIons')",""},
		--{"Ping_AddDescription(ping_shipyardcapture_id, 1, '$41416')",""},
		HW2_SubTitleEvent( Actor_Kiith_Nabaal, "$6", 6 ),
		HW2_SubTitleEvent( Actor_Kiith_Nabaal, "A strike wing of Firelance frigates are under attack from Taiidani Bombers at this position.", 6),
	},
	{
		HW2_SubTitleEvent( Actor_TacticalOfficer, "$7", 8 ),
		HW2_SubTitleEvent( Actor_TacticalOfficer, "Without fighter support, the frigates will be destroyed and that flank will collapse.", 5 ),
	},
	{
		HW2_SubTitleEvent( Actor_TacticalOfficer, "Send out a squad of acolyte fighters ASAP to assist the frigates.", 3 ),
	},
	{
		HW2_Wait( 1 ),
	},
	
	
	{
		{ "Sound_ExitIntelEvent()","" },
		HW2_Letterbox( 0 ),
		{ "Sensors_Toggle( 0 )",""},
		{ "Universe_EnableSkip( 0 )", "" },
		{ "Camera_AllowControl(1)",""},
		--{ "ClearTOSettings()",""},
	--	{ "setMissionComplete( 1 )","" },		
	},
} -- }}}

Events.incoming_fighters =  -- {{{
{
	{
		HW2_Wait( 15 ),
	},
	{
		{ "Sound_EnterIntelEvent()","" },
		{ "Camera_FocusSave()", "" },
		
		HW2_Letterbox( 1 ),
		HW2_Wait( 2 ),
	},
	{
		{"Sensors_Toggle( 1 )","" },
		{"pointer_incomingFighters_id = HW2_CreateEventPointerSobGroup('incoming_fighters')",""},
		{ "Camera_FocusSobGroup( 'incoming_fighters', 1, 1300, 1 )", "" },
	},
	{
		HW2_SubTitleEvent( Actor_TacticalOfficer, "$8", 7 ), -- we've picked up a squad of taiidan fighters
		HW2_SubTitleEvent( Actor_TacticalOfficer, "We've picked up a flight of Taiidan fighters incoming from the main battle.", 4 ),
		HW2_Wait( 4 ),
	},
	{
		HW2_SubTitleEvent( Actor_TacticalOfficer, "They're probably investigating our hyperspace signature.", 3 ),
		HW2_Wait( 2 ),
	},
	{
		{"EventPointer_Remove(pointer_incomingFighters_id)", ""},
		{"Sensors_Toggle( 0 )", ""},
	--	{ "Camera_FocusSobGroupWithBuffer('incoming_fighters', 100, 100, 2 )", "" },
		HW2_Wait( 3 ),
	},
	{
		HW2_Letterbox( 0 ),
		{"Sound_ExitIntelEvent()", ""},
		{"Camera_FocusRestore()", ""},
	},
} -- }}}

Events.bombers_destroyed = -- {{{
{
	{
		HW2_Wait( 4 ),
	},
	{
		HW2_Letterbox( 1 ),
		{ "Sound_EnterIntelEvent()","" },
		HW2_Wait( 2 ),
	},
	{
		HW2_SubTitleEvent( Actor_TacticalOfficer, "$9", 7 ), -- we've done it.
		HW2_SubTitleEvent( Actor_TacticalOfficer, "We've done it. By taking pressure off of Kiith Nabaal's flank force we've helped hold the line.", 6 ),
	},
	{
		HW2_Wait( 3 ),
	},
	{								-- add sobgroup ping later
		{"Sensors_Toggle( 1 )",""},
--        HW2_SubTitleEvent( Actor_Kiith_Nabaal, "$10", 8 ), -- Attention Kuun Lan
        HW2_SubTitleEvent( Actor_Kiith_Nabaal, "Attention Kuun-Lan. The first Imperialist attack wiped out our sensor grid.", 4 ),
		HW2_Wait( 4 ),
    },
    {
        HW2_SubTitleEvent( Actor_Kiith_Nabaal, "We need you to scout enemy positions with your Recon ships.", 3 ),
		HW2_Wait( 3 ),
    },
	{
		HW2_SubTitleEvent( Actor_Kiith_Nabaal, "We are planning a counterattack.", 2 ),
        HW2_Wait( 2 ),
	},
	{
		{ "Sound_ExitIntelEvent()","" },
        HW2_Letterbox( 0 ),
        { "Sensors_Toggle( 0 )",""},

	},


} -- }}}

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
