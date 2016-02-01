aitrace("LOADING KEEPER BUILD INFO")

		kCollector = KPR_UTILITY_RECLAIMER
		kRefinery  = KPR_UTILITY_PROCESSOR
		kScout = KPR_UTILITY_OBSERVER
		kInterceptor = KPR_ATTACKDROID
		kShipYard = KPR_BALCORAGATE
		kBomber = KPR_ATTACKDROID
		kCarrier = KPR_CAPITAL_SLEEPER		
		kDestroyer = KPR_DESTROYER
		kBattleCruiser = KPR_DREADNAUGHT
		kBattleCruiser = KPR_SAJUUK
		
function CpuBuild_PersonalityDemand_Keeper()
		sg_classPersonalityDemand[ eFighter ] = 0.5
		sg_classPersonalityDemand[ eCorvette ] = 0.25
		sg_classPersonalityDemand[ eFrigate ] = 0.5
	sg_classPersonalityDemand[ ePlatform ] = 0
	if (Rand(100) < 10) then
		sg_classPersonalityDemand[ ePlatform ] = 0.2
	end
	if (g_LOD >= 2) then
		sg_classPersonalityDemand[ ePlatform ] = sg_classPersonalityDemand[ ePlatform ] + 0.2
	end
	aitrace("PersonalityDemand: Fi:"..sg_classPersonalityDemand[ eFighter ].." Co:"..sg_classPersonalityDemand[ eCorvette ].." Fr:"..sg_classPersonalityDemand[ eFrigate ])
end

function DetermineDemandWithNoCounterInfo_Keeper()
	if (s_militaryPop < 5) then
		aitrace("Dmd:Rand:"..sg_randFavorShipType )
		if (sg_randFavorShipType < 55) then
			ShipDemandAddByClass( eFighter, 1 )
		elseif (sg_randFavorShipType < 85) then
			ShipDemandAddByClass( eCorvette, 1 )
		elseif (g_LOD < 2 and sg_randFavorShipType < 95) then
			ShipDemandAddByClass( eFrigate, 1 )
		else
			ShipDemandAdd( kDestroyer, 1.0 )
			
		end
	else
		aitrace("Dmd:Asking for AntiFrigates" )
		ShipDemandAddByClass( eAntiFrigate, 1.5 )	
	end
end

function DetermineSpecialDemand_Keeper()
		local numFighterProduction = 0
		if (FIGHTERPRODUCTION ~= nil) then
			numFighterProduction = NumSubSystems(FIGHTERPRODUCTION)
	        end
		if (ShipDemandGet( kInterceptor ) > 0 and numFighterProduction > 0 and NumSquadrons(kInterceptor) < 3 and s_militaryPop < 10) then
			ShipDemandAdd( kInterceptor, 0.5 )
		end
	if (s_selfTotalValue > 120) then
		local additionalFrigDemand = 0.5
		local advresearchcount = NumSubSystems(ADVANCEDRESEARCH) + NumSubSystemsQ(ADVANCEDRESEARCH)
		if (advresearchcount > 0) then
			additionalFrigDemand = additionalFrigDemand + 0.25
		end
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
		ShipDemandAdd( kDestroyer, 0.25 )	
		if (IsResearchDone( KPRDREADNAUGHTTECH ) == 1) then
			ShipDemandAdd( kBattleCruiser, 0.5 )
		end
		if (IsResearchDone( KPRCAPITALWEAPONS ) == 1) then
			ShipDemandAdd( kBattleCruiser, 0.5 )
		end
	end		
		local numShipyards = NumSquadrons( kShipYard ) + NumSquadronsQ( kShipYard )
	if (numShipyards == 0 and UnderAttackThreat() < -75) then
		local bcDemand = ShipDemandGet( kBattleCruiser )
		if (bcDemand >= 0.5) then
			ShipDemandAdd( kShipYard, bcDemand-0.5 )
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
end

function DetermineBuilderClassDemand_Keeper()
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

Proc_CpuBuild_PersonalityDemand = CpuBuild_PersonalityDemand_Keeper
Proc_DetermineBuilderClassDemand = DetermineBuilderClassDemand_Keeper
Proc_DetermineDemandWithNoCounterInfo = DetermineDemandWithNoCounterInfo_Keeper
Proc_DetermineSpecialDemand = DetermineSpecialDemand_Keeper
