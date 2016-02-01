aitrace("LOADING TAIIDAN UPGRADE INFO")
rt_mothership = {
	health = {
		MOTHERSHIPHEALTHUPGRADE1,
		MOTHERSHIPHEALTHUPGRADE2,
		MOTHERSHIPHW2HEALTHUPGRADE1,
		MOTHERSHIPHW2HEALTHUPGRADE2,
	},
	speed = {
		MOTHERSHIPMAXSPEEDUPGRADE1,
		MOTHERSHIPMAXSPEEDUPGRADE2,
	}
}
rt_carrier = {
	health = {
		CARRIERHEALTHUPGRADE1,
		CARRIERHEALTHUPGRADE2,
	},
	speed = {
		CARRIERMAXSPEEDUPGRADE1,
		CARRIERMAXSPEEDUPGRADE2,
	},
}
rt_fighter = {
	scout = {
		SCOUTMAXSPEEDUPGRADE1,
		SCOUTMAXSPEEDUPGRADE2,
	},
	interceptor = {
		INTERCEPTORMAXSPEEDUPGRADE1,
		INTERCEPTORMAXSPEEDUPGRADE2,
	},
	bomber = {
		ATTACKBOMBERMAXSPEEDUPGRADE1,
		ATTACKBOMBERMAXSPEEDUPGRADE2,
	},
	defender = {
		DEFENDERMAXSPEEDUPGRADE1,
		DEFENDERMAXSPEEDUPGRADE2,
	},
	defensef = {
		DEFENDERFMAXSPEEDUPGRADE1,
		DEFENDERFMAXSPEEDUPGRADE2,
	},
}
rt_corvette = {
	repair = {
			REPAIRCORVETTEMAXSPEEDUPGRADE1,
			REPAIRCORVETTEMAXSPEEDUPGRADE2,
	},
	salvage = {
			SALVAGECORVETTEMAXSPEEDUPGRADE1,
			SALVAGECORVETTEMAXSPEEDUPGRADE2,
	},
	light = {
			LIGHTCORVETTEMAXSPEEDUPGRADE1,
			LIGHTCORVETTEMAXSPEEDUPGRADE2,
	},
	heavy = {
			HEAVYCORVETTEMAXSPEEDUPGRADE1,
			HEAVYCORVETTEMAXSPEEDUPGRADE2,
	},
	multi = {
			MULTIGUNCORVETTEMAXSPEEDUPGRADE1,
			MULTIGUNCORVETTEMAXSPEEDUPGRADE2,
	},
	mine = {
			MINELAYERCORVETTEMAXSPEEDUPGRADE1,
			MINELAYERCORVETTEMAXSPEEDUPGRADE2,
	},
}
rt_frigate = {
	support = {
		health = {
			SUPPORTFRIGATEHEALTHUPGRADE1,
			SUPPORTFRIGATEHEALTHUPGRADE2,
		},
		speed = {
			SUPPORTFRIGATEMAXSPEEDUPGRADE1,
			SUPPORTFRIGATEMAXSPEEDUPGRADE2,
		},
	},
	ioncannon = {
		health = {
			IONCANNONFRIGATEHEALTHUPGRADE1,
			IONCANNONFRIGATEHEALTHUPGRADE2,
		},
		speed = {
			IONCANNONFRIGATEMAXSPEEDUPGRADE1,
			IONCANNONFRIGATEMAXSPEEDUPGRADE2,
		},
	},
	assault = {
		health = {
			ASSAULTFRIGATEHEALTHUPGRADE1,
			ASSAULTFRIGATEHEALTHUPGRADE2,
		},
		speed = {
			ASSAULTFRIGATEMAXSPEEDUPGRADE1,
			ASSAULTFRIGATEMAXSPEEDUPGRADE2,
		},
	},
	field = {
		health = {
			FIELDFRIGATEHEALTHUPGRADE1,
			FIELDFRIGATEHEALTHUPGRADE2,
		},
		speed = {
			FIELDFRIGATEMAXSPEEDUPGRADE1,
			FIELDFRIGATEMAXSPEEDUPGRADE2,
		},
	},
}
rt_heavycruiser = {
	health = {
		HEAVYCRUISERHEALTHUPGRADE1,
		HEAVYCRUISERHEALTHUPGRADE2,
	},
	speed = {
		HEAVYCRUISERMAXSPEEDUPGRADE1,
		HEAVYCRUISERMAXSPEEDUPGRADE2,
	},
}
rt_destroyer = {
	DESTROYERHEALTHUPGRADE1,
	DESTROYERHEALTHUPGRADE2,
	DESTROYERMAXSPEEDUPGRADE1,
	DESTROYERMAXSPEEDUPGRADE2	,
}
rt_missiledestroyer = {
	MISSILEDESTROYERHEALTHUPGRADE1,
	MISSILEDESTROYERHEALTHUPGRADE2,
	MISSILEDESTROYERMAXSPEEDUPGRADE1,
	MISSILEDESTROYERMAXSPEEDUPGRADE2	,
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
		local numScout = (NumSquadrons( TAI_SCOUT ) + (NumSquadrons( TAI_SCOUT5 )*5))
		if (numScout > 1) then
			inc_upgrade_demand( rt_fighter.scout, numScout*1 )
		end
		local numInterceptors = (NumSquadrons( kInterceptor ) + (NumSquadrons( kInterceptorSqd )*5))
		if (numInterceptors > 1) then
			inc_upgrade_demand( rt_fighter.interceptor, numInterceptors*1 )
		end
		local numBombers = (NumSquadrons( kBomber ) + (NumSquadrons( TAI_ATTACKBOMBER5 )*5))
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
	local numHeavyCruiser = NumSquadrons( kBattleCruiser ) + NumSquadrons( kBattleCruiserHw2 )
	if (numHeavyCruiser > 0) then
		inc_upgrade_demand( rt_heavycruiser, numHeavyCruiser*2.5  )
	end
	local numDestroyers = NumSquadrons( kDestroyer ) + NumSquadrons( kDestroyerHw2 )
	if (numDestroyers > 0) then
		inc_upgrade_demand( rt_destroyer, numDestroyers*2  )
	end
	local numMissileDestroyers = NumSquadrons( kMissileDestroyer ) + NumSquadrons( kMissileDestroyerHw2 )
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
		local numLightCorvette = NumSquadrons( TAI_LIGHTCORVETTE ) + (NumSquadrons( TAI_LIGHTCORVETTE3 )*3)
		if (numLightCorvette>2) then
			inc_upgrade_demand( rt_corvette.light, numLightCorvette*1.25 )
		end
		local numHeavyCorvette = NumSquadrons( TAI_HEAVYCORVETTE ) + (NumSquadrons( TAI_HEAVYCORVETTE3 )*3)
		if (numHeavyCorvette>2) then
			inc_upgrade_demand( rt_corvette.heavy, numHeavyCorvette*1.25 )
		end
		local numMultigunCorvette = NumSquadrons( TAI_MULTIGUNCORVETTE ) + (NumSquadrons( TAI_MULTIGUNCORVETTE3 )*3)
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
		local numSupportFrigate = NumSquadrons( TAI_SUPPORTFRIGATE ) + NumSquadrons( TAI_HW2SUPPORTFRIGATE )
		if (numSupportFrigate>2) then
			inc_upgrade_demand( rt_frigate.support, numSupportFrigate*1.5 )
		end
		local numIonFrigate = NumSquadrons( TAI_IONCANNONFRIGATE ) + NumSquadrons( TAI_HW2IONCANNONFRIGATE )
		if (numIonFrigate>2) then
			inc_upgrade_demand( rt_frigate.ioncannon, numIonFrigate*1.5 )
		end
		local numAssaultFrigate = NumSquadrons( TAI_ASSAULTFRIGATE ) + NumSquadrons( TAI_HW2ASSAULTFRIGATE )
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
		local demand = ShipDemandGet(TAI_ATTACKBOMBER) + (ShipDemandGet(TAI_ATTACKBOMBER5)*5)
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
		local demand = ShipDemandGet(TAI_HEAVYCORVETTE) + (ShipDemandGet(TAI_HEAVYCORVETTE3)*3)
		if (demand > 0) then
			ResearchDemandSet( HEAVYCORVETTEUPGRADE, demand )
		end
	end
	if (Util_CheckResearch(FASTTRACKINGTURRETS)) then
		local demand = ShipDemandGet(TAI_MULTIGUNCORVETTE) + (ShipDemandGet(TAI_MULTIGUNCORVETTE)*3)
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
	if (s_militaryPop > 16 and GetRU() > 1200) then	
		if (Util_CheckResearch(HEAVYGUNS)) then
			local demand = ShipDemandGet(TAI_HEAVYCRUISER)
			if (demand > 0) then
				ResearchDemandSet( HEAVYGUNS, demand )
			end
		end	
	end		
end

DoUpgradeDemand = DoUpgradeDemand_Taiidan
DoResearchTechDemand = DoResearchTechDemand_Taiidan
