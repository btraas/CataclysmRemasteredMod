function Start_Mimic(CustomGroup, playerIndex, shipID) 
	print('start_mimic')
	rand = random(1, 3)
	
	if(rand == 1) then
		ship = "Hgn_Smt_mimic_attackbomber"
	elseif(rand == 2) then
		ship = "Hgn_Smt_mimic_interceptor"
	else
		ship = "Hgn_Smt_mimic_multiguncorvette"
	end
	
	print('mimicking '..ship)
	
	SobGroup_CreateIfNotExist("mimic_temp_main")
	SobGroup_FillShipsByType("mimic_temp_main", CustomGroup, "Hgn_Smt_mimic")
	
	--SobGroup_AvoidanceIgnore(CustomGroup, "mimic_temp_main")
	
	spherename = "vol".. random(1, 999)
	Volume_Delete(spherename)
	Volume_AddSphere(spherename, SobGroup_GetPosition(CustomGroup), 30)
	SobGroup_SpawnNewShipInSobGroup(playerIndex, ship, ship..'1', CustomGroup, spherename)
	
	
	--SobGroup_CreateShip(CustomGroup, ship)
	--SobGroup_AvoidanceIgnore(CustomGroup, "mimic_temp_main")
	FX_StartEvent(CustomGroup, "kpr_phase_destroyer_mesh_phaseout")
	
	timer = Wait_Start(16)
	while(1) do
		print(Wait_End(timer))
		if(Wait_End(timer)) then
			SobGroup_Despawn("mimic_temp_main")
			return
		end
	end
end

running = 0

function Do_Mimic(CustomGroup, playerIndex, shipID)  
	
	--print('do_mimic')
	
	
	
end

function Finish_Mimic(CustomGroup, playerIndex, shipID)	

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

function Create_Mimic(CustomGroup, playerIndex, shipID)
	print('create_mimic')
	SobGroup_SetSwitchOwnerFlag(CustomGroup, 0)
	SobGroup_CreateIfNotExist("mimic_temp")
	SobGroup_CreateIfNotExist("mimic_temp1")
	SobGroup_CreateIfNotExist("mimic_temp2")
	
	SobGroup_CreateIfNotExist("hgn_smt_mimic_attackbomber" .. tostring(shipID) )		
	
end

function Update_Mimic(CustomGroup, playerIndex, shipID)
	
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

function Destroy_Mimic(CustomGroup, playerIndex, shipID)
	
	--for k = 0,5,1 do
		--if SobGroup_Empty("hgn_smt_drone" .. tostring(shipID) .. tostring(k)) == 0 then
	--		SobGroup_TakeDamage("hgn_smt_drone" .. tostring(shipID) .. tostring(k), 1)
	--	end	
	--end
end

function SobGroup_GetDistanceToSobGroup(sg_Group1, sg_Group2)
	if SobGroup_Empty(sg_Group1) == 0 and SobGroup_Empty(sg_Group2) == 0 then
		local t_position1 = SobGroup_GetPosition(sg_Group1)
		local t_position2 = SobGroup_GetPosition(sg_Group2)
		local li_distance = floor(sqrt((t_position1[1] - t_position2[1])*(t_position1[1] - t_position2[1]) + (t_position1[2] - t_position2[2])*(t_position1[2] - t_position2[2]) + (t_position1[3] - t_position2[3])*(t_position1[3] - t_position2[3])))
		return li_distance
	else
		return 0
	end
end