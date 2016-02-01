aitrace("LOADING TAIIDAN UPGRADE INFO")
rt_mothership = {
	health = {
		SUPERCAPHEALTHUPGRADE1,
		SUPERCAPHEALTHUPGRADE2,
	},
	speed = {
		SUPERCAPSPEEDUPGRADE1,
		SUPERCAPSPEEDUPGRADE2,
	}
}
rt_carrier = {
	health = {
		SUPERCAPHEALTHUPGRADE1,
		SUPERCAPHEALTHUPGRADE2,
	},
	speed = {
		SUPERCAPSPEEDUPGRADE1,
		SUPERCAPSPEEDUPGRADE2,
	},
}
rt_fighter = {
	scout = {
		FIGHTERHEALTHUPGRADE1,
		FIGHTERHEALTHUPGRADE2,
		FIGHTERSPEEDUPGRADE1,
		FIGHTERSPEEDUPGRADE2,
	},
	interceptor = {
		FIGHTERHEALTHUPGRADE1,
		FIGHTERHEALTHUPGRADE2,
		FIGHTERSPEEDUPGRADE1,
		FIGHTERSPEEDUPGRADE2,
	},
	bomber = {
		FIGHTERSPEEDUPGRADE1,
		FIGHTERSPEEDUPGRADE2,
	},
	defender = {
		FIGHTERHEALTHUPGRADE1,
		FIGHTERHEALTHUPGRADE2,
		FIGHTERSPEEDUPGRADE1,
		FIGHTERSPEEDUPGRADE2,
	},
	defensef = {
		FIGHTERHEALTHUPGRADE1,
		FIGHTERHEALTHUPGRADE2,
		FIGHTERSPEEDUPGRADE1,
		FIGHTERSPEEDUPGRADE2,
	},
}
rt_corvette = {
	repair = {
			CORVETTEHEALTHUPGRADE1,
			CORVETTEHEALTHUPGRADE2,
			CORVETTESPEEDUPGRADE1,
			CORVETTESPEEDUPGRADE2,
	},
	salvage = {
			CORVETTEHEALTHUPGRADE1,
			CORVETTEHEALTHUPGRADE2,
			CORVETTESPEEDUPGRADE1,
			CORVETTESPEEDUPGRADE2,
	},
	light = {
			CORVETTEHEALTHUPGRADE1,
			CORVETTEHEALTHUPGRADE2,
			CORVETTESPEEDUPGRADE1,
			CORVETTESPEEDUPGRADE2,
	},
	heavy = {
			CORVETTEHEALTHUPGRADE1,
			CORVETTEHEALTHUPGRADE2,
			CORVETTESPEEDUPGRADE1,
			CORVETTESPEEDUPGRADE2,
	},
	multi = {
			CORVETTEHEALTHUPGRADE1,
			CORVETTEHEALTHUPGRADE2,
			CORVETTESPEEDUPGRADE1,
			CORVETTESPEEDUPGRADE2,
	},
	mine = {
			CORVETTEHEALTHUPGRADE1,
			CORVETTEHEALTHUPGRADE2,
			CORVETTESPEEDUPGRADE1,
			CORVETTESPEEDUPGRADE2,
	},
}
rt_frigate = {
	ioncannon = {
		health = {
			FRIGATEHEALTHUPGRADE1,
			FRIGATEHEALTHUPGRADE2,
		},
		speed = {
			FRIGATESPEEDUPGRADE1,
			FRIGATESPEEDUPGRADE2,
		},
	},
	assault = {
		health = {
			RIGATEHEALTHUPGRADE1,
			FRIGATEHEALTHUPGRADE2,
		},
		speed = {
			FRIGATESPEEDUPGRADE1,
			FRIGATESPEEDUPGRADE2,
		},
	},
	field = {
		health = {
			FRIGATEHEALTHUPGRADE1,
			FRIGATEHEALTHUPGRADE2,
		},
		speed = {
			FRIGATESPEEDUPGRADE1,
			FRIGATESPEEDUPGRADE2,
		},
	},
}
rt_heavycruiser = {
	health = {
		SUPERCAPHEALTHUPGRADE1,
		SUPERCAPHEALTHUPGRADE2,
	},
	speed = {
		SUPERCAPSPEEDUPGRADE1,
		SUPERCAPSPEEDUPGRADE2,
	},
}
rt_destroyer = {
	SUPERCAPHEALTHUPGRADE1,
	SUPERCAPHEALTHUPGRADE2,
	SUPERCAPSPEEDUPGRADE1,
	SUPERCAPSPEEDUPGRADE2	,
}
rt_missiledestroyer = {
	SUPERCAPHEALTHUPGRADE1,
	SUPERCAPHEALTHUPGRADE2,
	SUPERCAPSPEEDUPGRADE1,
	SUPERCAPSPEEDUPGRADE2	,
}
rt_platform = {
	gunturret = {
		GUNTURRETHEALTHUPGRADE1,
		GUNTURRETHEALTHUPGRADE2,
	},
	ionturret = {
		IONTURRETHEALTHUPGRADE1,
		IONTURRETHEALTHUPGRADE2,
	},
}
rt_collector = {
	RESOURCECOLLECTORHEALTHUPGRADE1,
	RESOURCECOLLECTORHEALTHUPGRADE2,
}
rt_refinery = {
	RESOURCECONTROLLERHEALTHUPGRADE1,
	RESOURCECONTROLLERHEALTHUPGRADE2,
}
rt_hyperspace = {
		HYPERSPACE,

}

function DoUpgradeDemand_Taiidan()	
	local numFighter = numActiveOfClass( s_playerIndex, eFighter )
	if (numFighter > 1) then
		local numScout = NumSquadrons( TAI_SCOUT )
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
		local numDefenders = NumSquadrons( TAI_DEFENDER )
		if (numDefenders > 1) then
			inc_upgrade_demand( rt_fighter.defender, numDefenders*1.5 )
		end
		local numDefensef = NumSquadrons( TAI_DEFENSEFIGHTER )
		if (numDefensef > 1) then
			inc_upgrade_demand( rt_fighter.defensef, numDefensef*1.5 )
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
		local numRepairCorvette = NumSquadrons( TAI_REPAIRCORVETTE )
		if (numRepairCorvette>2) then
			inc_upgrade_demand( rt_corvette.repair, numRepairCorvette*1.25 )
		end
		local numSalvageCorvette = NumSquadrons( TAI_SALVAGECORVETTE )
		if (numSalvageCorvette>2) then
			inc_upgrade_demand( rt_corvette.salvage, numSalvageCorvette*1.25 )
		end
		local numLightCorvette = NumSquadrons( TAI_LIGHTCORVETTE )
		if (numLightCorvette>2) then
			inc_upgrade_demand( rt_corvette.light, numLightCorvette*1.25 )
		end
		local numHeavyCorvette = NumSquadrons( TAI_HEAVYCORVETTE )
		if (numHeavyCorvette>2) then
			inc_upgrade_demand( rt_corvette.heavy, numHeavyCorvette*1.25 )
		end
		local numMultigunCorvette = NumSquadrons( TAI_MULTIGUNCORVETTE )
		if (numMultigunCorvette>2) then
			inc_upgrade_demand( rt_corvette.multi, numMultigunCorvette*1.25 )
		end
		local numMinelayerCorvette = NumSquadrons( TAI_MINELAYERCORVETTE )
		if (numMinelayerCorvette>2) then
			inc_upgrade_demand( rt_corvette.mine, numMinelayerCorvette*1.25 )
		end
	end
	local numFrigate = numActiveOfClass( s_playerIndex, eFrigate )
	if (numFrigate > 2) then
		local numIonFrigate = NumSquadrons( TAI_IONCANNONFRIGATE )
		if (numIonFrigate>2) then
			inc_upgrade_demand( rt_frigate.ioncannon, numIonFrigate*1.5 )
		end
		local numAssaultFrigate = NumSquadrons( TAI_ASSAULTFRIGATE )
		if (numAssaultFrigate>2) then
			inc_upgrade_demand( rt_frigate.assault, numAssaultFrigate*1.5 )
		end
		local numFieldFrigate = NumSquadrons( TAI_FIELDFRIGATE )
		if (numFieldFrigate>2) then
			inc_upgrade_demand( rt_frigate.field, numFieldFrigate*1.5 )
		end
	end
end

function DoResearchTechDemand_Taiidan()	
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
		local demand = ShipDemandGet(TAI_ATTACKBOMBER)
		if (demand > 0) then
			ResearchDemandSet( PLASMABOMBLAUNCHER, demand ) 
		end
	end
	if (Util_CheckResearch(DEFENDERSUBSYSTEMS)) then
		local demand = ShipDemandGet(TAI_DEFENDER)
		if (demand > 0) then
			ResearchDemandSet( DEFENDERSUBSYSTEMS, demand )
		end
	end
	if (Util_CheckResearch(HEAVYCORVETTEUPGRADE)) then
		local demand = ShipDemandGet(TAI_HEAVYCORVETTE)
		if (demand > 0) then
			ResearchDemandSet( HEAVYCORVETTEUPGRADE, demand )
		end
	end
	if (Util_CheckResearch(FASTTRACKINGTURRETS)) then
		local demand = ShipDemandGet(TAI_MULTIGUNCORVETTE)
		if (demand > 0) then
			ResearchDemandSet( FASTTRACKINGTURRETS, demand )
		end
	end
	if (Util_CheckResearch(MINELAYINGTECH)) then
		local demand = ShipDemandGet(TAI_MINELAYERCORVETTE)
		if (demand > 0) then
			ResearchDemandSet( MINELAYINGTECH, demand )
		end
	end
	if (Util_CheckResearch(IONCANNONS)) then
		local demand = ShipDemandGet(TAI_IONCANNONFRIGATE) +ShipDemandGet(TAI_DESTROYER) + ShipDemandGet(TAI_HEAVYCRUISER)
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
		local demand = ShipDemandGet(TAI_DESTROYER)
		if (demand > 0) then
			ResearchDemandSet( GUIDEDMISSILES, demand )
		end
	end
	if (Util_CheckResearch(SUPERHEAVYCHASSIS)) then
		local demand = ShipDemandGet(TAI_CARRIER) + ShipDemandGet(TAI_HEAVYCRUISER)
		if (demand > 0) then
			ResearchDemandSet( SUPERHEAVYCHASSIS, demand )
		end
	end
	if (s_militaryPop > 15 and GetRU() > 750) then	
		if (Util_CheckResearch(DEFENSEFIGHTER)) then
			local demand = ShipDemandGet(TAI_DEFENSEFIGHTER)
			if (demand > 0) then
				ResearchDemandSet( DEFENSEFIGHTER, demand )
			end
		end
		if (Util_CheckResearch(DEFENSEFIELD)) then
			local demand = ShipDemandGet(TAI_FIELDFRIGATE)
			if (demand > 0) then
				ResearchDemandSet( DEFENSEFIELD, demand )
			end
		end
		if (Util_CheckResearch(HYPERSPACE)) then
			local demand = ShipDemandGet(TAI_DESTROYER)
			if (demand > 0) then
				ResearchDemandSet( HYPERSPACE, demand+0.5 )
			end
		end	
	end		
end

DoUpgradeDemand = DoUpgradeDemand_Taiidan
DoResearchTechDemand = DoResearchTechDemand_Taiidan
