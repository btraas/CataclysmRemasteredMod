function Start_icf(CustomGroup, playerIndex, shipID) 
	print('start_reverse_mimic')

	ship = "Hgn_Smt_mcv"

	
	SobGroup_CreateIfNotExist("mimic_temp_icf")
	SobGroup_FillShipsByType("mimic_temp_icf", CustomGroup, "Hgn_Smt_mcv_ioncannonfrigate")
	
	SobGroup_AvoidanceIgnore(CustomGroup, "mimic_temp_icf")
	
	spherename = "vol".. random(1, 999)
	Volume_Delete(spherename)
	Volume_AddSphere(spherename, SobGroup_GetPosition(CustomGroup), 30)
	SobGroup_SpawnNewShipInSobGroup(playerIndex, ship, ship..'1', CustomGroup, spherename)
	
	
	--SobGroup_CreateShip(CustomGroup, ship)
	SobGroup_AvoidanceIgnore(CustomGroup, "mimic_temp_icf")
	FX_StartEvent(CustomGroup, "kpr_phase_destroyer_mesh_phaseout")
	
	timer = Wait_Start(16)
	while(1) do
		print(Wait_End(timer))
		if(Wait_End(timer)) then
			SobGroup_Despawn("mimic_temp_icf")
			return
		end
	end
end

running = 0

function Do_icf(CustomGroup, playerIndex, shipID)  
	
	--print('do_mimic')
	
	
	
end

function Finish_icf(CustomGroup, playerIndex, shipID)	

	--SobGroup_SetSpeed(CustomGroup, 1)
	--local r = random(1,6)
	--FX_StartEvent(CustomGroup, "droneretract_sfx"..r)
	--for k = 0,5,1 do
	--	if SobGroup_Empty("hgn_smt_drone" .. tostring(shipID) .. tostring(k)) == 0 then
	--		SobGroup_AbilityActivate("hgn_smt_drone" .. tostring(shipID) .. tostring(k), AB_Targeting, 0)
	--		SobGroup_AbilityActivate("hgn_smt_drone" .. tostring(shipID) .. tostring(k), AB_Attack, 0)
	--		SobGroup_DockSobGroupAndStayDocked("hgn_smt_drone" .. tostring(shipID) .. tostring(k), CustomGroup)
	--	end	
	--end	
end

-----------------------------------------------------------------------------------

function Create_icf(CustomGroup, playerIndex, shipID)
	print('create_mimic')
	SobGroup_SetSwitchOwnerFlag(CustomGroup, 0)
	SobGroup_CreateIfNotExist("mimic_temp_icf")
	SobGroup_CreateIfNotExist("mimic_temp_icf1")
	SobGroup_CreateIfNotExist("mimic_temp_icf2")
	
	SobGroup_CreateIfNotExist("hgn_smt_mimic_attackbomber" .. tostring(shipID) )		
	
end

function Update_icf(CustomGroup, playerIndex, shipID)
	
	--SobGroup_CreateIfNotExist("dronefrigate_temp2")
	--SobGroup_Clear("dronefrigate_temp2")	
	--SobGroup_GetSobGroupBeingCapturedGroup(CustomGroup, "dronefrigate_temp2")
	if 0 > 99 then
		local playerIndex_ai = 0		
		local enemyships = 0
		while playerIndex_ai < Universe_PlayerCount() do
			if Player_IsAlive(playerIndex_ai) == 1 then								
				local distance = 4000
				if SobGroup_FillProximitySobGroup("dronefrigate_temp1", "Player_Ships"..playerIndex_ai, CustomGroup, distance) == 1 then									
					if AreAllied(playerIndex, playerIndex_ai) == 0 then						
						enemyships = 1
					end					
				end				
			end
			playerIndex_ai = playerIndex_ai + 1
		end
		if enemyships > 0 then
			SobGroup_CustomCommand(CustomGroup)
		end
	end
	
end

function Destroy_icf(CustomGroup, playerIndex, shipID)
	
	--for k = 0,5,1 do
		--if SobGroup_Empty("hgn_smt_drone" .. tostring(shipID) .. tostring(k)) == 0 then
	--		SobGroup_TakeDamage("hgn_smt_drone" .. tostring(shipID) .. tostring(k), 1)
	--	end	
	--end
end
