aitrace("LOADING KEEPER UPGRADE INFO")

rt_mothership={
		damage={
			KPRFIREPOWERINCREASE},
		shield={
			KPRMOTHERSHIPDEFENSESHIELDREGENUPGRADE},
		health={
			KPRMOTHERSHIPHEALTHUPGRADE1,
			KPRMOTHERSHIPHEALTHUPGRADE2},
		speed={
			KPRMOTHERSHIPMAXSPEEDUPGRADE1,
			KPRMOTHERSHIPMAXSPEEDUPGRADE2}};
rt_carrier={
		damage={
			KPRFIREPOWERINCREASE},
		shield={
			KPRSLEEPERDEFENSESHIELDREGENUPGRADE},
		health={
			KPRCARRIERHEALTHUPGRADE1,
			KPRCARRIERHEALTHUPGRADE2},
		speed={
			KPRCARRIERMAXSPEEDUPGRADE1,
			KPRCARRIERMAXSPEEDUPGRADE2}};
rt_fighter={
	bomber={
		damage={
			KPRFIREPOWERINCREASE},
		health={
			KPRINTERCEPTORMAXHEALTHUPGRADE1,
			KPRINTERCEPTORMAXHEALTHUPGRADE2},
		speed={
			KPRINTERCEPTORMAXSPEEDUPGRADE1,
			KPRINTERCEPTORMAXSPEEDUPGRADE2}}};
rt_corvette={
	mover={
		damage={
			KPRFIREPOWERINCREASE},
		health={
			KPRMOVERHEALTHUPGRADE1,
			KPRMOVERHEALTHUPGRADE2},
		speed={
			KPRMOVERMAXSPEEDUPGRADE1,
			KPRMOVERMAXSPEEDUPGRADE2}}};
rt_frigate={
	cleanser={
		damage={
			KPRFIREPOWERINCREASE},
		health={
			KPRCLEANSERHEALTHUPGRADE1,
			KPRCLEANSERHEALTHUPGRADE2},
		speed={
			KPRCLEANSERMAXSPEEDUPGRADE1,
			KPRCLEANSERMAXSPEEDUPGRADE2}},
	silencer={
		damage={
			KPRFIREPOWERINCREASE},
		health={
			KPRSILENCERHEALTHUPGRADE1,
			KPRSILENCERHEALTHUPGRADE2},
		speed={
			KPRSILENCERMAXSPEEDUPGRADE1,
			KPRSILENCERMAXSPEEDUPGRADE2}},
	guardian={
		damage={
			KPRFIREPOWERINCREASE},
		health={
			KPRGUARDIANHEALTHUPGRADE1,
			KPRGUARDIANHEALTHUPGRADE2},
		speed={
			KPRGUARDIANMAXSPEEDUPGRADE1,
			KPRGUARDIANMAXSPEEDUPGRADE2}},
	sentinel={
		damage={
			KPRFIREPOWERINCREASE},
		health={
			KPRSENTINELHEALTHUPGRADE1,
			KPRSENTINELHEALTHUPGRADE2},
		speed={
			KPRSENTINELMAXSPEEDUPGRADE1,
			KPRSENTINELMAXSPEEDUPGRADE2}}};
rt_battlecruiser={
		damage={
			KPRFIREPOWERINCREASE},
		health={
			KPRDREADNAUGHTHEALTHUPGRADE1,
			KPRDREADNAUGHTHEALTHUPGRADE2,
			KPRSAJUUKHEALTHUPGRADE1,
			KPRSAJUUKHEALTHUPGRADE2},
		speed={
			KPRDREADNAUGHTMAXSPEEDUPGRADE1,
			KPRDREADNAUGHTMAXSPEEDUPGRADE2,
			KPRSAJUUKMAXSPEEDUPGRADE1,
			KPRSAJUUKMAXSPEEDUPGRADE2}};
rt_destroyer={	
		KPRKEEPERDEFENSESHIELDREGENUPGRADE,
		KPRDESTROYERHEALTHUPGRADE1,
		KPRDESTROYERMAXSPEEDUPGRADE1,
		KPRDESTROYERHEALTHUPGRADE2,
		KPRDESTROYERMAXSPEEDUPGRADE2};
rt_shipyard={
		health={
			KPRSHIPYARDHEALTHUPGRADE1,
			KPRSHIPYARDHEALTHUPGRADE2}};
rt_collector={
	KPRRESOURCECOLLECTORHEALTHUPGRADE1,
	KPRRESOURCECOLLECTORHEALTHUPGRADE2};

rt_refinery={
		KPRRESOURCECONTROLLERHEALTHUPGRADE1,
		KPRRESOURCECONTROLLERHEALTHUPGRADE2};

rt_hyperspace={
	cost={
		KPRHYPERSPACECOSTUPGRADE1,
		KPRHYPERSPACECOSTUPGRADE2},
	transittime={
		KPRHYPERSPACETRANSITTIMEUPGRADE1,
		KPRHYPERSPACETRANSITTIMEUPGRADE2}};

function DoUpgradeDemand_Keeper()	
	
	if (s_militaryStrength > 10 or g_LOD == 0) then
		inc_upgrade_demand( rt_mothership, 0.5  )
		ResearchDemandAdd( KPRMOTHERSHIPBUILDSPEEDUPGRADE1, 0.5 )
		ResearchDemandAdd( KPRMOTHERSHIPBUILDSPEEDUPGRADE2, 0.4 )
		end
		local numCollectors = NumSquadrons( kCollector )
		if (numCollectors > 0) then
			inc_upgrade_demand( rt_collector, numCollectors*.1 )
		end
		local numRefinery = NumSquadrons( kRefinery )
		if (numRefinery > 0) then
			inc_upgrade_demand( rt_refinery, numRefinery*1.5 )
		end
		local numCarrier = NumSquadrons( kCarrier )
		if (numCarrier > 0) then
			inc_upgrade_demand( rt_carrier, numCarrier*1 )
			ResearchDemandAdd( KPRCARRIERBUILDSPEEDUPGRADE1, numCarrier*1.25 )
			ResearchDemandAdd( KPRCARRIERBUILDSPEEDUPGRADE2, numCarrier*1.15 )
		end
		local numShipYards = NumSquadrons( kShipYard )
		if (numShipYards > 0) then
			inc_upgrade_demand( rt_shipyard, numShipYards*1.5  )
			ResearchDemandAdd( KPRSHIPYARDBUILDSPEEDUPGRADE1, numShipYards*1.75 )
			ResearchDemandAdd( KPRSHIPYARDBUILDSPEEDUPGRADE2, numShipYards*1.65 )
		end
	end
	local numFighter = numActiveOfClass( s_playerIndex, eFighter )
	if (numFighter > 1) then
		local numBombers = NumSquadrons( kBomber )
		if (numBombers > 1) then
			inc_upgrade_demand( rt_fighter.bomber, numBombers*1.5 )
		end
	end
	local numBattleCruiser = NumSquadrons( kBattleCruiser )
	if (numBattleCruiser > 0) then
		inc_upgrade_demand( rt_battlecruiser, numBattleCruiser*2.5  )
	end
	local numDestroyers = NumSquadrons( kDestroyer )
	if (numDestroyers > 0) then
		inc_upgrade_demand( rt_destroyer, numDestroyers*2  )
	end
	local numCorvette = numActiveOfClass( s_playerIndex, eCorvette )
	if (numCorvette > 1) then
		local numMoverCorvette = NumSquadrons( KPR_MOVER_NSP )
		if (numMoverCorvette>2) then
			inc_upgrade_demand( rt_corvette.mover, numMoverCorvette*1.25 )
		end
	end
	local numFrigate = numActiveOfClass( s_playerIndex, eFrigate )
	if (numFrigate > 2) then
		local numCleanserFrigate = NumSquadrons( KPR_DECIEVER )
		if (numCleanserFrigate>2) then
			inc_upgrade_demand( rt_frigate.cleanser, numCleanserFrigate*1.5 )
		end
		local numSilencerFrigate = NumSquadrons( KPR_SEEKER )
		if (numSilencerFrigate>2) then
			inc_upgrade_demand( rt_frigate.silencer, numSilencerFrigate*1.5 )
		end
		local numGuardianFrigate = NumSquadrons( KPR_FRIGATE_GUARDIAN )
		if (numGuardianFrigate>2) then
			inc_upgrade_demand( rt_frigate.guardian, numGuardianFrigate*1.5 )
		end
		local numSentinelFrigate = NumSquadrons( KPR_FRIGATE_SENTINEL )
		if (numSentinelFrigate>2) then
			inc_upgrade_demand( rt_frigate.sentinel, numSentinelFrigate*1.5 )
		end
	end
function DoResearchTechDemand_Keeper()

	ResearchDemandSet( KPRFIREPOWERINCREASE, 5 )
	ResearchDemandSet( KPRMOTHERSHIPHEALTHUPGRADE1, 5 )
	ResearchDemandSet( KPRMOTHERSHIPHEALTHUPGRADE2, 5 )
	ResearchDemandSet( KPRMOTHERSHIPMAXSPEEDUPGRADE1, 5 )
	ResearchDemandSet( KPRMOTHERSHIPMAXSPEEDUPGRADE2, 2 )
	ResearchDemandSet( KPRCARRIERHEALTHUPGRADE1, 2 )	
	ResearchDemandSet( KPRCARRIERHEALTHUPGRADE2, 2 )	
	ResearchDemandSet( KPRCARRIERMAXSPEEDUPGRADE1, 2 )	
	ResearchDemandSet( KPRCARRIERMAXSPEEDUPGRADE2, 2 )
	ResearchDemandSet( KPRINTERCEPTORMAXHEALTHUPGRADE1, 2 )
	ResearchDemandSet( KPRINTERCEPTORMAXHEALTHUPGRADE2, 2 )
	ResearchDemandSet( KPRINTERCEPTORMAXSPEEDUPGRADE1, 5 )
	ResearchDemandSet( KPRINTERCEPTORMAXSPEEDUPGRADE2, 5 )
	ResearchDemandSet( KPRMOVERHEALTHUPGRADE1, 5 )
	ResearchDemandSet( KPRMOVERHEALTHUPGRADE2, 5 )
	ResearchDemandSet( KPRMOVERMAXSPEEDUPGRADE1, 2 )
	ResearchDemandSet( KPRMOVERMAXSPEEDUPGRADE2, 2 )	
	ResearchDemandSet( KPRCLEANSERHEALTHUPGRADE1, 2 )	
	ResearchDemandSet( KPRCLEANSERHEALTHUPGRADE2, 2 )	
	ResearchDemandSet( KPRCLEANSERMAXSPEEDUPGRADE1, 2 )
	ResearchDemandSet( KPRCLEANSERMAXSPEEDUPGRADE2, 2 )
	ResearchDemandSet( KPRGUARDIANHEALTHUPGRADE1, 2 )
	ResearchDemandSet( KPRGUARDIANHEALTHUPGRADE2, 2 )
	ResearchDemandSet( KPRGUARDIANMAXSPEEDUPGRADE1, 2 )
	ResearchDemandSet( KPRGUARDIANMAXSPEEDUPGRADE2, 2 )
	ResearchDemandSet( KPRSILENCERHEALTHUPGRADE1, 2 )
	ResearchDemandSet( KPRSILENCERHEALTHUPGRADE2, 2 )
	ResearchDemandSet( KPRSENTINELMAXSPEEDUPGRADE1, 2 )
	ResearchDemandSet( KPRSENTINELMAXSPEEDUPGRADE2, 2 )
	ResearchDemandSet( KPRSENTINELHEALTHUPGRADE1, 2 )
	ResearchDemandSet( KPRSENTINELHEALTHUPGRADE2, 2 )
	ResearchDemandSet( KPRDREADNAUGHTHEALTHUPGRADE1, 2 )
	ResearchDemandSet( KPRDREADNAUGHTHEALTHUPGRADE2, 2 )
	ResearchDemandSet( KPRDREADNAUGHTMAXSPEEDUPGRADE1, 2 )
	ResearchDemandSet( KPRDREADNAUGHTMAXSPEEDUPGRADE2, 2 )
	ResearchDemandSet( KPRSAJUUKHEALTHUPGRADE1, 2 )
	ResearchDemandSet( KPRSAJUUKHEALTHUPGRADE2, 2 )
	ResearchDemandSet( KPRSAJUUKMAXSPEEDUPGRADE1, 2 )
	ResearchDemandSet( KPRSAJUUKMAXSPEEDUPGRADE2, 2 )
	ResearchDemandSet( KPRKEEPERDEFENSESHIELDREGENUPGRADE, 2 )
	ResearchDemandSet( KPRDESTROYERHEALTHUPGRADE1, 2 )
	ResearchDemandSet( KPRDESTROYERMAXSPEEDUPGRADE1, 2 )
	ResearchDemandSet( KPRDESTROYERHEALTHUPGRADE2, 2 )
	ResearchDemandSet( KPRDESTROYERMAXSPEEDUPGRADE2, 2 )
	
	local numShipyards = NumSquadrons(kShipYard) + NumSquadronsQ(kShipYard)
	if (numShipyards > 0 and Util_CheckResearch(KPRDREADNAUGHTTECH)) then
		local battleCruiserDemand = ShipDemandGet( KPR_DREADNAUGHT )
		if (battleCruiserDemand > 0) then
			ResearchDemandSet( KPRDREADNAUGHTTECH, battleCruiserDemand )
		end
	end
	local numShipyards = NumSquadrons(kShipYard) + NumSquadronsQ(kShipYard)
	if (numShipyards > 0 and Util_CheckResearch(KPRCAPITALWEAPONS)) then
		local battleCruiserDemand = ShipDemandGet( KPR_SAJUUK )
		if (battleCruiserDemand > 0) then
			ResearchDemandSet( KPRCAPITALWEAPONS, battleCruiserDemand )
		end
	end
	if (Util_CheckResearch(KPRDESTROYERTECH) ) then		
		local destroyerDemand = ShipDemandGet(KPR_DESTROYER)
		if (destroyerDemand > 0) then
			ResearchDemandSet( KPRDESTROYERTECH, destroyerDemand )
		end
	end
	if (Util_CheckResearch(KPRATTACKDROIDIMPROVEDBOMBS) ) then
		local numBombers = NumSquadrons( kBomber )
		if (numBombers > 2) then
			ResearchDemandSet( KPRATTACKDROIDIMPROVEDBOMBS, numBombers )
			end
		end
	end
DoUpgradeDemand = DoUpgradeDemand_Keeper
DoResearchTechDemand = DoResearchTechDemand_Keeper
