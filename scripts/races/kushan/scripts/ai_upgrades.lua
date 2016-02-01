aitrace("LOADING KUSHAN UPGRADE INFO")
rt_mothership = {
	health = {
		KSHSUPERCAPHEALTHUPGRADE1,
		KSHSUPERCAPHEALTHUPGRADE2,
	},
	speed = {
		KSHSUPERCAPSPEEDUPGRADE1,
		KSHSUPERCAPSPEEDUPGRADE2,
	}
}
rt_carrier = {
	health = {
		KSHSUPERCAPHEALTHUPGRADE1,
		KSHSUPERCAPHEALTHUPGRADE2,
	},
	speed = {
		KSHSUPERCAPSPEEDUPGRADE1,
		KSHSUPERCAPSPEEDUPGRADE2,
	},
}
rt_fighter = {
	scout = {
		FIGHTERHEALTHUPGRADE1,
		FIGHTERHEALTHUPGRADE2,
		KSHFIGHTERSPEEDUPGRADE1,
		KSHFIGHTERSPEEDUPGRADE2,
	},
	interceptor = {
		FIGHTERHEALTHUPGRADE1,
		FIGHTERHEALTHUPGRADE2,
		KSHFIGHTERSPEEDUPGRADE1,
		KSHFIGHTERSPEEDUPGRADE2,
	},
	bomber = {
		FIGHTERHEALTHUPGRADE1,
		FIGHTERHEALTHUPGRADE2,
		KSHFIGHTERSPEEDUPGRADE1,
		KSHFIGHTERSPEEDUPGRADE2,
	},
	defender = {
		FIGHTERHEALTHUPGRADE1,
		FIGHTERHEALTHUPGRADE2,
		KSHFIGHTERSPEEDUPGRADE1,
		KSHFIGHTERSPEEDUPGRADE2,
	},
	cloaker = {
		FIGHTERHEALTHUPGRADE1,
		FIGHTERHEALTHUPGRADE2,
		KSHFIGHTERSPEEDUPGRADE1,
		KSHFIGHTERSPEEDUPGRADE2,
	},
}
rt_corvette = {
	repair = {
			KSHCORVETTEHEALTHUPGRADE1,
			KSHCORVETTEHEALTHUPGRADE2,
			KSHCORVETTESPEEDUPGRADE1,
			KSHCORVETTESPEEDUPGRADE2,
	},
	salvage = {
			KSHCORVETTEHEALTHUPGRADE1,
			KSHCORVETTEHEALTHUPGRADE2,
			KSHCORVETTESPEEDUPGRADE1,
			KSHCORVETTESPEEDUPGRADE2,
	},
	light = {
			KSHCORVETTEHEALTHUPGRADE1,
			KSHCORVETTEHEALTHUPGRADE2,
			KSHCORVETTESPEEDUPGRADE1,
			KSHCORVETTESPEEDUPGRADE2,
	},
	heavy = {
			KSHCORVETTEHEALTHUPGRADE1,
			KSHCORVETTEHEALTHUPGRADE2,
			KSHCORVETTESPEEDUPGRADE1,
			KSHCORVETTESPEEDUPGRADE2,
	},
	multi = {
			KSHCORVETTEHEALTHUPGRADE1,
			KSHCORVETTEHEALTHUPGRADE,
			KSHCORVETTESPEEDUPGRADE1,
			KSHCORVETTESPEEDUPGRADE2,
	},
	mine = {
			KSHCORVETTEHEALTHUPGRADE1,
			KSHCORVETTEHEALTHUPGRADE2,
			KSHCORVETTESPEEDUPGRADE1,
			KSHCORVETTESPEEDUPGRADE2,
	},
}
rt_frigate = {
	support = {
		health = {
			KSHFRIGATEHEALTHUPGRADE1,
			KSHFRIGATEHEALTHUPGRADE2,
		},
		speed = {
			KSHFRIGATESPEEDUPGRADE1,
			KSHFRIGATESPEEDUPGRADE2,
		},
	},
	ioncannon = {
		health = {
			KSHFRIGATEHEALTHUPGRADE1,
			KSHFRIGATEHEALTHUPGRADE2,
		},
		speed = {
			KSHFRIGATESPEEDUPGRADE1,
			KSHFRIGATESPEEDUPGRADE2,
		},
	},
	assault = {
		health = {
			KSHFRIGATEHEALTHUPGRADE1,
			KSHFRIGATEHEALTHUPGRADE2,
		},
		speed = {
			KSHFRIGATESPEEDUPGRADE1,
			KSHFRIGATESPEEDUPGRADE2,
		},
	},
	drone = {
		health = {
			KSHFRIGATEHEALTHUPGRADE1,
			KSHFRIGATEHEALTHUPGRADE2,
		},
		speed = {
			KSHFRIGATESPEEDUPGRADE1,
			KSHFRIGATESPEEDUPGRADE2,
		},
	},
}
rt_heavycruiser = {
	health = {
		KSHSUPERCAPHEALTHUPGRADE1,
		KSHSUPERCAPHEALTHUPGRADE2,
	},
	speed = {
		KSHSUPERCAPSPEEDUPGRADE1,
		KSHSUPERCAPSPEEDUPGRADE2,
	},
}
rt_destroyer = {
	KSHSUPERCAPHEALTHUPGRADE1,
	KSHSUPERCAPHEALTHUPGRADE2,
	KSHSUPERCAPSPEEDUPGRADE1,
	KSHSUPERCAPSPEEDUPGRADE2,
}
rt_missiledestroyer = {
	KSHSUPERCAPHEALTHUPGRADE1,
	KSHSUPERCAPHEALTHUPGRADE2,
	KSHSUPERCAPSPEEDUPGRADE1,
	KSHSUPERCAPSPEEDUPGRADE2,
}
rt_platform = {
	gunturret = {
		KSHGUNTURRETHEALTHUPGRADE1,
		KSHGUNTURRETHEALTHUPGRADE2,
	},
	ionturret = {
		KSHIONTURRETHEALTHUPGRADE1,
		KSHIONTURRETHEALTHUPGRADE2,
	},
}
rt_collector = {
	KSHRESOURCECOLLECTORHEALTHUPGRADE1,
	KSHRESOURCECOLLECTORHEALTHUPGRADE2,
}
rt_refinery = {
	KSHRESOURCECONTROLLERHEALTHUPGRADE1,
	KSHRESOURCECONTROLLERHEALTHUPGRADE2,
}
rt_hyperspace = {
		HYPERSPACE,

}

function DoUpgradeDemand_Kushan()	
	local numFighter = numActiveOfClass( s_playerIndex, eFighter )
	if (numFighter > 1) then
		local numScout = NumSquadrons( KUS_SCOUT )
		if (numScout > 1) then
			inc_upgrade_demand( rt_fighter.scout, numScout*1 )
		end
		local numInterceptors = NumSquadrons( kInterceptor )
		if (numInterceptors > 1) then
			inc_upgrade_demand( rt_fighter.interceptor, numInterceptors*1 )
		end
		local numBombers = NumSquadrons( kBomber )
		if (numBombers > 1) then
			inc_upgrade_demand( rt_fighter.bomber, numBombers*1.5 )
			if (numBombers > 2) then
				if (Util_CheckResearch(ATTACKBOMBERIMPROVEDBOMBS) ) then
					ResearchDemandSet( ATTACKBOMBERIMPROVEDBOMBS, numBombers )
				end
			end
		end
		local numDefenders = NumSquadrons( KUS_DEFENDER )
		if (numDefenders > 1) then
			inc_upgrade_demand( rt_fighter.defender, numDefenders*1.5 )
		end
		local numCloaker = NumSquadrons( KUS_CLOAKEDFIGHTER )
		if (numCloaker > 1) then
			inc_upgrade_demand( rt_fighter.cloaker, numCloaker*1.5 )
		end
	end
	local numCarriers = NumSquadrons( kCarrier )
	if (numCarriers > 0) then
		inc_upgrade_demand( rt_carrier, numCarriers*1.25  )
	end
	local numHeavyCruiser = NumSquadrons( kBattleCruiser )
	if (numHeavyCruiser > 0) then
		inc_upgrade_demand( rt_heavycruiser, numHeavyCruiser*2.5  )
	end
	local numDestroyers = NumSquadrons( kDestroyer )
	if (numDestroyers > 0) then
		inc_upgrade_demand( rt_destroyer, numDestroyers*2  )
	end
	local numMissileDestroyers = NumSquadrons( kMissileDestroyer )
	if (numMissileDestroyers > 0) then
		inc_upgrade_demand( rt_missiledestroyer, numMissileDestroyers*2  )
	end
	local numCorvette = numActiveOfClass( s_playerIndex, eCorvette )
	if (numCorvette > 1) then
		local numRepairCorvette = NumSquadrons( KUS_REPAIRCORVETTE )
		if (numRepairCorvette>2) then
			inc_upgrade_demand( rt_corvette.repair, numRepairCorvette*1.25 )
		end
		local numSalvageCorvette = NumSquadrons( KUS_SALVAGECORVETTE )
		if (numSalvageCorvette>2) then
			inc_upgrade_demand( rt_corvette.salvage, numSalvageCorvette*1.25 )
		end
		local numLightCorvette = NumSquadrons( KUS_LIGHTCORVETTE )
		if (numLightCorvette>2) then
			inc_upgrade_demand( rt_corvette.light, numLightCorvette*1.25 )
		end
		local numHeavyCorvette = NumSquadrons( KUS_HEAVYCORVETTE )
		if (numHeavyCorvette>2) then
			inc_upgrade_demand( rt_corvette.heavy, numHeavyCorvette*1.25 )
		end
		local numMultigunCorvette = NumSquadrons( KUS_MULTIGUNCORVETTE )
		if (numMultigunCorvette>2) then
			inc_upgrade_demand( rt_corvette.multi, numMultigunCorvette*1.25 )
		end
		local numMinelayerCorvette = NumSquadrons( KUS_MINELAYERCORVETTE )
		if (numMinelayerCorvette>2) then
			inc_upgrade_demand( rt_corvette.mine, numMinelayerCorvette*1.25 )
		end
	end
	local numFrigate = numActiveOfClass( s_playerIndex, eFrigate )
	if (numFrigate > 2) then
		local numSupportFrigate = NumSquadrons( KUS_SUPPORTFRIGATE )
		if (numSupportFrigate>2) then
			inc_upgrade_demand( rt_frigate.support, numSupportFrigate*1.5 )
		end
		local numIonFrigate = NumSquadrons( KUS_IONCANNONFRIGATE )
		if (numIonFrigate>2) then
			inc_upgrade_demand( rt_frigate.ioncannon, numIonFrigate*1.5 )
		end
		local numAssaultFrigate = NumSquadrons( KUS_ASSAULTFRIGATE )
		if (numAssaultFrigate>2) then
			inc_upgrade_demand( rt_frigate.assault, numAssaultFrigate*1.5 )
		end
		local numDroneFrigate = NumSquadrons( KUS_DRONEFRIGATE )
		if (numDroneFrigate>2) then
			inc_upgrade_demand( rt_frigate.drone, numDroneFrigate*1.5 )
		end
	end
end

function DoResearchTechDemand_Kushan()	
	ResearchDemandSet( FIGHTERDRIVE, 10 )
	ResearchDemandSet( CORVETTEDRIVE, 9 )
	ResearchDemandSet( CAPITALSHIPDRIVE, 8 )
	ResearchDemandSet( SUPERCAPITALSHIPDRIVE, 4 )
	ResearchDemandSet( FIGHTERCHASSIS, 7 )
	ResearchDemandSet( CORVETTECHASSIS, 6 )
	ResearchDemandSet( CAPITALSHIPCHASSIS, 5 )	
	ResearchDemandSet( GRAVITYGENERATOR, 3 )	
	ResearchDemandSet( PROXIMITYSENSOR, 2 )	
	ResearchDemandSet( SENSORARRAY, 2 )	  	
	ResearchDemandSet( CLOAKGENERATOR, 1 )
	if (Util_CheckResearch(PLASMABOMBLAUNCHER)) then
		local demand = ShipDemandGet(KUS_ATTACKBOMBER)
		if (demand > 0) then
			ResearchDemandSet( PLASMABOMBLAUNCHER, demand )
		end
	end
	if (Util_CheckResearch(DEFENDERSUBSYSTEMS)) then
		local demand = ShipDemandGet(KUS_DEFENDER)
		if (demand > 0) then
			ResearchDemandSet( DEFENDERSUBSYSTEMS, demand )
		end
	end
	if (Util_CheckResearch(CLOAKEDFIGHTER)) then
		local demand = ShipDemandGet(KUS_CLOAKEDFIGHTER)
		if (demand > 0) then
			ResearchDemandSet( CLOAKEDFIGHTER, demand )
		end
	end
	if (Util_CheckResearch(HEAVYCORVETTEUPGRADE)) then
		local demand = ShipDemandGet(KUS_HEAVYCORVETTE)
		if (demand > 0) then
			ResearchDemandSet( HEAVYCORVETTEUPGRADE, demand )
		end
	end
	if (Util_CheckResearch(FASTTRACKINGTURRETS)) then
		local demand = ShipDemandGet(KUS_MULTIGUNCORVETTE)
		if (demand > 0) then
			ResearchDemandSet( FASTTRACKINGTURRETS, demand )
		end
	end
	if (Util_CheckResearch(MINELAYINGTECH)) then
		local demand = ShipDemandGet(KUS_MINELAYERCORVETTE)
		if (demand > 0) then
			ResearchDemandSet( MINELAYINGTECH, demand )
		end
	end
	if (Util_CheckResearch(IONCANNONS)) then
		local demand = ShipDemandGet(KUS_IONCANNONFRIGATE) + ShipDemandGet(KUS_DESTROYER) + ShipDemandGet(KUS_HEAVYCRUISER)
		if (demand > 0) then
			ResearchDemandSet( IONCANNONS, demand )
		end
	end
	local numShipyards = NumSquadrons(kShipYard) + NumSquadronsQ(kShipYard)
	if (numShipyards > 0 and Util_CheckResearch(HEAVYGUNS)) then
		local battleCruiserDemand = ShipDemandGet( kBattleCruiser )
		if (battleCruiserDemand > 0) then
			ResearchDemandSet( HEAVYGUNS, battleCruiserDemand )
		end
	end
	if (Util_CheckResearch(GUIDEDMISSILES)) then
		local demand = ShipDemandGet(KUS_DESTROYER)
		if (demand > 0) then
			ResearchDemandSet( GUIDEDMISSILES, demand )
		end
	end
	if (Util_CheckResearch(SUPERHEAVYCHASSIS)) then
		local demand = ShipDemandGet(KUS_CARRIER) + ShipDemandGet(KUS_HEAVYCRUISER)
		if (demand > 0) then
			ResearchDemandSet( SUPERHEAVYCHASSIS, demand )
		end
	end
	if (s_militaryPop > 15 and GetRU() > 750) then	
		if (Util_CheckResearch(DRONETECHNOLOGY)) then
			local demand = ShipDemandGet(KUS_DRONEFRIGATE)
			if (demand > 0) then
				ResearchDemandSet( DRONETECHNOLOGY, demand )
			end
		end
		if (Util_CheckResearch(HYPERSPACE)) then
			local demand = ShipDemandGet(KUS_DESTROYER)
			if (demand > 0) then
				ResearchDemandSet( HYPERSPACE, demand+0.5 )
			end
		end
	end	
	if (s_militaryPop > 16 and GetRU() > 1200) then	
		if (Util_CheckResearch(HEAVYGUNS)) then
			local demand = ShipDemandGet(KUS_HEAVYCRUISER)
			if (demand > 0) then
				ResearchDemandSet( HEAVYGUNS, demand )
			end
		end	
	end		
end

DoUpgradeDemand = DoUpgradeDemand_Kushan
DoResearchTechDemand = DoResearchTechDemand_Kushan
