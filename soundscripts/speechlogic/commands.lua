--============================================================
-- lua functions for generating speech when a command is given
-- functions available from the game:
--	getFamily(shipName)				- return the DisplayFamily for shipName (displayFamily defined in data\scripts\FamilyList.lua) in upper case
--	playSpeech(speechName)				- speechName is the name of the all ships speech to play without path up to the _
--									  (so to play one of data/sound/speech/AllShips/CHATTER_CarrierOrMShipConstruction_1.mp3
--									   to data/sound/speech/AllShips/CHATTER_CarrierOrMShipConstruction_1.mp3 you'd use
--									   "CHATTER_CarrierOrMShipConstruction")
--	playSpeechFreq(speechName, frequency)	- speechName - same as above
--									- frequency is the minimum amount of time, in seconds, before this event will be played again.
--============================================================

-- move command issued to a ship with the given name

-- DEFINED IN TABLE (see Chatter.lua)
--~ function CommandMoveGiven(shipname, targetname)
--~ 	playSpeech( "COMMAND_Move" )
--~ end




-- DEFINED IN TABLE (see Chatter.lua)
--~ function CommandIdleGiven(shipname, targetname)
--~ 	playSpeech( "COMMAND_MoveCancelled" )
--~ end


-- Somtaaw - number of sounds per command per ship


shipFiles = {}
					
shipFiles["shared"] = {}
--------------------------------------------------------
shipFiles["shared"]["sameas"] = "" 							-- Ship_Name to load if this is not unique		
shipFiles["shared"]["folder"] = "shipsounds/shared/"		-- Folder to load ship sounds from

-- The # of sounds for this command. If 0 or not set, loads from shared folder. 
-- These are ignored if 'sameas' (above) isn't blank
shipFiles["shared"]["COMMAND_MOVE"] = 2						-- 								-- Working
shipFiles["shared"]["COMMAND_WAYPOINT"] = 1					-- 								-- Working 
shipFiles["shared"]["COMMAND_MOVETOSOB"] = 1				-- Move to specific group 		-- not tested
shipFiles["shared"]["COMMAND_CANCELLED"] = 1	--nw		-- 								-- Not working
shipFiles["shared"]["COMMAND_ATTACK_CANCELLED"] = 1			-- 								-- Working
shipFiles["shared"]["COMMAND_MOVE_CANCELLED"] = 1			-- 								-- Working
shipFiles["shared"]["COMMAND_RESOURCESALVAGE"] = 1			-- Debris/container				-- working
shipFiles["shared"]["COMMAND_RESOURCECOLLECTORHARVEST"] = 1	-- Asteroid harvest				-- working
shipFiles["shared"]["COMMAND_CAPTURE"] = 1					-- Marine/infiltrate/worker 	-- working
shipFiles["shared"]["COMMAND_ATTACK"] = 4					-- 								-- Working
shipFiles["shared"]["COMMAND_HS"] = 1						-- Entering hyperspace 			-- working
shipFiles["shared"]["COMMAND_HS_INHIBITOR_DETECTED"] = 1 	-- interrupted by inhibitor 	-- not tested
shipFiles["shared"]["COMMAND_HS_INTERRUPTED"] = 1 			-- Interrupted					-- not tested
shipFiles["shared"]["COMMAND_HS_GATE"] = 1 					-- entering HS gate				-- not tested
shipFiles["shared"]["COMMAND_HS_INSUFFICIENT"] = 1 			-- Not enough cash				-- not tested
shipFiles["shared"]["COMMAND_COMBATMAN"] = 1				-- Not sure what this is		-- working
shipFiles["shared"]["COMMAND_MOVEATTACK"] = 1				--								-- working
shipFiles["shared"]["COMMAND_LAUNCH"] = 1					-- Per launching ship			-- working
shipFiles["shared"]["COMMAND_GUARD"] = 1					--								-- working
shipFiles["shared"]["COMMAND_DOCK"] = 1						--								-- working
--shipFiles["shared"]["COMMAND_PARADE"] = 1					--			REMOVED			
shipFiles["shared"]["COMMAND_RETIRE"] = 1					--								-- working
shipFiles["shared"]["COMMAND_AGGRESSIVE"] = 1				--								-- working							
shipFiles["shared"]["COMMAND_DEFENSIVE"] = 1				--								-- not tested
shipFiles["shared"]["COMMAND_PASSIVE"] = 1					--								-- working
shipFiles["shared"]["COMMAND_RANGESHORT"] = 1				-- Don't know what these are  	-- not tested
shipFiles["shared"]["COMMAND_RANGEMED"] = 1					--								-- not tested
shipFiles["shared"]["COMMAND_RANGELONG"] = 1				--								-- not tested
shipFiles["shared"]["COMMAND_RANGEFORCE"] = 1				--								-- not tested
shipFiles["shared"]["COMMAND_REPAIR"] = 1					--								-- not working
shipFiles["shared"]["COMMAND_SELECTED"] = 2					--								-- working

--NEW: Apr 18,2015
shipFiles["shared"]["COMMAND_BUILD"] = 1					-- by parent ship				-- working
shipFiles["shared"]["COMMAND_BUILD_PAUSED"] = 1												-- not tested
shipFiles["shared"]["COMMAND_FOLLOWING"] = 1												-- not tested
shipFiles["shared"]["COMMAND_STRIKEGROUP_FORM_RESPONSE"] = 1								-- not tested
shipFiles["shared"]["COMMAND_STRIKEGROUP_FORMATIONSET"] = 1									-- not tested
shipFiles["shared"]["COMMAND_STRIKEGROUP_DISBAND"] = 1										-- not tested
shipFiles["shared"]["COMMAND_DEFENSEFIELDON"] = 1											-- not tested
shipFiles["shared"]["COMMAND_DEFENSEFIELDOFF"] = 1											-- not tested
shipFiles["shared"]["COMMAND_DEFENCEFIELDOUTOFPOWER"] = 1									-- not tested
shipFiles["shared"]["COMMAND_HS_EXIT"] = 1													-- not working
shipFiles["shared"]["COMMAND_HS_GATEFORMED"] = 1											-- not tested
shipFiles["shared"]["COMMAND_ATTACK_FRIENDLY"] = 1			-- not tested

--NEW: FEB 2016
shipFiles["shared"]["COMMAND_CONSTRUCTION_COMPLETED"] = 1

-- The following sound files will be loaded, but not specific to a certain ship (leave in the KuunLan folder)
--"COMMAND_AllianceRequested_1"
--"COMMAND_AllianceFormed_1"
--"COMMAND_AllianceBroken_1"
--"COMMAND_RUs_Transferred"
--"COMMAND_Ships_Transferred"
--"COMMAND_SelectGroup" (add 01, 02 -> 10 to the end for that group number)
--"COMMAND_GROUP_Assigned_" (add 01, 02 -> 10 to the end for that group number)
--"STATUS_HotkeyGroup_Added_0"..groupNumber.."_2" or "STATUS_HotkeyGroup_Added_20_2" for group 10 for some reason...
							
							
							
							
shipFiles["Hgn_Smt_ms"] = {}
-----------------------------------------------------		-- Specifics for this ship are here.
shipFiles["Hgn_Smt_ms"]["sameas"] = ""						-- Either shared, another ship name, or blank
shipFiles["Hgn_Smt_ms"]["folder"] = ""
shipFiles["Hgn_Smt_ms"]["COMMAND_MOVE"] = 1						
shipFiles["Hgn_Smt_ms"]["COMMAND_WAYPOINT"] = 1
shipFiles["Hgn_Smt_ms"]["COMMAND_MOVETOSOB"] = 1
shipFiles["Hgn_Smt_ms"]["COMMAND_CANCELLED"] = 1
shipFiles["Hgn_Smt_ms"]["COMMAND_ATTACK_CANCELLED"] = 1
shipFiles["Hgn_Smt_ms"]["COMMAND_MOVE_CANCELLED"] = 1
shipFiles["Hgn_Smt_ms"]["COMMAND_ATTACK"] = 4
shipFiles["Hgn_Smt_ms"]["COMMAND_HS"] = 4
shipFiles["Hgn_Smt_ms"]["COMMAND_HSexit"] = 4
shipFiles["Hgn_Smt_ms"]["COMMAND_HS_INTERRUPTED"] = 1 			-- Interrupted
shipFiles["Hgn_Smt_ms"]["COMMAND_COMBATMAN"] = 1				-- Not sure what this is
shipFiles["Hgn_Smt_ms"]["COMMAND_MOVEATTACK"] = 1
shipFiles["Hgn_Smt_ms"]["COMMAND_SELECTED"] = 5
shipFiles["Hgn_Smt_ms"]["COMMAND_BUILD"] = 1
shipFiles["Hgn_Smt_ms"]["COMMAND_BUILD_CANCELLED"] = 1

shipFiles["Hgn_smt_ms"] = {};
shipFiles["Hgn_smt_ms"]["sameas"] = "Hgn_Smt_ms";				-- catch-all for startingfleets


shipFiles["Hgn_Smt_Carrier"] = {}
-----------------------------------------------------		-- Specifics for this ship are here.
shipFiles["Hgn_Smt_Carrier"]["sameas"] = ""						-- Either shared, another ship name, or blank
shipFiles["Hgn_Smt_Carrier"]["folder"] = "shipsounds/hgn_smt_carrier/"
shipFiles["Hgn_Smt_Carrier"]["COMMAND_MOVE"] = 4
shipFiles["Hgn_Smt_Carrier"]["COMMAND_WAYPOINT"] = 1
shipFiles["Hgn_Smt_Carrier"]["COMMAND_MOVETOSOB"] = 1
shipFiles["Hgn_Smt_Carrier"]["COMMAND_CANCELLED"] = 1
shipFiles["Hgn_Smt_Carrier"]["COMMAND_ATTACK_CANCELLED"] = 1
shipFiles["Hgn_Smt_Carrier"]["COMMAND_MOVE_CANCELLED"] = 1
shipFiles["Hgn_Smt_Carrier"]["COMMAND_ATTACK"] = 1
shipFiles["Hgn_Smt_Carrier"]["COMMAND_HS"] = 1
shipFiles["Hgn_Smt_Carrier"]["COMMAND_HS_INTERRUPTED"] = 1 			-- Interrupted
shipFiles["Hgn_Smt_Carrier"]["COMMAND_COMBATMAN"] = 1				-- Not sure what this is
shipFiles["Hgn_Smt_Carrier"]["COMMAND_MOVEATTACK"] = 1
shipFiles["Hgn_Smt_Carrier"]["COMMAND_LAUNCH"] = 1
shipFiles["Hgn_Smt_Carrier"]["COMMAND_SELECTED"] = 1

shipFiles["Hgn_smt_carrier"] = {};
shipFiles["Hgn_smt_carrier"]["sameas"] = "Hgn_Smt_Carrier";


shipFiles["Hgn_Smt_Clee_San"] = {}
-----------------------------------------------------		-- Specifics for this ship are here.
shipFiles["Hgn_Smt_Clee_San"]["sameas"] = ""						-- Either shared, another ship name, or blank
shipFiles["Hgn_Smt_Clee_San"]["folder"] = "shipsounds/hgn_smt_Clee_San/"
shipFiles["Hgn_Smt_Clee_San"]["COMMAND_MOVE"] = 1
shipFiles["Hgn_Smt_Clee_San"]["COMMAND_WAYPOINT"] = 1
shipFiles["Hgn_Smt_Clee_San"]["COMMAND_MOVETOSOB"] = 1
shipFiles["Hgn_Smt_Clee_San"]["COMMAND_CANCELLED"] = 1
shipFiles["Hgn_Smt_Clee_San"]["COMMAND_MOVE_CANCELLED"] = 1
shipFiles["Hgn_Smt_Clee_San"]["COMMAND_HS"] = 1
shipFiles["Hgn_Smt_Clee_San"]["COMMAND_HS_INTERRUPTED"] = 1 			-- Interrupted
shipFiles["Hgn_Smt_Clee_San"]["COMMAND_SELECTED"] = 1

shipFiles["Hgn_Smt_Processor"] = {}
-----------------------------------------------------		-- Specifics for this ship are here.
shipFiles["Hgn_Smt_Processor"]["sameas"] = ""						-- Either shared, another ship name, or blank
shipFiles["Hgn_Smt_Processor"]["folder"] = "shipsounds/hgn_smt_Processor/"
shipFiles["Hgn_Smt_Processor"]["COMMAND_MOVE"] = 3
shipFiles["Hgn_Smt_Processor"]["COMMAND_WAYPOINT"] = 1
shipFiles["Hgn_Smt_Processor"]["COMMAND_MOVETOSOB"] = 1
shipFiles["Hgn_Smt_Processor"]["COMMAND_CANCELLED"] = 1
shipFiles["Hgn_Smt_Processor"]["COMMAND_MOVE_CANCELLED"] = 3
shipFiles["Hgn_Smt_Processor"]["COMMAND_HS"] = 1
shipFiles["Hgn_Smt_Processor"]["COMMAND_HS_INTERRUPTED"] = 1 			-- Interrupted
shipFiles["Hgn_Smt_Processor"]["COMMAND_SELECTED"] = 2


shipFiles["Hgn_Smt_Worker"] = {}
-----------------------------------------------------		-- Specifics for this ship are here.
shipFiles["Hgn_Smt_Worker"]["sameas"] = ""						-- Either shared, another ship name, or blank
shipFiles["Hgn_Smt_Worker"]["folder"] = "shipsounds/hgn_smt_Worker/"
shipFiles["Hgn_Smt_Worker"]["COMMAND_MOVE"] = 3
shipFiles["Hgn_Smt_Worker"]["COMMAND_WAYPOINT"] = 1
shipFiles["Hgn_Smt_Worker"]["COMMAND_MOVETOSOB"] = 1
shipFiles["Hgn_Smt_Worker"]["COMMAND_CANCELLED"] = 1
shipFiles["Hgn_Smt_Worker"]["COMMAND_MOVE_CANCELLED"] = 2
shipFiles["Hgn_Smt_Worker"]["COMMAND_HS"] = 1
shipFiles["Hgn_Smt_Worker"]["COMMAND_HS_INTERRUPTED"] = 1 			-- Interrupted
shipFiles["Hgn_Smt_Worker"]["COMMAND_SELECTED"] = 2
shipFiles["Hgn_Smt_Worker"]["COMMAND_RESOURCESALVAGE"] = 1			-- Debris/container
shipFiles["Hgn_Smt_Worker"]["COMMAND_RESOURCECOLLECTORHARVEST"] = 3	-- Asteroid harvest
shipFiles["Hgn_Smt_Worker"]["COMMAND_CAPTURE"] = 3					-- Marine/infiltrate/worker
shipFiles["Hgn_Smt_Worker"]["COMMAND_REPAIR"] = 1
shipFiles["Hgn_Smt_Worker"]["COMMAND_DOCK"] = 2

shipFiles["Hgn_smt_worker"] = {};
shipFiles["Hgn_smt_worker"]["sameas"] = "Hgn_Smt_Worker";


shipFiles["Hgn_Smt_Seraph"] = {}
-----------------------------------------------------		-- Specifics for this ship are here.
shipFiles["Hgn_Smt_Seraph"]["sameas"] = "Hgn_Smt_dreadnought"						-- Either shared, another ship name, or blank


shipFiles["Hgn_Smt_dreadnought"] = {}
-----------------------------------------------------		-- Specifics for this ship are here.
shipFiles["Hgn_Smt_dreadnought"]["sameas"] = ""						-- Either shared, another ship name, or blank
shipFiles["Hgn_Smt_dreadnought"]["folder"] = "shipsounds/hgn_smt_dreadnought/"
shipFiles["Hgn_Smt_dreadnought"]["COMMAND_MOVE"] = 4
shipFiles["Hgn_Smt_dreadnought"]["COMMAND_WAYPOINT"] = 1
shipFiles["Hgn_Smt_dreadnought"]["COMMAND_MOVETOSOB"] = 1
shipFiles["Hgn_Smt_dreadnought"]["COMMAND_CANCELLED"] = 1
shipFiles["Hgn_Smt_dreadnought"]["COMMAND_MOVE_CANCELLED"] = 1
shipFiles["Hgn_Smt_dreadnought"]["COMMAND_ATTACK_CANCELLED"] = 1
shipFiles["Hgn_Smt_dreadnought"]["COMMAND_COMBATMAN"] = 1				-- Not sure what this is
shipFiles["Hgn_Smt_dreadnought"]["COMMAND_MOVEATTACK"] = 1
shipFiles["Hgn_Smt_dreadnought"]["COMMAND_ATTACK"] = 3
shipFiles["Hgn_Smt_dreadnought"]["COMMAND_HS"] = 1
shipFiles["Hgn_Smt_dreadnought"]["COMMAND_HS_INTERRUPTED"] = 1 			-- Interrupted
shipFiles["Hgn_Smt_dreadnought"]["COMMAND_SELECTED"] = 1


shipFiles["Hgn_Smt_destroyer"] = {}
-----------------------------------------------------		-- Specifics for this ship are here.
shipFiles["Hgn_Smt_destroyer"]["sameas"] = ""						-- Either shared, another ship name, or blank
shipFiles["Hgn_Smt_destroyer"]["folder"] = "shipsounds/hgn_smt_destroyer/"
shipFiles["Hgn_Smt_destroyer"]["COMMAND_MOVE"] = 5
shipFiles["Hgn_Smt_destroyer"]["COMMAND_WAYPOINT"] = 1
shipFiles["Hgn_Smt_destroyer"]["COMMAND_MOVETOSOB"] = 1
shipFiles["Hgn_Smt_destroyer"]["COMMAND_CANCELLED"] = 1
shipFiles["Hgn_Smt_destroyer"]["COMMAND_MOVE_CANCELLED"] = 3
shipFiles["Hgn_Smt_destroyer"]["COMMAND_ATTACK_CANCELLED"] = 1
shipFiles["Hgn_Smt_destroyer"]["COMMAND_COMBATMAN"] = 1				-- Not sure what this is
shipFiles["Hgn_Smt_destroyer"]["COMMAND_MOVEATTACK"] = 1
shipFiles["Hgn_Smt_destroyer"]["COMMAND_ATTACK"] = 4
shipFiles["Hgn_Smt_destroyer"]["COMMAND_HS"] = 1
shipFiles["Hgn_Smt_destroyer"]["COMMAND_HS_INTERRUPTED"] = 1 			-- Interrupted
shipFiles["Hgn_Smt_destroyer"]["COMMAND_SELECTED"] = 3


shipFiles["Hgn_Smt_multibeamfrigate"] = {}
-----------------------------------------------------		-- Specifics for this ship are here.
shipFiles["Hgn_Smt_multibeamfrigate"]["sameas"] = ""						-- Either shared, another ship name, or blank
shipFiles["Hgn_Smt_multibeamfrigate"]["folder"] = "shipsounds/hgn_smt_multibeamfrigate/"
shipFiles["Hgn_Smt_multibeamfrigate"]["COMMAND_MOVE"] = 2
shipFiles["Hgn_Smt_multibeamfrigate"]["COMMAND_WAYPOINT"] = 1
shipFiles["Hgn_Smt_multibeamfrigate"]["COMMAND_MOVETOSOB"] = 1
shipFiles["Hgn_Smt_multibeamfrigate"]["COMMAND_CANCELLED"] = 1
shipFiles["Hgn_Smt_multibeamfrigate"]["COMMAND_MOVE_CANCELLED"] = 1
shipFiles["Hgn_Smt_multibeamfrigate"]["COMMAND_ATTACK_CANCELLED"] = 1
shipFiles["Hgn_Smt_multibeamfrigate"]["COMMAND_COMBATMAN"] = 1				-- Not sure what this is
shipFiles["Hgn_Smt_multibeamfrigate"]["COMMAND_MOVEATTACK"] = 1
shipFiles["Hgn_Smt_multibeamfrigate"]["COMMAND_ATTACK"] = 1
shipFiles["Hgn_Smt_multibeamfrigate"]["COMMAND_HS"] = 1
shipFiles["Hgn_Smt_multibeamfrigate"]["COMMAND_HS_INTERRUPTED"] = 1 			-- Interrupted
shipFiles["Hgn_Smt_multibeamfrigate"]["COMMAND_SELECTED"] = 2
shipFiles["Hgn_Smt_multibeamfrigate"]["COMMAND_DOCK"] = 3


shipFiles["Hgn_Smt_RammingFrigate"] = {}
-----------------------------------------------------		-- Specifics for this ship are here.
shipFiles["Hgn_Smt_RammingFrigate"]["sameas"] = ""						-- Either shared, another ship name, or blank
shipFiles["Hgn_Smt_RammingFrigate"]["folder"] = "shipsounds/hgn_smt_rammingfrigate/"
shipFiles["Hgn_Smt_RammingFrigate"]["COMMAND_MOVE"] = 3
shipFiles["Hgn_Smt_RammingFrigate"]["COMMAND_WAYPOINT"] = 1
shipFiles["Hgn_Smt_RammingFrigate"]["COMMAND_MOVETOSOB"] = 1
shipFiles["Hgn_Smt_RammingFrigate"]["COMMAND_CANCELLED"] = 1
shipFiles["Hgn_Smt_RammingFrigate"]["COMMAND_MOVE_CANCELLED"] = 1
shipFiles["Hgn_Smt_RammingFrigate"]["COMMAND_ATTACK_CANCELLED"] = 1
shipFiles["Hgn_Smt_RammingFrigate"]["COMMAND_COMBATMAN"] = 1				-- Not sure what this is
shipFiles["Hgn_Smt_RammingFrigate"]["COMMAND_MOVEATTACK"] = 1
shipFiles["Hgn_Smt_RammingFrigate"]["COMMAND_ATTACK"] = 2
shipFiles["Hgn_Smt_RammingFrigate"]["COMMAND_HS"] = 1
shipFiles["Hgn_Smt_RammingFrigate"]["COMMAND_HS_INTERRUPTED"] = 1 			-- Interrupted
shipFiles["Hgn_Smt_RammingFrigate"]["COMMAND_SELECTED"] = 4
shipFiles["Hgn_Smt_RammingFrigate"]["COMMAND_DOCK"] = 3


shipFiles["Hgn_Smt_hivefrigate"] = {}
-----------------------------------------------------		-- Specifics for this ship are here.
shipFiles["Hgn_Smt_hivefrigate"]["sameas"] = ""	
shipFiles["Hgn_Smt_hivefrigate"]["folder"] = "shipsounds/hgn_smt_hivefrigate/"
shipFiles["Hgn_Smt_hivefrigate"]["COMMAND_MOVE"] = 2
shipFiles["Hgn_Smt_hivefrigate"]["COMMAND_WAYPOINT"] = 1
shipFiles["Hgn_Smt_hivefrigate"]["COMMAND_MOVETOSOB"] = 1
shipFiles["Hgn_Smt_hivefrigate"]["COMMAND_CANCELLED"] = 1
shipFiles["Hgn_Smt_hivefrigate"]["COMMAND_MOVE_CANCELLED"] = 1
shipFiles["Hgn_Smt_hivefrigate"]["COMMAND_ATTACK_CANCELLED"] = 1
shipFiles["Hgn_Smt_hivefrigate"]["COMMAND_COMBATMAN"] = 1				-- Not sure what this is
shipFiles["Hgn_Smt_hivefrigate"]["COMMAND_MOVEATTACK"] = 1
shipFiles["Hgn_Smt_hivefrigate"]["COMMAND_ATTACK"] = 3
shipFiles["Hgn_Smt_hivefrigate"]["COMMAND_HS"] = 1
shipFiles["Hgn_Smt_hivefrigate"]["COMMAND_HS_INTERRUPTED"] = 1 			-- Interrupted
shipFiles["Hgn_Smt_hivefrigate"]["COMMAND_SELECTED"] = 3
shipFiles["Hgn_Smt_hivefrigate"]["COMMAND_DOCK"] = 1


shipFiles["Hgn_Smt_ACVE"] = {}
-----------------------------------------------------		-- Specifics for this ship are here.
shipFiles["Hgn_Smt_ACVE"]["sameas"] = "Hgn_Smt_Acolyte"						-- Either shared, another ship name, or blank


shipFiles["Hgn_Smt_ACV"] = {}
-----------------------------------------------------		-- Specifics for this ship are here.
shipFiles["Hgn_Smt_ACV"]["sameas"] = "Hgn_Smt_Acolyte"						-- Either shared, another ship name, or blank


shipFiles["Hgn_Smt_SuperAcolyte"] = {}
-----------------------------------------------------		-- Specifics for this ship are here.
shipFiles["Hgn_Smt_SuperAcolyte"]["sameas"] = "Hgn_Smt_Acolyte"						-- Either shared, another ship name, or blank


shipFiles["Hgn_Smt_AcolyteE"] = {}
-----------------------------------------------------		-- Specifics for this ship are here.
shipFiles["Hgn_Smt_AcolyteE"]["sameas"] = "Hgn_Smt_Acolyte"						-- Either shared, another ship name, or blank


shipFiles["Hgn_Smt_Acolyte"] = {}
-----------------------------------------------------		-- Specifics for this ship are here.
shipFiles["Hgn_Smt_Acolyte"]["sameas"] = ""						-- Either shared, another ship name, or blank
shipFiles["Hgn_Smt_Acolyte"]["folder"] = "shipsounds/hgn_smt_Acolyte/"
shipFiles["Hgn_Smt_Acolyte"]["COMMAND_MOVE"] = 2
shipFiles["Hgn_Smt_Acolyte"]["COMMAND_WAYPOINT"] = 1
shipFiles["Hgn_Smt_Acolyte"]["COMMAND_MOVETOSOB"] = 1
shipFiles["Hgn_Smt_Acolyte"]["COMMAND_CANCELLED"] = 1
shipFiles["Hgn_Smt_Acolyte"]["COMMAND_MOVE_CANCELLED"] = 1
shipFiles["Hgn_Smt_Acolyte"]["COMMAND_ATTACK_CANCELLED"] = 1
shipFiles["Hgn_Smt_Acolyte"]["COMMAND_COMBATMAN"] = 1				-- Not sure what this is
shipFiles["Hgn_Smt_Acolyte"]["COMMAND_MOVEATTACK"] = 1
shipFiles["Hgn_Smt_Acolyte"]["COMMAND_ATTACK"] = 3
shipFiles["Hgn_Smt_Acolyte"]["COMMAND_HS"] = 1
shipFiles["Hgn_Smt_Acolyte"]["COMMAND_HS_INTERRUPTED"] = 1 			-- Interrupted
shipFiles["Hgn_Smt_Acolyte"]["COMMAND_SELECTED"] = 2
shipFiles["Hgn_Smt_Acolyte"]["COMMAND_DOCK"] = 3


shipFiles["Hgn_Smt_Sentinel"] = {}
-----------------------------------------------------		-- Specifics for this ship are here.
shipFiles["Hgn_Smt_Sentinel"]["sameas"] = ""						-- Either shared, another ship name, or blank
shipFiles["Hgn_Smt_Sentinel"]["folder"] = "shipsounds/hgn_smt_Sentinel/"
shipFiles["Hgn_Smt_Sentinel"]["COMMAND_MOVE"] = 2
shipFiles["Hgn_Smt_Sentinel"]["COMMAND_WAYPOINT"] = 1
shipFiles["Hgn_Smt_Sentinel"]["COMMAND_MOVETOSOB"] = 1
shipFiles["Hgn_Smt_Sentinel"]["COMMAND_CANCELLED"] = 1
shipFiles["Hgn_Smt_Sentinel"]["COMMAND_MOVE_CANCELLED"] = 1
shipFiles["Hgn_Smt_Sentinel"]["COMMAND_ATTACK_CANCELLED"] = 1
shipFiles["Hgn_Smt_Sentinel"]["COMMAND_COMBATMAN"] = 1				-- Not sure what this is
shipFiles["Hgn_Smt_Sentinel"]["COMMAND_MOVEATTACK"] = 1
shipFiles["Hgn_Smt_Sentinel"]["COMMAND_ATTACK"] = 1
shipFiles["Hgn_Smt_Sentinel"]["COMMAND_HS"] = 1
shipFiles["Hgn_Smt_Sentinel"]["COMMAND_HS_INTERRUPTED"] = 1 			-- Interrupted
shipFiles["Hgn_Smt_Sentinel"]["COMMAND_SELECTED"] = 2
shipFiles["Hgn_Smt_Sentinel"]["COMMAND_DOCK"] = 1


shipFiles["Hgn_Smt_Mimic"] = {}
-----------------------------------------------------		-- Specifics for this ship are here.
shipFiles["Hgn_Smt_Mimic"]["sameas"] = ""						-- Either shared, another ship name, or blank
shipFiles["Hgn_Smt_Mimic"]["folder"] = "shipsounds/hgn_smt_Mimic/"
shipFiles["Hgn_Smt_Mimic"]["COMMAND_MOVE"] = 3
shipFiles["Hgn_Smt_Mimic"]["COMMAND_WAYPOINT"] = 1
shipFiles["Hgn_Smt_Mimic"]["COMMAND_MOVETOSOB"] = 1
shipFiles["Hgn_Smt_Mimic"]["COMMAND_CANCELLED"] = 1
shipFiles["Hgn_Smt_Mimic"]["COMMAND_MOVE_CANCELLED"] = 1
shipFiles["Hgn_Smt_Mimic"]["COMMAND_ATTACK_CANCELLED"] = 1
shipFiles["Hgn_Smt_Mimic"]["COMMAND_COMBATMAN"] = 1				-- Not sure what this is
shipFiles["Hgn_Smt_Mimic"]["COMMAND_MOVEATTACK"] = 1
shipFiles["Hgn_Smt_Mimic"]["COMMAND_ATTACK"] = 2
shipFiles["Hgn_Smt_Mimic"]["COMMAND_HS"] = 1
shipFiles["Hgn_Smt_Mimic"]["COMMAND_HS_INTERRUPTED"] = 1 			-- Interrupted
shipFiles["Hgn_Smt_Mimic"]["COMMAND_SELECTED"] = 4
shipFiles["Hgn_Smt_Mimic"]["COMMAND_DOCK"] = 2

shipFiles["Hgn_Smt_scout"] = {}
-----------------------------------------------------		-- Specifics for this ship are here.
shipFiles["Hgn_Smt_scout"]["sameas"] = ""						-- Either shared, another ship name, or blank
shipFiles["Hgn_Smt_scout"]["folder"] = "shipsounds/hgn_smt_scout/"
shipFiles["Hgn_Smt_scout"]["COMMAND_MOVE"] = 3
shipFiles["Hgn_Smt_scout"]["COMMAND_WAYPOINT"] = 1
shipFiles["Hgn_Smt_scout"]["COMMAND_MOVETOSOB"] = 1
shipFiles["Hgn_Smt_scout"]["COMMAND_CANCELLED"] = 1
shipFiles["Hgn_Smt_scout"]["COMMAND_MOVE_CANCELLED"] = 1
shipFiles["Hgn_Smt_scout"]["COMMAND_ATTACK_CANCELLED"] = 1
shipFiles["Hgn_Smt_scout"]["COMMAND_COMBATMAN"] = 1				-- Not sure what this is
shipFiles["Hgn_Smt_scout"]["COMMAND_MOVEATTACK"] = 1
shipFiles["Hgn_Smt_scout"]["COMMAND_ATTACK"] = 3
shipFiles["Hgn_Smt_scout"]["COMMAND_HS"] = 1
shipFiles["Hgn_Smt_scout"]["COMMAND_HS_INTERRUPTED"] = 1 			-- Interrupted
shipFiles["Hgn_Smt_scout"]["COMMAND_SELECTED"] = 2
shipFiles["Hgn_Smt_scout"]["COMMAND_DOCK"] = 2


--DefensefieldStatus types
DEF_on = 0
DEF_off = 1
DEF_out = 2
DEF_low = 3

-- ShipTypes (return values)
Resource = 2
Fighter = 3
Corvette = 4
Support = 5
MISC = 6
Capital = 7
Frigate = 8
SubSystem = 9
Platform = 10
Megalith = 11
Flagship = 12

-- Number of Actors per Actor type
NumAllPilots = 5
NumCapPilots = 4
NumFighterPilots = 3
NumInfiltratorPilots = 2
NumMarinePilots = 2
NumSupportPilots = 3

-- Text for Actor folder names
NameAllPilot = "All_"
NameCapPilot = "Cap_"
NameFighterPilot = "Fighter_"
NameInfiltratorPilot = "Infiltrator_"
NameMarinePilot = "Marine_"
NameSupportPilot = "Support_"
NameFleetCommand = "Fleet"
NameMakaan = "Makaan"
NameEmperor = "Emperor"
NameKuunLan = "KuunLan"
NameBeast = "Beast"

-- timeout values for speech events
Frequency_Command = 0.5
Frequency_Status = 2.0
Frequency_Chatter = 5.0

function raceHelper()
	
	if (currentRace == Vaygr) then
		return NameMakaan
	elseif (currentRace == Taiidan) then
		return NameEmperor
	elseif (currentRace == Somtaaw) then
		return NameKuunLan
	elseif (currentRace == Beast) then
		return NameBeast
	else
		return NameFleetCommand
	end
end

-- Race IDs
--Hiigaran = 11
Hiigaran = 1
Vaygr = 2
Taiidan = 6
Somtaaw = 11 --used to be 10, now 11?
Beast = 10 -- used to be 12, now 10?

function playSomtaawCommand(cmd, shipname, targetname)
print("******** COMMAND: "..cmd.." RACE: "..currentRace.." SHIP: "..shipname)
	if(currentRace ~= Somtaaw and currentRace ~= Beast) then
		return 0
	end

	
	ship = shipname
	if(shipFiles[shipname]) then		
		if(shipFiles[shipname][cmd] and shipFiles[shipname][cmd] > 0) then -- If command is set for this ship
			shipname = shipname
		else
			if(shipFiles[shipname]['sameas'] and shipFiles[shipname]['sameas'] ~= '') then -- If sameas is set
				shipname = shipFiles[shipname]['sameas']
			end
		end
	else
		shipname = 'shared'
	end
	if(shipFiles[shipname][cmd] and shipFiles[shipname][cmd] > 0) then	-- If ship or sameas has command set
		shipname = shipname
	else
		shipname = 'shared'
	end
	
	path = shipFiles[shipname]['folder'] .. cmd
	files = shipFiles[shipname][cmd]
		
	rand = random(1, files)
	COMMAND = path .. "_" .. rand
	print('playing speech: '..raceHelper() .. "/" .. COMMAND..' for ship: '..ship)
    playSpeechActor(COMMAND, raceHelper(), 0, Frequency_Command )
	return 1
end


function getType(shipnm)

	--first takes care of these special cases for which we don't want to use the AttackFamily
	
	if (shipnm == 'Hgn_MotherShip' or shipnm == 'Vgr_MotherShip') then
		return Flagship
	end
	
	shipnmU = strupper(shipnm)

	if ( (strfind (shipnmU, "PLATFORM") ~= nil) or (strfind (shipnmU, "TURRET") ~= nil))  then
		return Platform
	end
	
	if (strfind (shipnmU, "DEBRIS") ~= nil) then
		return MISC
	end
	
	if (strfind (shipnmU, "KPR_") ~= nil) then
		return MISC
	end
	familyName = ""..getFamily(shipnm)
	
	
	
	--print("*** GET TYPE for SHIP: "..shipnm.. " with FAMILY: "..familyName)
	
	if(familyName == "CAPITAL" or familyName == "SUPERCAP" or familyName =="SMALLCAPITALSHIP" or familyName =="BIGCAPITALSHIP") then
		return Capital
	end
	
	if (familyName == "FRIGATE" or familyName=="CAPTURER") then
		return Frigate
	end
	
	if(familyName == "UTILITY" or familyName == "RESOURCE" or familyName == "RESOURCELARGE") then
		return Resource
	end
	
	if(familyName == "CORVETTE") then
		return Corvette
	end	

	if(familyName == "FIGHTER") then
		return Fighter
	end	
	
	if(familyName == "MEGALITH") then
		return Megalith
	end	
	
	if(familyName == "FLAGSHIP" or familyName=="MOTHERSHIP") then
		return Flagship
	end			

	if(familyName == "SUBSYSTEM" or familyName == "SUBSYSTEMMODULE" or (strfind (shipnmU, "MODULE") ~= nil) ) then
		return SubSystem
	end		
	
	if(familyName == "PLATFORM") then
		return Platform
	end	

	--print("*** GET TYPE unknown FamilyType: "..familyName.." for ship:"..shipnm)
	
	return 0
end


function CommandMoveToSobGiven(shipname, targetname)

	--print ("movetosob targetname = "..targetname)
	
	if (strfind (strupper(targetname), "NEBULA") ~= nil) then
		playSpeechActor("COMMAND_OrderedToEnterNebula", NameAllPilot, NumAllPilots, Frequency_Command)
		return
	end
	
	CommandMoveGiven( shipname, targetname )
end


function isCapital(shipnm)

	if (getType(shipnm) == Capital) then
		return 1
	end
	
	return 0
end

function CommandWayPointMoveGiven(shipname, targetname)

	shiptype = getType(shipname)
	genericShipName = strsub(shipname,5)
	
	local cmd = "COMMAND_WAYPOINT"
	if(playSomtaawCommand(cmd, shipname)) then
		return
	end
	if (genericShipName=="ProximitySensor" or genericShipName=="SensorArray") then
		playSpeechActor("Command_Probe_Selected", NameAllPilot, 1, Frequency_Command )
		return
	end

	if (shiptype == Flagship and genericShipName~="Dreadnaught" ) then	
		playSpeechActor("COMMAND_Waypoint_1", raceHelper(), 0, Frequency_Command )
		return
	end
	
	if (strsub(shipname,0,4)=="Kpr_") then
		playSpeechActor("Command_MoverSelected", NameAllPilot, 1, Frequency_Command )
		return
	end	
	
	playSpeechActor("COMMAND_WAYPOINT",  NameAllPilot, NumAllPilots, Frequency_Command)
		
	
end

function CommandCancelOrder(shipname, prevOrders)
	local MoveOrder = 0
	local AttackOrder = 1
	
	if (strsub(shipname,0,4)=="Kpr_") then
		playSpeechActor("Command_MoverSelected", NameAllPilot, 1, Frequency_Command )
		return
	end		
	
	shiptype = getType(shipname)
	genericShipName = strsub(shipname,5)

	local cmd
	
	if(prevOrders == MoveOrder) then
		cmd = "COMMAND_MOVE_CANCELLED"
	elseif(prevOrders == AttackOrder) then
		cmd = "COMMAND_ATTACK_CANCELLED"
	else
		cmd = "COMMAND_CANCELLED"
	end
	
	if(playSomtaawCommand(cmd, shipname)) then
		return
	end
	
	if (prevOrders == AttackOrder) then
		

		if (shiptype == Flagship and genericShipName~="Dreadnaught" ) then	
			playSpeechActor("COMMAND_Attack_Cancelled_1", raceHelper(), 0, Frequency_Command )
			return
		end	
	
		if(shiptype==Capital) then
			playSpeechActor( "COMMAND_CAP_ATTACK_CANCELLED", NameCapPilot, NumCapPilots, Frequency_Command )
		else
			playSpeechActor( "COMMAND_ATTACK_CANCELLED", NameFighterPilot, NumFighterPilots, Frequency_Command )
		end
	else
		if (shiptype == Flagship and genericShipName~="Dreadnaught" ) then	
			playSpeechActor("COMMAND_MoveCancelled_1", raceHelper(), 0, Frequency_Command )
			return
		end
	--if (prevOrders == MoveOrder) then
		playSpeechActor( "COMMAND_MoveCancelled",  NameAllPilot, NumAllPilots, Frequency_Command)
	end
end

function CommandDefenseFieldChanged(shipname, defenseType)

	local cmd

	if (defenseType == DEF_on) then
		cmd = "COMMAND_DEFENSEFIELDON"
	elseif (defenseType == DEF_off) then
		cmd = "COMMAND_DEFENSEFIELDOFF"
	elseif (defenseType == DEF_out) then
		cmd = "COMMAND_DEFENCEFIELDOUTOFPOWER"
	else
		cmd = ""
	end
	
	if(playSomtaawCommand(cmd, shipname)) then
		return
	end

	if (defenseType == DEF_on) then
		playSpeechActor( "COMMAND_DEFENSEFIELDON", NameCapPilot,  NumCapPilots, Frequency_Command )
	elseif (defenseType == DEF_off) then
		playSpeechActor( "COMMAND_DEFENSEFIELDOFF", NameCapPilot, NumCapPilots, Frequency_Command )
	elseif (defenseType == DEF_out) then
		playSpeechActor( "STATUS_DEFENCEFIELDOUTOFPOWER", NameCapPilot, NumCapPilots, Frequency_Command )
	elseif (defenseType == DEF_low) then
		--no speech
	end

end

-- resource command issued with a target of the given name
function CommandResourceGiven(shipname, targetname)
	--if (targetname == "Container") then
	-- string library not available in luaconfig, so can't use strfind, strlower, strsub
		
	local cmd
	if(targetname == "StaticContainer") then
		cmd = "COMMAND_RESOURCESALVAGE"
	else
		cmd = "COMMAND_RESOURCECOLLECTORHARVEST"
	end
	
	if(playSomtaawCommand(cmd, shipname)) then
		return
	end
	
	if (targetname == "StaticContainer") then
		playSpeechActor( "COMMAND_ResourceSalvage", NameSupportPilot, NumSupportPilots, Frequency_Command )
	else
		playSpeechActor( "COMMAND_ResourceCollectorHarvest", NameSupportPilot, NumSupportPilots, Frequency_Command )
	end
end


MP_AllianceRequested = 0
MP_AllianceFormed = 1
MP_AllianceBroken = 2
MP_RUsTransferred = 3
MP_ShipsTransferred = 4

function CommandMultiplay(shipname, event)
	
	if (event==MP_AllianceRequested) then
		playSpeechActor("COMMAND_AllianceRequested_1", raceHelper(), 0, Frequency_Command )
	elseif (event==MP_AllianceFormed) then
		playSpeechActor("COMMAND_AllianceFormed_1", raceHelper(), 0, Frequency_Command )
	elseif (event==MP_AllianceBroken) then
		playSpeechActor("COMMAND_AllianceBroken_1", raceHelper(), 0, Frequency_Command )
	elseif (event==MP_RUsTransferred) then
		playSpeechActor("COMMAND_RUs_Transferred", raceHelper(), 0, Frequency_Command )
	elseif (event==MP_ShipsTransferred) then
		playSpeechActor("COMMAND_Ships_Transferred", raceHelper(), 0, Frequency_Command )
	end
	
end


-- capture command issued to a ship with the given name
function CommandCaptureGiven(shipname, targetname)
	ship = shipname 
	local cmd = "COMMAND_CAPTURE"
	if(playSomtaawCommand(cmd, shipname)) then
		return
	elseif (shipname=="Hgn_MarineFrigate") then
		playSpeechActor( "COMMAND_MarineFrigate_Capture", NameMarinePilot, NumMarinePilots, Frequency_Command )
	else
		playSpeechActor( "COMMAND_INFILTRATORFRIGATE_CAPTURE", NameInfiltratorPilot, NumInfiltratorPilots, Frequency_Command )
	end
end

function CommandAttackGiven(shipname, targetname, attackType)

	print("******** COMMAND ATTACK: shipname, targetname, attackType = "..shipname..","..targetname..","..attackType)
	
	local cmd = "COMMAND_ATTACK"
	if (attackType == 1) then
		cmd = "COMMAND_ATTACK_FRIENDLY"
	end
	if(playSomtaawCommand(cmd, shipname, targetname)) then
		return
	end
	
	-- if special_attack given
	if (attackType == 3) then
		if (shipname=="Hgn_Dreadnaught") then
			playSpeechActor("COMMAND_Dreadnaught_BigGun", NameCapPilot, NumCapPilots, Frequency_Command )
			return
		elseif (shipname=="Hgn_Scout") then
			playSpeechActor("COMMAND_ScoutEmp", NameSupportPilot, NumSupportPilots, Frequency_Command )
			return
		end
	end
	
	if (strsub(shipname,0,4)=="Kpr_") then
		playSpeechActor("Command_MoverSelected", NameAllPilot, 1, Frequency_Command )
		return
	end		

	local targetShipType = getType(targetname)
	local shipType = getType(shipname)
	

	genericShipName = strsub(shipname,5)
	
	
	print("******2- COMMAND ATTACK: shipType, targetShipType, genericShipName = "..shipType..","..targetShipType..","..genericShipName)
	
	if (attackType == 0 or attackType == 3) then

		if (shipType == Flagship and genericShipName~="Dreadnaught" ) then	
			playSpeechActor("COMMAND_Attack", raceHelper(), 0, Frequency_Command )
			return
		end	
		-- check if we can play Target-relevant speech first
		if(targetShipType==Capital) then
			playSpeechActor("COMMAND_Attack_CapShip", NameCapPilot, NumCapPilots, Frequency_Command )
		elseif ( targetShipType==SubSystem and targetname~="VGR_HYPERSPACEINHIBITOR") then
			playSpeechActor("COMMAND_BOMBERSUBSYSTEMATTACK", NameFighterPilot, NumFighterPilots, Frequency_Command )
		else
			if(shipType==Capital) then
				playSpeechActor( "COMMAND_CAPSHIP_TO_ATTACK", NameCapPilot, NumCapPilots, Frequency_Command )
			elseif (shipname=="STRIKE") then
				playSpeechActor( "COMMAND_StrikeGroup_Attack", NameAllPilot, NumAllPilots, Frequency_Command )
			else
				playSpeechActor( "COMMAND_Attack", NameFighterPilot, NumFighterPilots, Frequency_Command )
			end
		end
	elseif (attackType == 1) then
		if (shipType == Flagship and genericShipName~="Dreadnaught" ) then	
			playSpeechActor("COMMAND_ForceAttackFriendly_1", raceHelper(), 0, Frequency_Command )
			return
		end	
		playSpeechActor( "COMMAND_ForceAttackFriendly", NameCapPilot, NumCapPilots, Frequency_Command )
	elseif (attackType == 2) then
		if (targetShipType == Resource) then
            if (shipType == Flagship) then
	    		playSpeechActor("COMMAND_CombatMan_1", raceHelper(), 0, Frequency_Command )
            elseif (shipType == Capital) then
    			playSpeechActor("COMMAND_ForceAttack", NameCapPilot, NumCapPilots, Frequency_Command )
            else
				playSpeechActor( "COMMAND_Attack", NameFighterPilot, NumFighterPilots, Frequency_Command )
            end
        elseif (shipType == Flagship and genericShipName~="Dreadnaught" ) then	
		--if (shipType == Flagship and genericShipName~="Dreadnaught" ) then	
			playSpeechActor("COMMAND_ForceAttack_1", raceHelper(), 0, Frequency_Command )
        else
		    playSpeechActor( "COMMAND_ForceAttack", NameCapPilot, NumCapPilots, Frequency_Command )
        end
	end
end

HYP_Entering = 0
HYP_EnteringGate = 1
HYP_Exiting = 2
HYP_Interrupted = 3
HYP_GateFormed = 4
HYP_EnteredInhibitorVolume = 5
HYP_NotEnoughCash = 6

function CommandHyperspaceGiven(shipname,code)

	print("** CommandHyperspaceGiven: shipname = "..shipname.." code = "..code)
	genericShipName = strsub(shipname,5)
	
	local cmd = ""
	if(code == HYP_Entering) then
		cmd = "COMMAND_HS"
	elseif(code == HYP_EnteringGate) then
		cmd = "COMMAND_HS_GATE"
	elseif(code == HYP_Exiting) then
		cmd = "COMMAND_HS_EXIT"
	elseif(code == HYP_Interrupted) then
		cmd = "COMMAND_HS_INTERRUPTED"
	elseif(code == HYP_GateFormed) then
		cmd = "COMMAND_HS_GATEFORMED"
	elseif(code == HYP_EnteredInhibitorVolume) then
		cmd = "COMMAND_HS_INHIBITOR_DETECTED"
	elseif(code == HYP_NotEnoughCash) then
		cmd = "COMMAND_HS_INSUFFICIENT"
	end
	
	if(playSomtaawCommand(cmd, shipname)) then
		return
	end
	
	--special case for intteruption (same priority)
	if (code == HYP_Interrupted) then
		if (genericShipName=="MotherShip") then
			playSpeechActor("STATUS_HyperspaceInterupted_1",  raceHelper(), 0, Frequency_Command)
		else
			playSpeechActor("STATUS_OutofHS", NameCapPilot, NumCapPilots, Frequency_Command )
		end
		return
	end
	
	--special case for intteruption due to inhibitor(same priority)
	if (code == HYP_EnteredInhibitorVolume) then
		playSpeechActor("STATUS_HyperSpaceInhib_Detected", NameSupportPilot, NumSupportPilots, Frequency_Command)
		return
	end	
	
	if (code == HYP_NotEnoughCash) then
		playSpeechActor("STATUS_HYPERSPACEINSUFFICENT_1", raceHelper(), 0, Frequency_Command)
		return
	end		

	if (code == HYP_EnteringGate) then
		playSpeechActor("STATUS_HyperspaceGateJump_1", raceHelper(), 0, Frequency_Command)
		return
	end			

	shipType = getType(shipname)
	
	
	if (shipType == Flagship) then
		playSpeechActor("COMMAND_HS", raceHelper(), 0 , Frequency_Command)
		return
	end		

	if (shipType==Capital) then
		playSpeechActor("COMMAND_CAPHS", NameCapPilot, NumCapPilots, Frequency_Command )
	else
		playSpeechActor("COMMAND_HS", NameCapPilot, NumCapPilots, Frequency_Command )
	end

end

function CommandCombatMan(shipname, targetname)

	if(playSomtaawCommand("COMMAND_COMBATMAN", shipname)) then
		return
	end

	shipType = getType(shipname)	
	genericShipName = strsub(shipname,5)

	if (shipType == Flagship and genericShipName~="Dreadnaught" ) then		
		playSpeechActor("COMMAND_CombatMan_1", raceHelper(), 0, Frequency_Command )
		return
	end		

	
	
	if (shipType==Capital) then
		playSpeechActor("COMMAND_CAP_COMBATMAN", NameCapPilot, NumCapPilots, Frequency_Command )
	else
		playSpeechActor("COMMAND_COMBATMAN", NameFighterPilot, NumFighterPilots, Frequency_Command )
	end

end

function CommandMoveAttackGiven(shipname, targetname)

	shiptype = getType(shipname)
	genericShipName = strsub(shipname,5)
	
	local cmd = "COMMAND_MOVEATTACK"
	if(playSomtaawCommand(cmd, shipname)) then
		return
	end

	if (shiptype == Flagship and genericShipName~="Dreadnaught" ) then
		playSpeechActor("COMMAND_MoveAttack_1", raceHelper(), 0, Frequency_Command )
		return
	end
	
	if (shiptype==Capital) then
		playSpeechActor("COMMAND_CAP_MOVEATTACK", NameCapPilot, NumCapPilots, Frequency_Command )
	else
		playSpeechActor("COMMAND_MOVEATTACK", NameFighterPilot, NumFighterPilots, Frequency_Command )
	end

end

function CommandLaunchGiven(shipname, targetname)
	
	local cmd = "COMMAND_LAUNCH"
	if(playSomtaawCommand(cmd, shipname)) then
		return
	end


	if (shipname =="Hgn_Probe") then
		--playSpeechActor( "COMMAND_ProbeLaunched",raceHelper(), 0)
		return
	end
	
	shipFamily = getFamily(shipname)
	if (shipFamily == "FIGHTER" or shipFamily == "CORVETTE") then
		-- can't find in new speech
		playSpeechActor( "COMMAND_StrikeCraftLaunch",NameSupportPilot, NumSupportPilots, Frequency_Command)
	elseif (shipFamily == "CAPITAL" or shipFamily == "SUPERCAP") then
		playSpeechActorLinked( "STATUS_CARRIERORMSHIPCAPITALSHIPLAUNCHED", NameSupportPilot, NumSupportPilots, Frequency_Command, CE_STS_CAPWELCOME)
	end
end


-- DEFINED IN TABLE (see Chatter.lua)
function CommandGuardGiven(shipname, targetname)

	shiptype = getType(shipname)
	genericShipName = strsub(shipname,5)

	ship = strsub(shipname, 9) -- Get ship name starting at 9th character 
		
	local cmd = "COMMAND_GUARD"
	if(playSomtaawCommand(cmd, shipname)) then
		return
	end
	
	if (shiptype == Flagship and genericShipName~="Dreadnaught" ) then		
		playSpeechActor("COMMAND_Guard_1", raceHelper(), 0, Frequency_Command )
		return
	end
	
	if (strsub(shipname,0,4)=="Kpr_") then
		playSpeechActor("Command_MoverSelected", NameAllPilot, 1, Frequency_Command )
		return
	end	
	
	if (shiptype==Capital) then
		playSpeechActor( "COMMAND_CAP_GUARD", NameCapPilot, NumCapPilots, Frequency_Command )
	elseif (shiptype==Fighter) then
		playSpeechActor( "COMMAND_Guard", NameFighterPilot, NumFighterPilots, Frequency_Command )
	else
		playSpeechActor( "COMMAND_Guard", NameAllPilot, NumAllPilots, Frequency_Command )
	end
end

function CommandMoveGiven(shipnm, targetnm)

	--print("** CommandMoveGiven: shipnm="..shipnm)

	
	shiptype = getType(shipnm)
	genericShipName = strsub(shipnm,5)

	local cmd = "COMMAND_MOVE"
	if(playSomtaawCommand(cmd, shipnm)) then
		return
	end
	
	
	if (shiptype == Flagship and genericShipName~="Dreadnaught" ) then		
		playSpeechActor("COMMAND_MOVE_1", raceHelper(), 0, Frequency_Command )
		return
	end
	
	if (genericShipName=="ProximitySensor" or genericShipName=="SensorArray") then
		playSpeechActor("Command_Probe_Selected", NameAllPilot, NumAllPilots, Frequency_Command )
		return
	end	
	
	genericShipName = strsub(shipnm,5)
	
	if (strfind (strupper(shipnm), "PROBE") ~= nil) then
		playSpeechActor("COMMAND_ProbeLaunched", raceHelper(), 0, Frequency_Command )	
		return
	end
	
	if (strsub(shipnm,0,4)=="Kpr_") then
		playSpeechActor("Command_MoverSelected", NameAllPilot, 1, Frequency_Command )
		return
	end	
	
	if (genericShipName=="GunTurret" or genericShipName=="GunPlatform" or genericShipName=="IonTurret" or genericShipName=="WeaponPlatform_gun"or genericShipName=="WeaponPlatform_missile") then
		playSpeechActor( "COMMAND_Turret_Fold", NameSupportPilot, NumSupportPilots, Frequency_Command )
	elseif (shipnm=="STRIKE") then
		playSpeechActor( "COMMAND_StrikeGroup_Move", NameAllPilot, NumAllPilots, Frequency_Command )
	else
		playSpeechActor( "COMMAND_Move", NameAllPilot, NumAllPilots, Frequency_Command )
	end

end

function CommandStrikeGroupFormed(shipnm, code)

	if (shipnm ~= nil) then
	
		if (strfind (shipnm, "Kpr_") ~= nil) then
			playSpeechActor("Command_MoverSelected", NameAllPilot, 1, Frequency_Command )
			return
		end
	else
		shipnm = ''
	end
	
	local cmd = ""
	if (code==1) then
		cmd = "COMMAND_STRIKEGROUP_FORM_RESPONSE"
	elseif(code == 2) then
		cmd = "COMMAND_STRIKEGROUP_FORMATIONSET"
	elseif (code == 3) then
		cmd = "COMMAND_STRIKEGROUP_DISBAND"
	end
	if(playSomtaawCommand(cmd, shipnm)) then
		return
	end
	
	if (code==1) then
		playSpeechActor( "COMMAND_STRIKEGROUP_FORM_RESPONSE", NameAllPilot, NumAllPilots, Frequency_Command )
	elseif(code == 2) then
		playSpeechActor( "COMMAND_STRIKEGROUP_FORMATIONSET", NameAllPilot, NumAllPilots, Frequency_Command )
	elseif (code == 3) then
		playSpeechActor( "COMMAND_STRIKEGROUP_DISBAND", NameAllPilot, NumAllPilots, Frequency_Command )
	end
end

function CommandDockGiven(shipname, targetname)
	shipType = getType(shipname)
	
	local cmd = "COMMAND_DOCK"
	if(playSomtaawCommand(cmd, shipname)) then
		return
	end
	
	--eliminate race -- well that's genocide! :)
	genericShipName = strsub(targetname,5)
	
--~ 	-- this can get WAY too annoying (happens constantly, latch=dock in code), so disable
--~ 	if (shipType==Resource and genericShipName == "ResourceController") then
--~ 		return
--~ 	end

	if (strsub(shipname,0,4)=="Kpr_") then
		playSpeechActor("Command_MoverSelected", NameAllPilot, 1, Frequency_Command )
		return
	end	

	if (shipType == Fighter or shipType == Corvette) then
		playSpeechActor("COMMAND_StrikeCraftDock", NameFighterPilot, NumFighterPilots, Frequency_Command )
		return
	end
	
	if (genericShipName=="Carrier") then
		playSpeechActorLinked("COMMAND_AnyShipGenericDockCarrier_1", NameAllPilot, NumAllPilots, Frequency_Command,CE_CHT_DOCK )
	elseif (genericShipName=="MotherShip") then
		playSpeechActorLinked("COMMAND_AnyShipGenericDockMothership_1", NameAllPilot, NumAllPilots, Frequency_Command,CE_CHT_DOCK )
	elseif (genericShipName=="Shipyard") then
		playSpeechActorLinked("COMMAND_AnyShipGenericDockShipyard_1", NameAllPilot, NumAllPilots, Frequency_Command,CE_CHT_DOCK )
	elseif (genericShipName=="SupportFrigate") then
		playSpeechActorLinked("COMMAND_AnyShipGenericDockSupportFrigate_1", NameAllPilot, NumAllPilots, Frequency_Command,CE_CHT_DOCK )
	elseif (genericShipName=="Battlecruiser") then
		playSpeechActorLinked("COMMAND_AnyShipGenericDockBattlecruiser_1", NameAllPilot, NumAllPilots, Frequency_Command,CE_CHT_DOCK )
	elseif (genericShipName=="ResourceController") then
		playSpeechActor("COMMAND_AnyShipGenericDockResourceController_1", NameAllPilot, NumAllPilots, Frequency_Command )
	else
		playSpeechActorLinked("COMMAND_StrikeCraftDock", NameFighterPilot, NumFighterPilots, Frequency_Command, CE_CHT_DOCK )
	end
	
	
end

function CommandParadeGiven(shipname, targetname)

	local cmd = "COMMAND_FOLLOWING"
	if(playSomtaawCommand(cmd, shipname)) then
		return
	end

	if (shipname=="STRIKE") then
		-- can't find in new speech
		playSpeech("STATUS_StrikeCraftNowFollowing")
		return
	end
	familyName = getFamily(shipname)
	if(familyName == "FIGHTER" or familyName == "CORVETTE") then
		-- can't find in new speech
		playSpeechFreq("STATUS_StrikeCraftNowFollowing", 15)
	end
end

function CommandRetireGiven(shipname, targetname)

	local shipType = getType(shipname)

	local cmd = "COMMAND_RETIRE"
	if(playSomtaawCommand(cmd, shipname)) then
		return
	end
	
	
	if (shipType==Capital ) then
		playSpeechActor("COMMAND_CapitalShipRetire", NameCapPilot, NumCapPilots, Frequency_Command )
	elseif (shipType==Frigate) then
		playSpeechActor("COMMAND_FrigateRetire", NameCapPilot, NumCapPilots, Frequency_Command )
	elseif (shipType==Fighter) then
		playSpeechActor("COMMAND_FighterRetire", NameFighterPilot, NumFighterPilots, Frequency_Command )
	elseif (shipType==Support) then
		playSpeechActor("COMMAND_SupportShipRetire", NameSupportPilot, NumSupportPilots, Frequency_Command )
	else
		playSpeechActor("COMMAND_FighterRetire", NameFighterPilot, NumFighterPilots, Frequency_Command )
	end
end

-- DEFINED IN TABLE (see Chatter.lua)

--~ function CommandCouldNotBeIssued(shipname)
--~ 	playSpeech( "COMMAND_CANNOT" )
--~ end

--~ function CommandCloakTurnedOn(shipname)
--~ 	playSpeech( "COMMAND_CloakingShipsCloakingOn_Report" )
--~ end

--~ function CommandCloakTurnedOff(shipname)
--~ 	playSpeech( "COMMAND_CloakingShipsDeCloak" )
--~ end

--~ function CommandCloakOutOfPower(shipname)
--~ 		-- can't find in new speech
--~ 	playSpeech( "COMMAND_CloakingShipsInsufficientPowerToCloak" )
--~ end

AggressiveTactics = 0
DefensiveTactics = 1
PassiveTactics = 2

function CommandTacticsChanged(shipname, newSetting)

	local cmd = ""
	if(newSetting == AggressiveTactics) then
		cmd = "COMMAND_AGGRESSIVE"
	elseif(newSetting == DefensiveTactics) then
		cmd = "COMMAND_DEFENSIVE"
	elseif(newSetting == PassiveTactics) then
		cmd = "COMMAND_PASSIVE"
	end

	if(playSomtaawCommand(cmd, shipname)) then
		return
	end

	if(newSetting == AggressiveTactics) then
		playSpeechActor( "COMMAND_SetTacticsAggressive", NameAllPilot, NumAllPilots, Frequency_Command )
	elseif(newSetting == DefensiveTactics) then
		playSpeechActor( "COMMAND_SetTacticsDefensive", NameAllPilot, NumAllPilots, Frequency_Command )
	elseif(newSetting == PassiveTactics) then
		playSpeechActor( "COMMAND_SetTacticsPassive", NameAllPilot, NumAllPilots, Frequency_Command )
	end
end

CloseRange = 0
MediumRange = 1
LongRange = 2

function CommandEngagementRangeChanged(shipname, newSetting)
	
	local cmd = ''
	if(newSetting == CloseRange) then
		cmd = "COMMAND_RANGESHORT"
	elseif(newSetting == MediumRange) then
		cmd = "COMMAND_RANGEMED"
	elseif(newSetting == LongRange) then
		cmd = "COMMAND_RANGELONG"
	end

	if(playSomtaawCommand(cmd, shipname)) then
		return
	end
	
	if(newSetting == CloseRange) then
		playSpeechActor( "COMMAND_SetRangeShort", NameAllPilot, NumAllPilots, Frequency_Command )
	elseif(newSetting == MediumRange) then
		playSpeechActor( "COMMAND_SetRangeMedium", NameAllPilot, NumAllPilots, Frequency_Command )
	elseif(newSetting == LongRange) then
		playSpeechActor( "COMMAND_SetRangeLong", NameAllPilot, NumAllPilots, Frequency_Command )
	end
end

function CommandEngagementRangeForceChanged(shipname, force)
	if(force == 1) then
		if(playSomtaawCommand("COMMAND_RANGEFORCE", shipname)) then
			return
		end
		playSpeechActor( "COMMAND_SetRangeForce" , NameAllPilot, NumAllPilots, Frequency_Command )
	end
end

ACT_Selected = 1
ACT_Created = 2
ACT_Reinforced = 3

function CommandHotKeyGroupSelected(shipname, groupNumber, keyAction)

	if (strfind (shipname, "Kpr_") ~= nil) then
		return
	end

	if (keyAction==ACT_Created) then

		if (groupNumber==10) then
			playSpeechActor("COMMAND_GROUP_Assigned_10", raceHelper(), 0, Frequency_Command )
		else
			playSpeechActor("COMMAND_GROUP_Assigned_0"..groupNumber, raceHelper(), 0, Frequency_Command )
		end
		
		return
	
	end

	if (keyAction==ACT_Reinforced) then

		if (groupNumber==10) then
			playSpeechActor("STATUS_HotkeyGroup_Added_20_2", raceHelper(), 0, Frequency_Command )
		else
			playSpeechActor("STATUS_HotkeyGroup_Added_0"..groupNumber.."_2", raceHelper(), 0, Frequency_Command )
		end
		
		return
	
	end
	
	if (groupNumber==10) then
		playSpeechActor("COMMAND_SelectGroup10", NameCapPilot, NumCapPilots, Frequency_Command )
	else
		playSpeechActor("COMMAND_SelectGroup0"..groupNumber, NameCapPilot, NumCapPilots, Frequency_Command )
	end
	
end

-- was DEFINED IN TABLE (see Chatter.lua)
function CommandShipsSelected(shipname)

	--print("**** CommandShipsSelected = "..shipname)

	
	if(playSomtaawCommand("COMMAND_SELECTED", shipname)) then
		return
	end
	

	genericShipName = strsub(shipname,5)
	
	if (strfind (strupper(shipname), "PROBE") ~= nil or genericShipName=="ProximitySensor" or genericShipName=="SensorArray" or genericShipName=="CryoTray"or genericShipName=="CryoTray_M03") then
		playSpeechActor("Command_Probe_Selected", NameAllPilot, 1, Frequency_Command )
		return
	end
	
	if (strfind (shipname, "Kpr_") ~= nil) then
		playSpeechActor("Command_MoverSelected", NameAllPilot, 1, Frequency_Command )
		return
	end	

	--NOTE TODO: for selecting mothership, play shipname (SHIPNAME_Pride_1 or SHIPNAME_Mothership_1)
	shiptype = getType(shipname)
	
	-- Somtaaw functionality
	
	
	if (shiptype == Flagship and shipname~="Hgn_Dreadnaught" and shipname~="Vgr_Dreadnaught" and shipname~="Dreadnaught") then
       
        COMMAND = "COMMAND_SELECTED_1"
		print('playing speech: '..COMMAND..' for ship: '..shipname)
        playSpeechActor(COMMAND, raceHelper(), 0, Frequency_Command )
        return
	end
	familyName = getFamily(shipname)
	
	if(familyName == "FRIGATE" or familyName == "CAPITAL" or familyName == "SUPERCAP") then
		playSpeechActor("COMMAND_CAPITALSELECTED", NameCapPilot, NumCapPilots, Frequency_Command )
	else
		playSpeechActor("COMMAND_Selected", NameFighterPilot, NumFighterPilots, Frequency_Command )
	end
end

-- construction map
sscMap = {}
sscMap["Battlecruiser"] = {}
sscMap["Carrier"] = {}
sscMap["Shipyard"] = {}
sscMap["MotherShip"] = {}

sscMap["Carrier"].C_PRODUCTION_FIGHTER = "STATUS_FighterFacilityConstructedFromCarrier_1"
sscMap["Carrier"].C_PRODUCTION_CORVETTE = "STATUS_CorvetteFacilityConstructedFromCarrier_1"
sscMap["Carrier"].C_PRODUCTION_FRIGATE = "STATUS_FrigateFacilityConstructedFromCarrier_1"
sscMap["Carrier"].C_PRODUCTION_FRIGATEADVANCED = "STATUS_AdvancedFrigateFacilityConstructedFromCarrier_1"
sscMap["Carrier"].C_MODULE_PLATFORMCONTROL = "STATUS_PlatformFacilityConstructedFromCarrier_1"
sscMap["Carrier"].C_MODULE_RESEARCH = "STATUS_ResearchModuleConstructedFromCarrier_1"
sscMap["Carrier"].C_MODULE_CLOAKGENERATOR = "STATUS_CloakGeneratorConstructedFromCarrier_1"
sscMap["Carrier"].C_MODULE_FIRECONTROL = "STATUS_FireControlTowerConstructedFromCarrier_1"
sscMap["Carrier"].C_SENSORS_ADVANCEDARRAY = "STATUS_SensorsArrayConstructedFromCarrier_1"
sscMap["Carrier"].C_MODULE_HYPERSPACE = "STATUS_HyperspaceCoreConstructedFromCarrier_1"

sscMap["Shipyard"].MS_PRODUCTION_FIGHTER = "STATUS_FighterFacilityConstructedFromShipyard_1"
sscMap["Shipyard"].MS_PRODUCTION_CORVETTE = "STATUS_CorvetteFacilityConstructedFromShipyard_1"
sscMap["Shipyard"].MS_PRODUCTION_FRIGATE = "STATUS_FrigateFacilityConstructedFromShipyard_1"
sscMap["Shipyard"].MS_PRODUCTION_FRIGATEADVANCED = "STATUS_AdvancedFrigateFacilityConstructedFromShipyard_1"
sscMap["Shipyard"].MS_MODULE_PLATFORMCONTROL = "STATUS_PlatformFacilityConstructedFromShipyard_1"
sscMap["Shipyard"].SY_PRODUCTION_CAPSHIP = "STATUS_CapitalShipFacilityConstructedFromShipyard_1"
sscMap["Shipyard"].MS_MODULE_RESEARCH = "STATUS_ResearchModuleConstructedFromShipyard_1"
sscMap["Shipyard"].MS_MODULE_CLOAKGENERATOR = "STATUS_CloakGeneratorConstructedFromShipyard_1"
sscMap["Shipyard"].MS_MODULE_HYPERSPACE = "STATUS_HyperspaceCoreConstructedFromShipyard_1"
sscMap["Shipyard"].MS_MODULE_FIRECONTROL = "STATUS_FireControlTowerConstructedFromShipyard_1"

sscMap["Battlecruiser"].C_MODULE_CLOAKGENERATOR = "STATUS_CloakGeneratorConstructedFromBattlecruiser_1"
sscMap["Battlecruiser"].C_MODULE_FIRECONTROL = "STATUS_FireControlTowerConstructedFromBattlecruiser_1"
sscMap["Battlecruiser"].C_MODULE_HYPERSPACE = "STATUS_HyperspaceCoreConstructedFromBattlecruiser_1"
sscMap["Battlecruiser"].C_MODULE_RESEARCH = "STATUS_ResearchModuleConstructedFromBattlecruiser_1"


sscMap["MotherShip"].MS_PRODUCTION_FIGHTER = "STATUS_FighterFacilityConstructedFromMothership_1"
sscMap["MotherShip"].MS_PRODUCTION_CORVETTE = "STATUS_CorvetteFacilityConstructedFromMothership_1"
sscMap["MotherShip"].MS_PRODUCTION_FRIGATE = "STATUS_FrigateFacilityConstructedFromMothership_1"
sscMap["MotherShip"].MS_PRODUCTION_FRIGATEADVANCED = "STATUS_AdvancedFrigateFacilityConstructedFromMothership_1"
sscMap["MotherShip"].MS_MODULE_PLATFORMCONTROL = "STATUS_PlatformFacilityConstructedFromMothership_1"
sscMap["MotherShip"].MS_MODULE_RESEARCH = "STATUS_ResearchModuleConstructedFromMothership_1"
sscMap["MotherShip"].MS_MODULE_CLOAKGENERATOR = "STATUS_CloakGeneratorConstructedFromMothership_1"
sscMap["MotherShip"].MS_MODULE_FIRECONTROL = "STATUS_FireControlTowerConstructedFromMothership_1"
sscMap["MotherShip"].MS_SENSORS_ADVANCEDARRAY = "STATUS_SensorsArrayConstructedFromMothership_1"
sscMap["MotherShip"].MS_MODULE_HYPERSPACE = "STATUS_HyperspaceCoreConstructedFromMothership_1"
sscMap["MotherShip"].MS_MODULE_RESEARCHADVANCED = "STATUS_AdvResearchModuleConstructedFromMothership_1"
sscMap["MotherShip"].MS_PRODUCTION_CAPSHIP = "STATUS_CapitalShipFacilityConstructedFromMothership_1"
sscMap["MotherShip"].MS_PRODUCTION_CAPSHIPADVANCED = "STATUS_AdvancedCapitalShipFacilityConstructedFromMothership_1"


--Makaaaaaaan
--sscMap["Vgr_MotherShip"].VGR_MS_MODULE_HYPERSPACEINHIBITOR = "STATUS_VHyperspaceInhibitorConstructed_1"


--STATUS_SensorsArrayConstructedFromShipyard_1
--STATUS_AdvancedCapitalShipFacilityConstructedFromShipyard_1
--STATUS_SensorsArrayConstructedFromBattlecruiser_1
stdCMap = {}
stdCMap["Hgn_Scout"] = "STATUS_ScoutConstructed_1"
stdCMap["Hgn_Interceptor"] = "STATUS_InterceptorConstructed_1"
stdCMap["Hgn_AttackBomber"] = "STATUS_BomberConstructed_1"
stdCMap["Hgn_AttackBomberElite"] = "STATUS_BomberConstructed_1"
stdCMap["Hgn_AssaultCorvette"] = "STATUS_AssaultCorvetteConstructed_1"
stdCMap["Hgn_AssaultCorvetteElite"] = "STATUS_AssaultCorvetteConstructed_1"
stdCMap["Hgn_PulsarCorvette"] = "STATUS_PulsarCorvetteConstructed_1"
stdCMap["Hgn_MinelayerCorvette"] = "STATUS_MinelayerCorvetteConstructed_1"
stdCMap["Hgn_AssaultFrigate"] = "STATUS_AssaultFrigateConstructed_1"
stdCMap["Hgn_TorpedoFrigate"] = "STATUS_TorpedoFrigateConstructed_1"
stdCMap["Hgn_TorpedoFrigateElite"] = "STATUS_TorpedoFrigateConstructed_1"
stdCMap["Hgn_IonCannonFrigate"] = "STATUS_IonBeamFrigateConstructed"
stdCMap["Hgn_SupportFrigate"] = "STATUS_SupportFrigateConstructed_1"
stdCMap["Hgn_MarineFrigate"] = "STATUS_MarineFrigateConstructed_1"
stdCMap["Hgn_DefenseFieldFrigate"] = "STATUS_DefenseFieldFrigateConstructed_1"
stdCMap["Hgn_Destroyer"] = "STATUS_DestroyerConstructed_1"
stdCMap["Hgn_Carrier"] = "STATUS_CarrierConstructed_1"
stdCMap["Hgn_Battlecruiser"] = "STATUS_BattlecruiserConstructed_1"
stdCMap["Kpr_Mover"] = "STATUS_MoverConstructed_1"
stdCMap["Hgn_Shipyard"] = "STATUS_ShipyardConstructed_1"
stdCMap["Hgn_GunTurret"] = "STATUS_GunTurretConstructed_1"
stdCMap["Hgn_IonTurret"] = "STATUS_IonBeamPlatformConstructed"
stdCMap["Hgn_ResourceCollector"] = "STATUS_ResourceCollectorConstructed_1"
stdCMap["Hgn_ResourceController"] = "STATUS_ResourceControllerConstructed_1"
stdCMap["Hgn_Probe"] = "STATUS_ProbeConstructed_1"
stdCMap["Hgn_ECMProbe"] = "STATUS_SensorsDistortionProbeConstructed_1"
stdCMap["Hgn_ProximitySensor"] = "STATUS_ProximitySensorConstructed_1"

-- Makaan stuff
stdCMap["Vgr_Scout"] = "STATUS_VScoutConstructed_1"
stdCMap["Vgr_Interceptor"] = "STATUS_VAssaultCraftConstructed_1"
stdCMap["Vgr_Crusader"] = "STATUS_VCrusaderConstructed_1"
stdCMap["Vgr_LanceFighter"] = "STATUS_VLanceFighterConstructed_1"
stdCMap["Vgr_Bomber"] = "STATUS_VBomberConstructed_1"
stdCMap["Vgr_LaserCorvette"] = "STATUS_VLaserCorvetteConstructed_1"
stdCMap["Vgr_MissileCorvette"] = "STATUS_VMissileCorvetteConstructed_1"
stdCMap["Vgr_MinelayerCorvette"] = "STATUS_VMinelayerCorvetteConstructed_1"
stdCMap["Vgr_CommandCorvette"] = "STATUS_VCommandCorvetteConstructed_1"
stdCMap["Vgr_AssaultFrigate"] = "STATUS_VAssaultFrigateConstructed_1"
stdCMap["Vgr_InfiltratorFrigate"] = "STATUS_VInfiltratorFrigateConstructed_1"
stdCMap["Vgr_HeavyMissileFrigate"] = "STATUS_VHvyMissilFrigateConstructed_1"
stdCMap["Vgr_TransportFrigate"] = "STATUS_VTransportFrigateConstructed_1"
stdCMap["Vgr_ShipYard"] = "STATUS_VShipyardConstructed_1"
stdCMap["Vgr_Carrier"] = "STATUS_VCarrierConstructed_1"
stdCMap["Vgr_Battlecruiser"] = "STATUS_VBattleCruiserConstructed_1"
stdCMap["Vgr_Destroyer"] = "STATUS_VDestroyerConstructed_1"
stdCMap["Vgr_ResourceCollector"] = "STATUS_VResourceCollectorConstructed_1"
stdCMap["Vgr_ResourceController"] = "STATUS_VResourceControllerConstructed_1"
stdCMap["Vgr_Probe"] = "STATUS_VProbeConstructed_1"
stdCMap["Vgr_Probe_ECM"] = "STATUS_VSensorDistortionProbeConstructed_1"
stdCMap["Vgr_Probe_Prox"] = "STATUS_VProxProbeConstructed_1"
stdCMap["Vgr_HyperSpace_Platform"] = "STATUS_VHyperspacePlatformConstructed_1"

-- Kushan stuff
stdCMap["Kus_Scout"] = "STATUS_ScoutConstructed"
stdCMap["Kus_Interceptor"] = "STATUS_InterceptorConstructed"
stdCMap["Kus_AttackBomber"] = "STATUS_AttackBomberConstructed_1"
stdCMap["Kus_Defender"] = "STATUS_DefenderConstructed_1"
stdCMap["Kus_CloakedFighter"] = "STATUS_CloakedFighterConstructed_1"
stdCMap["Kus_LightCorvette"] = "STATUS_LightCorvetteConstructed_1"
stdCMap["Kus_HeavyCorvette"] = "STATUS_HeavyCorvetteConstructed_1"
stdCMap["Kus_MultiGunCorvette"] = "STATUS_MultiGunCorvetteConstructed_1"
stdCMap["Kus_MinelayerCorvette"] = "STATUS_MinelayerCorvetteConstructed_1"
stdCMap["Kus_RepairCorvette"] = "STATUS_RepairCorvetteConstructed_1"
stdCMap["Kus_SalvageCorvette"] = "STATUS_SalvageCorvetteConstructed_1"
stdCMap["Kus_SupportFrigate"] = "STATUS_SupportFrigateConstructed_1"
stdCMap["Kus_AssaultFrigate"] = "STATUS_AssaultFrigateConstructed"
stdCMap["Kus_IonCannonFrigate"] = "STATUS_IonCannonFrigateConstructed_1"
stdCMap["Kus_DroneFrigate"] = "STATUS_DroneFrigateConstructed_1"
stdCMap["Kus_Destroyer"] = "STATUS_DestroyerConstructed_1"
stdCMap["Kus_MissileDestroyer"] = "STATUS_MissileDestroyerConstructed_1"
stdCMap["Kus_Carrier"] = "STATUS_CarrierConstructed_1"
stdCMap["Kus_HeavyCruiser"] = "STATUS_HeavyCruiserConstructed_1"
stdCMap["Kus_ResourceCollector"] = "STATUS_ResourceCollectorConstructed_1"
stdCMap["Kus_ResourceController"] = "STATUS_ResourceControllerConstructed"
stdCMap["Kus_ResearchShip"] = "STATUS_ResearchShipConstructed_1"
stdCMap["Kus_Probe"] = "STATUS_ProbeConstructed_1"
stdCMap["Kus_ProximitySensor"] = "STATUS_ProximitySensorConstructed_1"
stdCMap["Kus_CloakGenerator"] = "STATUS_CloakGeneratorConstructed_1"
stdCMap["Kus_GravWellGenerator"] = "STATUS_GravWellGeneratorConstructed_1"
stdCMap["Kus_SensorArray"] = "STATUS_SensorsArrayConstructed_1"

-- Taiidan stuff
stdCMap["Tai_Scout"] = "STATUS_ScoutConstructed"
stdCMap["Tai_Interceptor"] = "STATUS_InterceptorConstructed"
stdCMap["Tai_AttackBomber"] = "STATUS_AttackBomberConstructed"
stdCMap["Tai_Defender"] = "STATUS_DefenderConstructed"
stdCMap["Tai_DefenseFighter"] = "STATUS_DefenseFighterConstructed"
stdCMap["Tai_LightCorvette"] = "STATUS_LightCorvetteConstructed"
stdCMap["Tai_HeavyCorvette"] = "STATUS_HeavyCorvetteConstructed"
stdCMap["Tai_MultiGunCorvette"] = "STATUS_MultiGunCorvetteConstructed"
stdCMap["Tai_MinelayerCorvette"] = "STATUS_MinelayerCorvetteConstructed_1"
stdCMap["Tai_RepairCorvette"] = "STATUS_RepairCorvetteConstructed"
stdCMap["Tai_SalvageCorvette"] = "STATUS_SalvageCorvetteConstructed"
stdCMap["Tai_SupportFrigate"] = "STATUS_SupportFrigateConstructed"
stdCMap["Tai_AssaultFrigate"] = "STATUS_AssaultFrigateConstructed"
stdCMap["Tai_IonCannonFrigate"] = "STATUS_IonCannonFrigateConstructed"
stdCMap["Tai_FieldFrigate"] = "STATUS_FieldFrigateConstructed"
stdCMap["Tai_Destroyer"] = "STATUS_DestroyerConstructed_1"
stdCMap["Tai_MissileDestroyer"] = "STATUS_MissileDestroyerConstructed"
stdCMap["Tai_Carrier"] = "STATUS_CarrierConstructed_1"
stdCMap["Tai_HeavyCruiser"] = "STATUS_HeavyCruiserConstructed"
stdCMap["Tai_ResourceCollector"] = "STATUS_ResourceCollectorConstructed_1"
stdCMap["Tai_ResourceController"] = "STATUS_ResourceControllerConstructed"
stdCMap["Tai_ResearchShip"] = "STATUS_ResearchShipConstructed"
stdCMap["Tai_Probe"] = "STATUS_ProbeConstructed_1"
stdCMap["Tai_ProximitySensor"] = "STATUS_ProxProbeConstructed_1"
stdCMap["Tai_CloakGenerator"] = "STATUS_CloakGeneratorConstructed"
stdCMap["Tai_GravWellGenerator"] = "STATUS_GravWellGeneratorConstructed"
stdCMap["Tai_SensorArray"] = "STATUS_SensorsArrayConstructed"

--Somtaaw
--sscMap["Hgn_Smt_ms"].Ksh_Sec_C_Module_CloakGenerator = "status_inhibitorprobearrived_1"


--STATUS_SensorsArrayConstructedFromShipyard_1
--STATUS_AdvancedCapitalShipFacilityConstructedFromShipyard_1
--STATUS_SensorsArrayConstructedFromBattlecruiser_1
stdCMap = {}
stdCMap["Hgn_Smt_scout"] = "STATUS_ScoutConstructed_1"
stdCMap["Hgn_Smt_Acolyte"] = "STATUS_InterceptorConstructed_1"
stdCMap["Hgn_Smt_SuperAcolyte"] = "STATUS_BomberConstructed_1"
stdCMap["Hgn_Smt_Mimic"] = "STATUS_BomberConstructed_1"
stdCMap["Hgn_Smt_Sentinel"] = "STATUS_AssaultCorvetteConstructed_1"
stdCMap["Hgn_Smt_ACV"] = "STATUS_AssaultCorvetteConstructed_1"
stdCMap["Hgn_Smt_ACVE"] = "STATUS_AssaultCorvetteConstructed_1"
stdCMap["Hgn_Smt_RammingFrigate"] = "STATUS_AssaultFrigateConstructed_1"
stdCMap["Hgn_Smt_multibeamfrigate"] = "STATUS_AssaultFrigateConstructed_1"
stdCMap["Hgn_Smt_hivefrigate"] = "STATUS_AssaultFrigateConstructed_1"

stdCMap["Hgn_Smt_destroyer"] = "STATUS_DestroyerConstructed_1"
stdCMap["Hgn_Smt_Carrier"] = "STATUS_CarrierConstructed_1"
stdCMap["Hgn_Smt_dreadnought"] = "STATUS_BattlecruiserConstructed_1"
stdCMap["Hgn_Smt_Seraph"] = "STATUS_BattlecruiserConstructed_2"

stdCMap["Hgn_Smt_Worker"] = "STATUS_ResourceCollectorConstructed_1"
stdCMap["Hgn_Smt_Processor"] = "STATUS_ResourceControllerConstructed_1"
stdCMap["Hgn_Smt_Clee_San"] = "STATUS_ProbeConstructed_1"



BUILD_Std = 1
BUILD_Subsystem = 2

function CommandConstructionComplete(buildingShip, builtItem, buildType)

	print("*****---- CommandConstructionComplete : buildingShip="..buildingShip..", builtItem="..builtItem..", buildType="..buildType)
		
	if (buildingShip==nil or builtItem==nil) then
		return
	end
	
	if(playSomtaawCommand("COMMAND_CONSTRUCTION_COMPLETED", buildingShip)) then
		return
	end
	
	--eliminate race
	genericbuildingShipName = strsub(buildingShip,5)
	genericbuiltItemName = strsub(builtItem,5)
	
	if (buildType==BUILD_Subsystem) then
	
		--print("sscMap[''..buildingShip][''..builtItem]  = "..sscMap[""..buildingShip][""..builtItem])
	
		if (sscMap[""..genericbuildingShipName]~= nil and sscMap[""..genericbuildingShipName][""..genericbuiltItemName] ~= nil) then
		
			if (strfind (strupper(builtItem), "INHIBITOR") ~= nil) then
			
				if (genericbuildingShipName=="Carrier") then
					playSpeechActorLinked("STATUS_HyperspaceInhibConstructedFromCarrier_1", NameCapPilot, NumCapPilots, Frequency_Command, CE_STS_INHIBITORONLINE )
				elseif (genericbuildingShipName=="Shipyard") then
					playSpeechActorLinked("STATUS_HyperspaceInhibConstructedFromShipyard_1", NameSupportPilot, NumSupportPilots , Frequency_Command, CE_STS_INHIBITORONLINE)
				elseif (genericbuildingShipName=="Battlecruiser") then
					playSpeechActorLinked( "STATUS_HyperspaceInhibConstructedFromBattle_1", NameCapPilot, NumCapPilots, Frequency_Command, CE_STS_INHIBITORONLINE)
				else
					playSpeechActor( "STATUS_HYPERSPACEINHIB_ON", NameSupportPilot, NumSupportPilots, Frequency_Command)
				end
			end
			
			if (genericbuildingShipName == "Shipyard") then
				playSpeechActor(sscMap[""..genericbuildingShipName][""..genericbuiltItemName], NameSupportPilot, NumSupportPilots, Frequency_Command )
			elseif (genericbuildingShipName == "MotherShip") then
				playSpeechActor(sscMap[""..genericbuildingShipName][""..genericbuiltItemName], raceHelper(), 0, Frequency_Command)
			else
				playSpeechActor(sscMap[""..genericbuildingShipName][""..genericbuiltItemName], NameCapPilot, NumCapPilots, Frequency_Command )
			end
		else
			playSpeechActor("COMMAND_SubsystemConstructed", NameCapPilot, NumCapPilots, Frequency_Command )
		end
		
		
	elseif (buildType==BUILD_Std) then

		if (stdCMap[""..builtItem] ~= nil) then
			playSpeechActor(stdCMap[""..builtItem], raceHelper(), 0, Frequency_Command)
		end
	
	end
end

function CommandConstructionStarted(buildingShip, builtItem)
	
	--builtItemFamily = getFamily(builtItem)
	--if(builtItemFamily == "FRIGATE" or builtItemFamily == "CAPITAL" or builtItemFamily == "SUPERCAP") then
	--	playSpeechActor("COMMAND_CarrierOrMShipBuildCapitalShip", NameSupportPilot, NumSupportPilots, Frequency_Command )
	--	return
	--end
	
	local cmd = "COMMAND_BUILD"
	if(playSomtaawCommand(cmd, buildingShip, builtItem)) then
		return
	end
	
	genericbuildingShipName = strsub(buildingShip,5)
	
	if (genericbuildingShipName=="MotherShip") then
		playSpeechActor("STATUS_ConstructionBegun_1", raceHelper(), 0, Frequency_Command)
	else
		playSpeechActor("COMMAND_CarrierOrMShipBuildCapitalShip", NameSupportPilot, NumSupportPilots, Frequency_Command )
	end
	

end

function CommandPaused(temp)
	--print("*** build paused")
	if(playSomtaawCommand("COMMAND_BUILD_PAUSED", "")) then
		return
	end
	playSpeechActor("COMMAND_Build_Paused", raceHelper(), 0, Frequency_Command)
end


-- DEFINED IN TABLE (see Chatter.lua)

--~ function CommandResourcesDepleted(shipname)
--~ 	playSpeech("COMMAND_ResourceCollectorNoMoreRUs")
--~ end

--~ function CommandStrikeGroupFormed()
--~ 	playSpeech("COMMAND_StrikeGroup_Form_Report")
--~ end
