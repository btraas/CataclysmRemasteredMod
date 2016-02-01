aitrace("LOADING BEAST UPGRADE INFO")
rt_mothership = {
	health = {
		BSTENERGYCANNONTECHNOLOGY,
		BSTSUPERCAPHEALTHUPGRADE1,
		BSTSUPERCAPHEALTHUPGRADE2,
	},
	speed = {
		BSTSUPERCAPSPEEDUPGRADE1,
		BSTSUPERCAPSPEEDUPGRADE2,
	}
}
rt_carrier = {
	health = {
		BSTENERGYCANNONTECHNOLOGY,
		BSTSUPERCAPHEALTHUPGRADE1,
		BSTSUPERCAPHEALTHUPGRADE2,
	},
	speed = {
		BSTSUPERCAPSPEEDUPGRADE1,
		BSTSUPERCAPSPEEDUPGRADE2,
	},
}
rt_fighter = {
	scout = {
		FIGHTERHEALTHUPGRADE1,
		FIGHTERHEALTHUPGRADE2,
		BSTFIGHTERSPEEDUPGRADE1,
		BSTFIGHTERSPEEDUPGRADE2,
	},
	interceptor = {
		BSTENERGYCANNONTECHNOLOGY,
		FIGHTERHEALTHUPGRADE1,
		FIGHTERHEALTHUPGRADE2,
		BSTFIGHTERSPEEDUPGRADE1,
		BSTFIGHTERSPEEDUPGRADE2,
	},
	bomber = {
		FIGHTERHEALTHUPGRADE1,
		FIGHTERHEALTHUPGRADE2,
		BSTFIGHTERSPEEDUPGRADE1,
		BSTFIGHTERSPEEDUPGRADE2,
	},
	defender = {
		FIGHTERHEALTHUPGRADE1,
		FIGHTERHEALTHUPGRADE2,
		BSTFIGHTERSPEEDUPGRADE1,
		BSTFIGHTERSPEEDUPGRADE2,
	},
	cloaker = {
		BSTFIGHTERSPEEDUPGRADE1,
		BSTFIGHTERSPEEDUPGRADE2,
	},
}
rt_corvette = {
	repair = {
			BSTCORVETTEHEALTHUPGRADE1,
			BSTCORVETTEHEALTHUPGRADE2,
			BSTCORVETTESPEEDUPGRADE1,
			BSTCORVETTESPEEDUPGRADE2,
	},
	salvage = {
			BSTCORVETTEHEALTHUPGRADE1,
			BSTCORVETTEHEALTHUPGRADE2,
			BSTCORVETTESPEEDUPGRADE1,
			BSTCORVETTESPEEDUPGRADE2,
	},
	light = {
			BSTCORVETTEHEALTHUPGRADE1,
			BSTCORVETTEHEALTHUPGRADE2,
			BSTCORVETTESPEEDUPGRADE1,
			BSTCORVETTESPEEDUPGRADE2,
	},
	heavy = {
			BSTENERGYCANNONTECHNOLOGY,
			BSTCORVETTEHEALTHUPGRADE1,
			BSTCORVETTEHEALTHUPGRADE2,
			BSTCORVETTESPEEDUPGRADE1,
			BSTCORVETTESPEEDUPGRADE2,
	},
	multi = {
			BSTENERGYCANNONTECHNOLOGY,
			BSTCORVETTEHEALTHUPGRADE1,
			BSTCORVETTEHEALTHUPGRADE,
			BSTCORVETTESPEEDUPGRADE1,
			BSTCORVETTESPEEDUPGRADE2,
	},
	mine = {
			BSTCORVETTEHEALTHUPGRADE1,
			BSTCORVETTEHEALTHUPGRADE2,
			BSTCORVETTESPEEDUPGRADE1,
			BSTCORVETTESPEEDUPGRADE2,
	},
}
rt_frigate = {
	ioncannon = {
		health = {
			BSTFRIGATEHEALTHUPGRADE1,
			BSTFRIGATEHEALTHUPGRADE2,
		},
		speed = {
			BSTFRIGATESPEEDUPGRADE1,
			BSTFRIGATESPEEDUPGRADE2,
		},
	},
	assault = {
		health = {
			BSTENERGYCANNONTECHNOLOGY,
			BSTFRIGATEHEALTHUPGRADE1,
			BSTFRIGATEHEALTHUPGRADE2,
		},
		speed = {
			BSTFRIGATESPEEDUPGRADE1,
			BSTFRIGATESPEEDUPGRADE2,
		},
	},
	dff = {
		shield={
			BSTDEFENSEFRIGATESHIELDREGENUPGRADE},
		health = {
			BSTFRIGATEHEALTHUPGRADE1,
			BSTFRIGATEHEALTHUPGRADE2,
		},
		speed = {
			BSTFRIGATESPEEDUPGRADE1,
			BSTFRIGATESPEEDUPGRADE2,
		},
	},
	drone = {
		health = {
			BSTFRIGATEHEALTHUPGRADE1,
			BSTFRIGATEHEALTHUPGRADE2,
		},
		speed = {
			BSTFRIGATESPEEDUPGRADE1,
			BSTFRIGATESPEEDUPGRADE2,
		},
	},
}
rt_heavycruiser = {
	health = {
		BSTENERGYCANNONTECHNOLOGY,
		BSTSUPERCAPHEALTHUPGRADE1,
		BSTSUPERCAPHEALTHUPGRADE2,
	},
	speed = {
		BSTSUPERCAPSPEEDUPGRADE1,
		BSTSUPERCAPSPEEDUPGRADE2,
	},
}
rt_destroyer = {
	BSTENERGYCANNONTECHNOLOGY,
	BSTSUPERCAPHEALTHUPGRADE1,
	BSTSUPERCAPHEALTHUPGRADE2,
	BSTSUPERCAPSPEEDUPGRADE1,
	BSTSUPERCAPSPEEDUPGRADE2,
}
rt_missiledestroyer = {
	BSTSUPERCAPHEALTHUPGRADE1,
	BSTSUPERCAPHEALTHUPGRADE2,
	BSTSUPERCAPSPEEDUPGRADE1,
	BSTSUPERCAPSPEEDUPGRADE2,
}
rt_collector = {
	BSTRESOURCECOLLECTORHEALTHUPGRADE1,
	BSTRESOURCECOLLECTORHEALTHUPGRADE2,
}
rt_refinery = {
	BSTRESOURCECONTROLLERHEALTHUPGRADE1,
	BSTRESOURCECONTROLLERHEALTHUPGRADE2,
}

function DoUpgradeDemand_Beast()
	if (s_militaryStrength > 10 or g_LOD == 0) then
		inc_upgrade_demand( rt_mothership, 0.5  )
		ResearchDemandAdd( BSTMOTHERSHIPBUILDSPEEDUPGRADE1, 0.5 )
		ResearchDemandAdd( BSTMOTHERSHIPBUILDSPEEDUPGRADE2, 0.4 )
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
			ResearchDemandAdd( BSTCARRIERBUILDSPEEDUPGRADE1, numCarrier*1.25 )
			ResearchDemandAdd( BSTCARRIERBUILDSPEEDUPGRADE2, numCarrier*1.15 )
		end
	end
	local numFighter = numActiveOfClass( s_playerIndex, eFighter )
	if (numFighter > 1) then
		local numScout = NumSquadrons( BST_SCOUT ) 
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
				if (Util_CheckResearch(BSTATTACKBOMBERIMPROVEDBOMBS) ) then
					ResearchDemandSet( BSTATTACKBOMBERIMPROVEDBOMBS, numBombers )
				end
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
		local numSalvageCorvette = NumSquadrons( BST_CRUISEMISSILE )
		if (numSalvageCorvette>2) then
			inc_upgrade_demand( rt_corvette.salvage, numSalvageCorvette*1.25 )
		end
		local numLightCorvette = NumSquadrons( BST_ACV )
		if (numLightCorvette>2) then
			inc_upgrade_demand( rt_corvette.light, numLightCorvette*1.25 )
		end
		local numHeavyCorvette = NumSquadrons( BST_HEAVYCORVETTE )
		if (numHeavyCorvette>2) then
			inc_upgrade_demand( rt_corvette.heavy, numHeavyCorvette*1.25 )
		end
		local numMultigunCorvette = NumSquadrons( BST_MULTIGUNCORVETTE )
		if (numMultigunCorvette>2) then
			inc_upgrade_demand( rt_corvette.multi, numMultigunCorvette*1.25 )
		end
	end
	local numFrigate = numActiveOfClass( s_playerIndex, eFrigate )
	if (numFrigate > 2) then
		local numIonFrigate = NumSquadrons( BST_IONCANNONFRIGATE )
		if (numIonFrigate>2) then
			inc_upgrade_demand( rt_frigate.ioncannon, numIonFrigate*1.5 )
		end
		local numAssaultFrigate = NumSquadrons( BST_TDN_STANDARDFRIGATE )
		if (numAssaultFrigate>2) then
			inc_upgrade_demand( rt_frigate.assault, numAssaultFrigate*1.5 )
		end
		local numDffFrigate = NumSquadrons( BST_FIELDFRIGATE )
		if (numDffFrigate>2) then
			inc_upgrade_demand( rt_frigate.dff, numDffFrigate*1.5 )
		end
		local numDroneFrigate = NumSquadrons( BST_MULTIBEAMFRIGATE )
		if (numDroneFrigate>2) then
			inc_upgrade_demand( rt_frigate.drone, numDroneFrigate*1.5 )
		end
	end
end

function DoResearchTechDemand_Beast()	
	ResearchDemandSet( BSTFIGHTERDRIVE, 10 )
	ResearchDemandSet( BSTCORVETTEDRIVE, 9 )
	ResearchDemandSet( BSTCORVETTEHEALTHUPGRADE1, 10 )
	ResearchDemandSet( BSTCORVETTEHEALTHUPGRADE2, 9 )
	ResearchDemandSet( BSTCORVETTESPEEDUPGRADE1, 10 )
	ResearchDemandSet( BSTCORVETTESPEEDUPGRADE2, 9 )
	ResearchDemandSet( BSTFRIGATEHEALTHUPGRADE1, 10 )
	ResearchDemandSet( BSTFRIGATEHEALTHUPGRADE2, 9 )
	ResearchDemandSet( FIGHTERHEALTHUPGRADE1, 10 )
	ResearchDemandSet( FIGHTERHEALTHUPGRADE2, 9 )
	ResearchDemandSet( BSTFIGHTERSPEEDUPGRADE1, 10 )
	ResearchDemandSet( BSTFIGHTERSPEEDUPGRADE2, 9 )
	ResearchDemandSet( BSTCAPITALSHIPDRIVE, 8 )
	ResearchDemandSet( BSTSUPERCAPITALSHIPDRIVE, 4 )
	ResearchDemandSet( BSTCORVETTECHASSIS, 6 )
	ResearchDemandSet( BSTCAPITALSHIPCHASSIS, 5 )	
	ResearchDemandSet( BSTSHIPYARDBUILDSPEEDUPGRADE1, 6 )
	ResearchDemandSet( BSTSHIPYARDBUILDSPEEDUPGRADE2, 6 )

	if (Util_CheckResearch(BSTPLASMABOMBLAUNCHER)) then
		local demand = ShipDemandGet(BST_ATTACKBOMBER)
		if (demand > 0) then
			ResearchDemandSet( BSTPLASMABOMBLAUNCHER, demand )
		end
	end
	if (Util_CheckResearch(BSTFIGHTERCHASSIS)) then
		local demand = ShipDemandGet(BST_ACOLYTE)
		if (demand > 0) then
			ResearchDemandSet( BSTFIGHTERCHASSIS, demand )
		end
	end
	local numShipyards = NumSquadrons(kShipYard) + NumSquadronsQ(kShipYard)
	if (numShipyards > 0 and Util_CheckResearch(BSTHEAVYGUNS)) then
		local battleCruiserDemand = ShipDemandGet( BST_HEAVYCRUISER )
		if (battleCruiserDemand > 0) then
			ResearchDemandSet( BSTHEAVYGUNS, battleCruiserDemand )
		end
	end
	if (Util_CheckResearch(BSTHEAVYCORVETTEUPGRADE)) then
		local demand = ShipDemandGet(BST_HEAVYCORVETTE)
		if (demand > 0) then
			ResearchDemandSet( BSTHEAVYCORVETTEUPGRADE, demand )
		end
	end
	if (Util_CheckResearch(BSTFASTTRACKINGTURRETS)) then
		local demand = ShipDemandGet(BST_MULTIGUNCORVETTE)
		if (demand > 0) then
			ResearchDemandSet( BSTFASTTRACKINGTURRETS, demand )
		end
	end
	if (Util_CheckResearch(BSTGUIDEDMISSILES) ) then		
		local destroyerDemand = ShipDemandGet(BST_MISSILEDESTROYER)
		if (destroyerDemand > 0) then
			ResearchDemandSet( BSTGUIDEDMISSILES, destroyerDemand )
		end
	end
	if (Util_CheckResearch(BSTIONCANNONS)) then
		local demand = ShipDemandGet(BST_IONCANNONFRIGATE) + ShipDemandGet(BST_IONARRAYFRIGATE)
		if (demand > 0) then
			ResearchDemandSet( BSTIONCANNONS, demand )
		end
	end
	if (Util_CheckResearch(BSTDEFENSEFIELDFRIGATESHIELD)) then
		local demand = ShipDemandGet(BST_FIELDFRIGATE)
		if (demand > 0) then
			ResearchDemandSet( BSTDEFENSEFIELDFRIGATESHIELD, demand )
		end
	end
	if (Util_CheckResearch(BSTHYPERSPACETECH)) then
			local demand = ShipDemandGet(BST_PRT_MOTHERSHIP)
			if (demand > 0) then
				ResearchDemandSet( BSTHYPERSPACETECH, demand+0.5 )
		end
	end
	if (Util_CheckResearch(BSTSUPERHEAVYCHASSIS)) then
		local demand = ShipDemandGet(BST_CARRIER)
		if (demand > 0) then
			ResearchDemandSet( BSTSUPERHEAVYCHASSIS, demand )
		end
	end
	if (Util_CheckResearch(BSTATTACKBOMBERIMPROVEDBOMBS) ) then
		local numBombers = NumSquadrons( kBomber )
		if (numBombers > 2) then
			ResearchDemandSet( BSTATTACKBOMBERIMPROVEDBOMBS, numBombers )
			end
		end
	end

DoUpgradeDemand = DoUpgradeDemand_Beast
DoResearchTechDemand = DoResearchTechDemand_Beast