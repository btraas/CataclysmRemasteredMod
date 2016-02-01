aitrace("LOADING KUSHAN BUILD INFO")

		kCollector = KUS_RESOURCECOLLECTOR
		kRefinery  = KUS_RESOURCECONTROLLER
		kScout = KUS_PROBE
		kInterceptor = KUS_INTERCEPTOR
		kBomber = KUS_ATTACKBOMBER
		kShipYard = KUS_SCAFFOLD
		kCarrier = KUS_CARRIER		
		kDestroyer = KUS_DESTROYER
		kMissileDestroyer = KUS_MISSILEDESTROYER
		kBattleCruiser = KUS_HEAVYCRUISER	
		

function CpuBuild_PersonalityDemand_Kushan()
		sg_classPersonalityDemand[ eFighter ] = 0.25
		sg_classPersonalityDemand[ eCorvette ] = 0.5
		sg_classPersonalityDemand[ eFrigate ] = 0.25
	sg_classPersonalityDemand[ ePlatform ] = 0
	if (Rand(100) < 10) then
		sg_classPersonalityDemand[ ePlatform ] = 0.2
	end
	if (g_LOD >= 2) then
		sg_classPersonalityDemand[ ePlatform ] = sg_classPersonalityDemand[ ePlatform ] + 0.2
	end
	aitrace("PersonalityDemand: Fi:"..sg_classPersonalityDemand[ eFighter ].." Co:"..sg_classPersonalityDemand[ eCorvette ].." Fr:"..sg_classPersonalityDemand[ eFrigate ])
end

function DetermineDemandWithNoCounterInfo_Kushan()
	if (s_militaryPop < 5) then
		aitrace("Dmd:Rand:"..sg_randFavorShipType )
			if (sg_randFavorShipType < 45) then
				ShipDemandAddByClass( eFighter, 1 )
			elseif (sg_randFavorShipType < 75) then
				ShipDemandAddByClass( eCorvette, 1 )
			else
				ShipDemandAddByClass( eFrigate, 1 )
			end	
	else
		aitrace("Dmd:Asking for AntiFrigates" )
		ShipDemandAddByClass( eAntiFrigate, 1.5 )	
	end
end

function DetermineSpecialDemand_Kushan()
		if (ShipDemandGet( kInterceptor ) > 0 and IsResearchDone(FIGHTERDRIVE) == 1 and NumSquadrons(kInterceptor) < 15 and s_militaryPop < 25) then
			ShipDemandAdd( kInterceptor, 2.5 )
		end
	if (s_selfTotalValue > 120) then
		local additionalFrigDemand = 0.5
		ShipDemandAddByClass( eFrigate, additionalFrigDemand )		
		ShipDemandAddByClass( eFighter, -0.5 )
	end
	local numSpecial = numQueueOfClass(eCapture) + numQueueOfClass(eShield)
	local numFrigates = numQueueOfClass(eFrigate)
	if(numFrigates == 0 or numSpecial / numFrigates > 0.4) then
		ShipDemandAddByClass( eCapture, -10 )
		ShipDemandAddByClass( eShield, -10 )
	else
		if (s_militaryPop < 5) then
			ShipDemandAddByClass( eCapture, -4 )
			ShipDemandAddByClass( eShield, -4.5 )
		elseif (s_militaryPop < 10) then
			ShipDemandAddByClass( eCapture, -2 )
			ShipDemandAddByClass( eShield, -2.5 )
		elseif (s_militaryPop < 15) then
			ShipDemandAddByClass( eCapture, -1 )
			ShipDemandAddByClass( eShield, -1.5 )
		elseif (s_militaryPop > 30) then
			ShipDemandAddByClass( eCapture, 1 )
			ShipDemandAddByClass( eShield, 1 )
		end
	end	
 	if ( (GetNumCollecting() > 9 or GetRU() > 1500) and s_militaryPop > 8 and UnderAttackThreat() < -75) then
		ShipDemandAdd( kBattleCruiser, 0.75 )
		 ShipDemandAdd( kDestroyer, 0.35 )
		  ShipDemandAdd( kMissileDestroyer, 0.65 )	
		  if (IsResearchDone( HEAVYGUNS ) == 1) then
				ShipDemandAdd( kBattleCruiser, 0.6 )
		end			
	end		
	local numEnemyBattleCruisers = PlayersUnitTypeCount( player_enemy, player_total, eBattleCruiser )
	if (numEnemyBattleCruisers > 0) then		
		local ssKillaDemand = numEnemyBattleCruisers/2		
		if (s_enemyIndex ~= -1) then
			local targetEnemyCruisers = PlayersUnitTypeCount( s_enemyIndex, player_max, eBattleCruiser )
			if (targetEnemyCruisers > 0) then
				ssKillaDemand = ssKillaDemand + targetEnemyCruisers				
			end
		end		
		ShipDemandAddByClass( eSubSystemAttackers, ssKillaDemand )
		end
		local numShipyards = NumSquadrons( kShipYard ) + NumSquadronsQ( kShipYard )
		if (numShipyards == 0 and UnderAttackThreat() < -75) then
		local bcDemand = ShipDemandGet( kBattleCruiser )
		if (bcDemand >= 0.5) then
			ShipDemandAdd( kShipYard, bcDemand-0.5 )	
		end
	end		
		ShipDemandSet( KUS_RESEARCHSHIP, 10)	
		ShipDemandSet( KUS_RESEARCHSHIP_1, 5.5)	
		ShipDemandSet( KUS_RESEARCHSHIP_2, 4.5)
--		if s_militaryPop > 16 then
			ShipDemandSet( KUS_RESEARCHSHIP_3, 3.5)	
			ShipDemandSet( KUS_RESEARCHSHIP_4, 2.5)	
			ShipDemandSet( KUS_RESEARCHSHIP_5, 1.5)	
--		end
--		if (IsResearchDone(CLOAKEDFIGHTER) == 1) then
--			ShipDemandAdd( KUS_CLOAKEDFIGHTER, 0.5 )
--		end
		local numRepair = NumSquadrons( KUS_REPAIRCORVETTE ) + NumSquadronsQ( KUS_REPAIRCORVETTE )
		local numCorvettes = numQueueOfClass(eCorvette)
		if(numCorvettes == 0 or numRepair / numCorvettes > 0.1) then
			ShipDemandAdd( KUS_REPAIRCORVETTE, -5 )		
		else
			if (s_militaryPop < 5) then
				ShipDemandAdd( KUS_REPAIRCORVETTE, -2 )
			elseif (s_militaryPop < 10) then
				ShipDemandAdd( KUS_REPAIRCORVETTE, -1 )
			elseif (s_militaryPop < 15) then
				ShipDemandAdd( KUS_REPAIRCORVETTE, 0.25 )
			elseif (s_militaryPop > 30) then
				ShipDemandAdd( KUS_REPAIRCORVETTE, 1 )
			end
		end
		if (IsResearchDone(HEAVYCORVETTEUPGRADE) == 1 or IsResearchDone(FASTTRACKINGTURRETS) == 1) then
			ShipDemandAdd( KUS_LIGHTCORVETTE, -10 )
		end
		local numGravWellGenerator = NumSquadrons( KUS_GRAVWELLGENERATOR ) + NumSquadronsQ( KUS_GRAVWELLGENERATOR )
		if numGravWellGenerator == 0 and s_militaryPop > 20 and GetRU() > 1500 then
			ShipDemandSet( KUS_GRAVWELLGENERATOR, 10)
		end		
		local numCloakGenerator = NumSquadrons( KUS_CLOAKGENERATOR ) + NumSquadronsQ( KUS_CLOAKGENERATOR )
		if numCloakGenerator == 0 and s_militaryPop > 35 and GetRU() > 2250 then
			ShipDemandSet( KUS_CLOAKGENERATOR, 9)
		end
		local numSensorArray = NumSquadrons( KUS_SENSORARRAY ) + NumSquadronsQ( KUS_SENSORARRAY )
		if numSensorArray == 0 and s_militaryPop > 45 and GetRU() > 3000 then
			ShipDemandSet( KUS_SENSORARRAY, 8)
		end
end

function DetermineBuilderClassDemand_Kushan()
	local numBuilders = numQueueOfClass( eBuilder )
	local numActiveBuilders = numActiveOfClass( s_playerIndex, eBuilder )
	if (numBuilders>numActiveBuilders) then
		ShipDemandAddByClass( eBuilder, -10 );
		return
	end
	if (g_LOD == 0 and numBuilders > 3) then
		ShipDemandAddByClass( eBuilder, -10 );
		return
	elseif (g_LOD == 1 and numBuilders > 4) then
		ShipDemandAddByClass( eBuilder, -10 );
		return
	elseif (g_LOD == 2 and numBuilders > 5) then
		ShipDemandAddByClass( eBuilder, -10 );
		return	
	end
	if (s_militaryPop < 5 or (UnderAttack() == 1 and UnderAttackThreat() > -75) ) then
		ShipDemandAddByClass( eBuilder, -10 );
		return
	end
		ShipDemandAddByClass( eBuilder, -2.25 );
	local numRUs = GetRU()
	if (GetNumCollecting() < 7 and numRUs < 15000 ) then
		return
	end
	local numRUToBuildTable = {
		1000,			--0 builders
		2000,			--1
		3500,		 	--2 (normal start)
		6500,			--3
		10000,		--4
		15000,		--5 or more
	}
	if (numBuilders > 5) then
		numBuilders = 5
	end
	local RUsNeededToBuildBuilder = numRUToBuildTable[numBuilders+1]
		RUsNeededToBuildBuilder = RUsNeededToBuildBuilder + 1500
	local dif = numRUs - RUsNeededToBuildBuilder	
	if (dif > 0) then		
		local ruPerShip =2000		
		if (s_militaryStrength > 30) then
			ruPerShip = 1000
		end
		local bonusDemand = (1+(dif/ruPerShip))
		ShipDemandAddByClass( eBuilder, bonusDemand );
	end
	if (dif<-2000) then
		local penaltyDemand = dif/2000
		ShipDemandAddByClass( eBuilder, penaltyDemand );		
	end
	local neededMilitaryValue = 30 + (numBuilders-1)*60	
	local militaryDifDemand = (s_selfTotalValue - neededMilitaryValue)/30
	if (militaryDifDemand < 0) then
		ShipDemandAddByClass( eBuilder, militaryDifDemand );		
	end
	return 0
end

Proc_CpuBuild_PersonalityDemand = CpuBuild_PersonalityDemand_Kushan
Proc_DetermineBuilderClassDemand = DetermineBuilderClassDemand_Kushan
Proc_DetermineDemandWithNoCounterInfo = DetermineDemandWithNoCounterInfo_Kushan
Proc_DetermineSpecialDemand = DetermineSpecialDemand_Kushan
