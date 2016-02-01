aitrace("LOADING TURANIC UPGRADE INFO");

rt_mothership={
		health={
			PRTSUPERCAPHEALTHUPGRADE1,
			PRTSUPERCAPHEALTHUPGRADE2},
		
		speed={
			PRTSUPERCAPSPEEDUPGRADE1,
			PRTSUPERCAPSPEEDUPGRADE2}};

rt_carrier={
		health={
			PRTSUPERCAPHEALTHUPGRADE1,
			PRTSUPERCAPHEALTHUPGRADE2},

		speed={
			PRTSUPERCAPSPEEDUPGRADE1,
			PRTSUPERCAPSPEEDUPGRADE2}};

rt_fighter={
	interceptor={
			FIGHTERHEALTHUPGRADE1,
			FIGHTERHEALTHUPGRADE2,
			PRTFIGHTERSPEEDUPGRADE1,
			PRTFIGHTERSPEEDUPGRADE2},
	bomber={
		speed={
			FIGHTERHEALTHUPGRADE1,
			FIGHTERHEALTHUPGRADE2,
			PRTFIGHTERSPEEDUPGRADE1,
			PRTFIGHTERSPEEDUPGRADE2}}};

rt_corvette={
	mine={
		health={
			PRTCORVETTEHEALTHUPGRADE1,
			PRTCORVETTEHEALTHUPGRADE2},
		speed={
			PRTCORVETTESPEEDUPGRADE1,
			PRTCORVETTESPEEDUPGRADE2}},
	assault={
		health={
			PRTCORVETTEHEALTHUPGRADE1,
			PRTCORVETTEHEALTHUPGRADE2},
		speed={
			PRTCORVETTESPEEDUPGRADE1,
			PRTCORVETTESPEEDUPGRADE2}},
	salvage={
		health={
			PRTCORVETTEHEALTHUPGRADE1,
			PRTCORVETTEHEALTHUPGRADE2},
		speed={
			PRTCORVETTESPEEDUPGRADE1,
			PRTCORVETTESPEEDUPGRADE2}},
	pulsar={
		health={
			PRTCORVETTEHEALTHUPGRADE1,
			PRTCORVETTEHEALTHUPGRADE2},
		speed={
			PRTCORVETTESPEEDUPGRADE1,
			PRTCORVETTESPEEDUPGRADE2}}};

rt_frigate={
	ioncannon={
		health={
			PRTFRIGATEHEALTHUPGRADE1,
			PRTFRIGATEHEALTHUPGRADE2},
		speed={
			PRTFRIGATESPEEDUPGRADE1,
			PRTFRIGATESPEEDUPGRADE2}},
	plasma={
		health={
			PRTFRIGATEHEALTHUPGRADE1,
			PRTFRIGATEHEALTHUPGRADE2},
		speed={
			PRTFRIGATESPEEDUPGRADE1,
			PRTFRIGATESPEEDUPGRADE2}},
	assault={
		health={
			PRTFRIGATEHEALTHUPGRADE1,
			PRTFRIGATEHEALTHUPGRADE2},
		speed={
			PRTFRIGATESPEEDUPGRADE1,
			PRTFRIGATESPEEDUPGRADE2}}};
rt_battlecruiser={
		health={
			PRTSUPERCAPHEALTHUPGRADE1,
			PRTSUPERCAPHEALTHUPGRADE2},
		speed={
			PRTSUPERCAPSPEEDUPGRADE1,
			PRTSUPERCAPSPEEDUPGRADE2}};
rt_destroyer={
		PRTSUPERCAPHEALTHUPGRADE1,
		PRTSUPERCAPHEALTHUPGRADE2,
		PRTSUPERCAPSPEEDUPGRADE1,
		PRTSUPERCAPSPEEDUPGRADE2};
rt_shipyard={
		health={
			PRTSUPERCAPHEALTHUPGRADE1,
			PRTSUPERCAPHEALTHUPGRADE2},
		speed={
			PRTSUPERCAPSPEEDUPGRADE1,
			PRTSUPERCAPSPEEDUPGRADE2}};
rt_platform={
	gunturret={
		PRTPLATFORMHEALTHUPGRADE1,
		PRTPLATFORMHEALTHUPGRADE2},
	ionturret={
		PRTPLATFORMHEALTHUPGRADE1,
		PRTPLATFORMHEALTHUPGRADE2}};

rt_collector={
	PRTUTILITYHEALTHUPGRADE1,
	PRTUTILITYHEALTHUPGRADE2};

rt_refinery={
		PRTUTILITYHEALTHUPGRADE1,
		PRTUTILITYHEALTHUPGRADE2};

rt_hyperspace={
	cost={
		PRTHYPERSPACECOSTUPGRADE1,
		PRTHYPERSPACECOSTUPGRADE2},
	transittime={
		PRTHYPERSPACETRANSITTIMEUPGRADE1,
		PRTHYPERSPACETRANSITTIMEUPGRADE2}};


function DoResearchTechDemand_Turanic()

	ResearchDemandSet( FIGHTERHEALTHUPGRADE1, 5 )
	ResearchDemandSet( FIGHTERHEALTHUPGRADE2, 5 )
	ResearchDemandSet( PRTFIGHTERSPEEDUPGRADE1, 5 )
	ResearchDemandSet( PRTFIGHTERSPEEDUPGRADE2, 5 )
	ResearchDemandSet( PRTCORVETTEHEALTHUPGRADE1, 2 )
	ResearchDemandSet( PRTCORVETTEHEALTHUPGRADE2, 2 )	
	ResearchDemandSet( PRTCORVETTESPEEDUPGRADE1, 2 )	
	ResearchDemandSet( PRTCORVETTESPEEDUPGRADE2, 2 )	
	ResearchDemandSet( PRTFRIGATEHEALTHUPGRADE1, 2 )
	ResearchDemandSet( PRTFRIGATEHEALTHUPGRADE2, 2 )
	ResearchDemandSet( PRTFRIGATESPEEDUPGRADE1, 2 )
	ResearchDemandSet( PRTFRIGATESPEEDUPGRADE2, 5 )
	
	if (Util_CheckResearch(PRTFIGHTERDRIVE)) then
		local scoutdemand = ShipDemandMaxByClass( eScout )
		local fighterdemand = ShipDemandMaxByClass( eFighter )
		if scoutdemand < fighterdemand then
			scoutdemand = fighterdemand
		end
		if (scoutdemand > 0) then
			ResearchDemandSet( PRTFIGHTERDRIVE, scoutdemand + 1 )
		end
	end
	if (Util_CheckResearch(PRTFIGHTERCHASSIS)) then
		local fighterdemand = ShipDemandMaxByClass( eFighter )
		if (fighterdemand > 0) then
			ResearchDemandSet( PRTFIGHTERCHASSIS, fighterdemand + 1 )
		end
	end	
	if (Util_CheckResearch(PRTPLASMABOMBLAUNCHER) ) then
		local bomberdemand = ShipDemandGet( TUR_ATTACKBOMBER )
		if (bomberdemand > 0) then
			ResearchDemandSet( PRTPLASMABOMBLAUNCHER, bomberdemand+1.5 )
		end
	end
	if (Util_CheckResearch(PRTCORVETTEDRIVE) ) then
		local corvdemand = ShipDemandMaxByClass( eCorvette )
		if (corvdemand > 0) then
			ResearchDemandSet( PRTCORVETTEDRIVE, corvdemand )
			if NumSquadrons( eFighter ) > 3 then
				ResearchDemandSet( PRTCORVETTEDRIVE, corvdemand + 0.5 )
			end
		end
	end	
	if (Util_CheckResearch(PRTCORVETTECHASSIS) ) then
		local corvdemand = ShipDemandMaxByClass( eCorvette )
		if (corvdemand > 0) then
			ResearchDemandSet( PRTCORVETTECHASSIS, corvdemand )
		end
	end
	if (Util_CheckResearch(PRTHEAVYCORVETTEUPGRADE)) then
		local heavycodemand = ShipDemandGet(TUR_MISSILECORVETTE)
		if (heavycodemand > 0) then
			ResearchDemandSet( PRTHEAVYCORVETTEUPGRADE, heavycodemand )
		end
	end
	if (Util_CheckResearch(PRTCAPITALSHIPDRIVE) ) then
		local frigdemand = ShipDemandMaxByClass( eFrigate )
		if (frigdemand > 0) then
			ResearchDemandSet( PRTCAPITALSHIPDRIVE, frigdemand+0.75 )
		end
	end
	if (Util_CheckResearch(PRTCAPITALSHIPCHASSIS) ) then
		local frigdemand = ShipDemandMaxByClass( eFrigate )
		if (frigdemand > 0) then
			ResearchDemandSet( PRTCAPITALSHIPCHASSIS, frigdemand+0.75 )
		end
	end	
	if (Util_CheckResearch(PRTIONCANNONS) ) then
		local IoncannonDemand = ShipDemandGet( TUR_IONARRAYFRIGATE )
		if (IoncannonDemand > 0) then
			ResearchDemandSet( PRTIONCANNONS, IoncannonDemand + 1 )
		end
	end
	if (Util_CheckResearch(PRTQUADPLASMA) ) then
		local IoncannonDemand = ShipDemandGet( TUR_PLASMAFRIGATE )
		if (IoncannonDemand > 0) then
			ResearchDemandSet( PRTQUADPLASMA, IoncannonDemand + 1 )
		end
	end
	if (Util_CheckResearch(PRTSUPERHEAVYCHASSIS) ) then
		local CarrierDemand = ShipDemandGet( TUR_CARRIER )
		if (CarrierDemand > 0) then
			ResearchDemandSet( PRTSUPERHEAVYCHASSIS, CarrierDemand )
		end
	end

	if (Util_CheckResearch(PRTHYPERSPACETECH)) then
		local demand = ShipDemandGet( TUR_OUTPOST )
		if (demand > 0) then
			ResearchDemandSet( PRTHYPERSPACETECH, demand-0.5 )
		end
	end
	local numShipyards = NumSquadrons(kShipYard) + NumSquadronsQ(kShipYard)
	-- battle cruiser ion weapons - required for battle cruiser to build - piggy backs its demand
	if (numShipyards > 0 and Util_CheckResearch(PRTHEAVYGUNS)) then
		local battleCruiserDemand = ShipDemandGet( TUR_HEAVYCRUISER )
		if (battleCruiserDemand > 0) then
			ResearchDemandSet( PRTHEAVYGUNS, battleCruiserDemand )
		end
	end
	if (Util_CheckResearch(PRTSUPERCAPITALSHIPDRIVE) ) then
		-- get the demand for destroyer
		local destroyerDemand = ShipDemandGet(TUR_DESTROYER)
		if (destroyerDemand > 0) then
			ResearchDemandSet( PRTSUPERCAPITALSHIPDRIVE, destroyerDemand )
		end
	end
	if (Util_CheckResearch(PRTGUIDEDMISSILES) ) then
		-- get the demand for destroyer
		local destroyerDemand = ShipDemandGet(TUR_MISSILEDESTROYER)
		if (destroyerDemand > 0) then
			ResearchDemandSet( PRTGUIDEDMISSILES, destroyerDemand )
		end
	end
	if (Util_CheckResearch(PRTATTACKBOMBERIMPROVEDBOMBS) ) then
		local numBombers = NumSquadrons( kBomber )
		if (numBombers > 2) then
			ResearchDemandSet( PRTATTACKBOMBERIMPROVEDBOMBS, numBombers )
				end
			end
		end
			if (Util_CheckResearch(PRTMINELAYINGTECH) ) then
			local mineLayerDemand = ShipDemandGet(TUR_MINELAYERCORVETTE)
			if (mineLayerDemand > 0) then
				ResearchDemandSet( PRTMINELAYINGTECH, mineLayerDemand )
			end
		end
	function DoUpgradeDemand_Turanic()
	
		if (s_militaryStrength > 10 or g_LOD == 0) then
		inc_upgrade_demand( rt_mothership, 0.5  )
		ResearchDemandAdd( PRTMOTHERSHIPBUILDSPEEDUPGRADE1, 0.5 )
		ResearchDemandAdd( PRTMOTHERSHIPBUILDSPEEDUPGRADE2, 0.4 )
		end
		local numCollectors = NumSquadrons( kCollector )
		if (numCollectors > 0) then
			inc_upgrade_demand( rt_collector, numCollectors*1 )
		end
		local numRefinery = NumSquadrons( kRefinery )
		if (numRefinery > 0) then
			inc_upgrade_demand( rt_refinery, numRefinery*1.5 )
		end
		local numCarrier = NumSquadrons( kCarrier )
		if (numCarrier > 0) then
			inc_upgrade_demand( rt_carrier, numCarrier*1 )
			ResearchDemandAdd( PRTCARRIERBUILDSPEEDUPGRADE1, numCarrier*1.25 )
			ResearchDemandAdd( PRTCARRIERBUILDSPEEDUPGRADE2, numCarrier*1.15 )

		end
		local numShipYards = NumSquadrons( kShipYard )
		if (numShipYards > 0) then
			inc_upgrade_demand( rt_shipyard, numShipYards*1.5  )
			ResearchDemandAdd( PRTSHIPYARDBUILDSPEEDUPGRADE1, numShipYards*1.75 )
			ResearchDemandAdd( PRTSHIPYARDBUILDSPEEDUPGRADE1, numShipYards*1.65 )
			end
		end
	local numFighter = numActiveOfClass( s_playerIndex, eFighter )
	if (numFighter > 1) then
		-- interceptors
		local numInterceptors = NumSquadrons( kInterceptor )
		if (numInterceptors > 1) then
			inc_upgrade_demand( rt_fighter.interceptor, numInterceptors*1 )
		end
		-- bombers
		local numBombers = NumSquadrons( kBomber )
		if (numBombers > 1) then
			inc_upgrade_demand( rt_fighter.bomber, numBombers*1.5 )
		end
	end
	local numBattleCruiser = NumSquadrons( kBattleCruiser )
	if (numBattleCruiser > 0) then
		inc_upgrade_demand( rt_battlecruiser, numBattleCruiser*2.5  )
	end
	-- destroyer upgrades
	local numDestroyers = NumSquadrons( kDestroyer )
	if (numDestroyers > 0) then
		inc_upgrade_demand( rt_destroyer, numDestroyers*2  )
	end
	local numMissileDestroyers = NumSquadrons( kMissileDestroyer )
	if (numMissileDestroyers > 0) then
		inc_upgrade_demand( rt_missiledestroyer, numMissileDestroyers*2  )
	end
	-- do corvette upgrades
	local numCorvette = numActiveOfClass( s_playerIndex, eCorvette )
	if (numCorvette > 1) then
		local numMineCorvette = NumSquadrons( TUR_MINELAYERCORVETTE )
		if (numMineCorvette>2) then
			inc_upgrade_demand( rt_corvette.mine, numMineCorvette*1.25 )
		end
		local numAssaultCorvette = NumSquadrons( TUR_STANDARDCORVETTE )
		if (numAssaultCorvette>2) then
			inc_upgrade_demand( rt_corvette.assault, numAssaultCorvette*1.25 )
		end
		local numSalvageCorvette = NumSquadrons( TUR_SALVAGECORVETTE )
		if (numSalvageCorvette>2) then
			inc_upgrade_demand( rt_corvette.salvage, numSalvageCorvette*1.25 )
		end
		local numPulsarCorvette = NumSquadrons( TUR_MISSILECORVETTE )
		if (numPulsarCorvette>2) then
			inc_upgrade_demand( rt_corvette.pulsar, numPulsarCorvette*1.25 )
		end
	end
	-- do frigate upgrades
	local numFrigate = numActiveOfClass( s_playerIndex, eFrigate )
	if (numFrigate > 2) then
		local numIonFrigate = NumSquadrons( TUR_IONARRAYFRIGATE )
		if (numIonFrigate>2) then
			inc_upgrade_demand( rt_frigate.ioncannon, numIonFrigate*1.5 )
		end
		local numPlasmaFrigate = NumSquadrons( TUR_PLASMAFRIGATE )
		if (numPlasmaFrigate>2) then
			inc_upgrade_demand( rt_frigate.plasma, numPlasmaFrigate*1.5 )
		end
		local numAssaultFrigate = NumSquadrons( TUR_STANDARDFRIGATE )
		if (numAssaultFrigate>2) then
			inc_upgrade_demand( rt_frigate.assault, numAssaultFrigate*1.5 )
		end
	end
DoUpgradeDemand = DoUpgradeDemand_Turanic
DoResearchTechDemand = DoResearchTechDemand_Turanic
