aitrace("LOADING Ascendant UPGRADE INFO")
rt_mothership = {
	health = {
		RAMSUPERCAPHEALTHUPGRADE1,
		RAMSUPERCAPHEALTHUPGRADE2,
	},
	speed = {
		RAMSUPERCAPSPEEDUPGRADE1,
		RAMSUPERCAPSPEEDUPGRADE2,
	}
}
rt_carrier = {
	health = {
		RAMSUPERCAPHEALTHUPGRADE1,
		RAMSUPERCAPHEALTHUPGRADE2,
	},
	speed = {
		RAMSUPERCAPSPEEDUPGRADE1,
		RAMSUPERCAPSPEEDUPGRADE2,
	},
}
rt_fighter = {
	scout = {
		FIGHTERHEALTHUPGRADE1,
		FIGHTERHEALTHUPGRADE2,
		RAMFIGHTERSPEEDUPGRADE1,
		RAMFIGHTERSPEEDUPGRADE2,
	},
	interceptor = {
		FIGHTERHEALTHUPGRADE1,
		FIGHTERHEALTHUPGRADE2,
		RAMFIGHTERSPEEDUPGRADE1,
		RAMFIGHTERSPEEDUPGRADE2,
	},
	bomber = {
		FIGHTERHEALTHUPGRADE1,
		FIGHTERHEALTHUPGRADE2,
		RAMFIGHTERSPEEDUPGRADE1,
		RAMFIGHTERSPEEDUPGRADE2,
	},
}
rt_corvette = {
	salvage = {
			RAMCORVETTEHEALTHUPGRADE1,
			RAMCORVETTEHEALTHUPGRADE2,
			RAMCORVETTESPEEDUPGRADE1,
			RAMCORVETTESPEEDUPGRADE2,
	},
	heavy = {
			RAMCORVETTEHEALTHUPGRADE1,
			RAMCORVETTEHEALTHUPGRADE2,
			RAMCORVETTESPEEDUPGRADE1,
			RAMCORVETTESPEEDUPGRADE2,
	},
	multi = {
			RAMCORVETTEHEALTHUPGRADE1,
			RAMCORVETTEHEALTHUPGRADE,
			RAMCORVETTESPEEDUPGRADE1,
			RAMCORVETTESPEEDUPGRADE2,
	},
	mine = {
			RAMCORVETTEHEALTHUPGRADE1,
			RAMCORVETTEHEALTHUPGRADE2,
			RAMCORVETTESPEEDUPGRADE1,
			RAMCORVETTESPEEDUPGRADE2,
	},
}
rt_frigate = {
	ioncannon = {
		health = {
			RAMFRIGATEHEALTHUPGRADE1,
			RAMFRIGATEHEALTHUPGRADE2,
		},
		speed = {
			RAMFRIGATESPEEDUPGRADE1,
			RAMFRIGATESPEEDUPGRADE2,
		},
	},
	assault = {
		health = {
			RAMFRIGATEHEALTHUPGRADE1,
			RAMFRIGATEHEALTHUPGRADE2,
		},
		speed = {
			RAMFRIGATESPEEDUPGRADE1,
			RAMFRIGATESPEEDUPGRADE2,
		},
	},
}
rt_heavycruiser = {
	health = {
		RAMSUPERCAPHEALTHUPGRADE1,
		RAMSUPERCAPHEALTHUPGRADE2,
	},
	speed = {
		RAMSUPERCAPSPEEDUPGRADE1,
		RAMSUPERCAPSPEEDUPGRADE2,
	},
}
rt_destroyer = {
	RAMSUPERCAPHEALTHUPGRADE1,
	RAMSUPERCAPHEALTHUPGRADE2,
	RAMSUPERCAPSPEEDUPGRADE1,
	RAMSUPERCAPSPEEDUPGRADE2,
}
rt_missiledestroyer = {
	RAMSUPERCAPHEALTHUPGRADE1,
	RAMSUPERCAPHEALTHUPGRADE2,
	RAMSUPERCAPSPEEDUPGRADE1,
	RAMSUPERCAPSPEEDUPGRADE2,
}
rt_platform = {
	gunturret = {
		RAMPLATFORMHEALTHUPGRADE1,
		RAMPLATFORMHEALTHUPGRADE2,
	},
	ionturret = {
		RAMPLATFORMHEALTHUPGRADE1,
		RAMPLATFORMHEALTHUPGRADE2,
	},
}
rt_collector = {
	RAMUTILITYHEALTHUPGRADE1,
	RAMUTILITYHEALTHUPGRADE2,
}
rt_refinery = {
	RAMUTILITYHEALTHUPGRADE1,
	RAMUTILITYHEALTHUPGRADE2,
}

function DoUpgradeDemand_Ascendant()	
	local numFighter = numActiveOfClass( s_playerIndex, eFighter )
	if (numFighter > 1) then
		local numInterceptors = NumSquadrons( kInterceptor )
		if (numInterceptors > 1) then
			inc_upgrade_demand( rt_fighter.interceptor, numInterceptors*1 )
		end
		local numBombers = NumSquadrons( kBomber )
		if (numBombers > 1) then
		inc_upgrade_demand( rt_fighter.bomber, numBombers*1.5 )
		if (numBombers > 2) then
			if (Util_CheckResearch(RAMATTACKBOMBERIMPROVEDBOMBS) ) then
				ResearchDemandSet(RAMATTACKBOMBERIMPROVEDBOMBS, numBombers )
				end
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
		local numSalvageCorvette = NumSquadrons( HGN_RAM_THIEF )
		if (numSalvageCorvette>2) then
			inc_upgrade_demand( rt_corvette.salvage, numSalvageCorvette*1.25 )
		end
		local numHeavyCorvette = NumSquadrons( HGN_RAM_HEAVYCORVETTE )
		if (numHeavyCorvette>2) then
			inc_upgrade_demand( rt_corvette.heavy, numHeavyCorvette*1.25 )
		end
		local numMultigunCorvette = NumSquadrons( HGN_RAM_MISSILECORVETTE )
		if (numMultigunCorvette>2) then
			inc_upgrade_demand( rt_corvette.multi, numMultigunCorvette*1.25 )
		end
		local numMinelayerCorvette = NumSquadrons( HGN_RAM_MINELAYERCORVETTE )
		if (numMinelayerCorvette>2) then
			inc_upgrade_demand( rt_corvette.mine, numMinelayerCorvette*1.25 )
		end
	end
	local numFrigate = numActiveOfClass( s_playerIndex, eFrigate )
	if (numFrigate > 2) then
		local numIonFrigate = NumSquadrons( HGN_RAM_IONARRAYFRIGATE )
		if (numIonFrigate>2) then
			inc_upgrade_demand( rt_frigate.ioncannon, numIonFrigate*1.5 )
		end
		local numAssaultFrigate = NumSquadrons( HGN_RAM_STANDARDFRIGATE )
		if (numAssaultFrigate>2) then
			inc_upgrade_demand( rt_frigate.assault, numAssaultFrigate*1.5 )
	end
end

function DoResearchTechDemand_Ascendant()	

	ResearchDemandSet( RAMFIGHTERDRIVE, 10 )
	ResearchDemandSet( RAMCORVETTEDRIVE, 9 )
	ResearchDemandSet( RAMCAPITALSHIPDRIVE, 8 )
	ResearchDemandSet( RAMSUPERCAPITALSHIPDRIVE, 4 )
	ResearchDemandSet( RAMCORVETTECHASSIS, 6 )
	ResearchDemandSet( RAMCAPITALSHIPCHASSIS, 5 )	
	
	if (Util_CheckResearch(RAMPLASMABOMBLAUNCHER)) then
		local demand = ShipDemandGet(HGN_RAM_BOMBER)
		if (demand > 0) then
			ResearchDemandSet( RAMPLASMABOMBLAUNCHER, demand )
		end
	end
	if (Util_CheckResearch(RAMFIGHTERCHASSIS)) then
		local demand = ShipDemandGet(HGN_RAM_INTERCEPTOR)
		if (demand > 0) then
			ResearchDemandSet( RAMFIGHTERCHASSIS, demand )
		end
	end
	local numShipyards = NumSquadrons(kShipYard) + NumSquadronsQ(kShipYard)
	if (numShipyards > 0 and Util_CheckResearch(RAMBATTLECRUISERIONWEAPONS)) then
		local battleCruiserDemand = ShipDemandGet( HGN_RAM_HEAVYCRUISER )
		if (battleCruiserDemand > 0) then
			ResearchDemandSet( RAMBATTLECRUISERIONWEAPONS, battleCruiserDemand )
		end
	end
	if (Util_CheckResearch(RAMHEAVYCORVETTEUPGRADE)) then
		local demand = ShipDemandGet(HGN_RAM_HEAVYCORVETTE)
		if (demand > 0) then
			ResearchDemandSet( RAMHEAVYCORVETTEUPGRADE, demand )
		end
	end
	if (Util_CheckResearch(RAMGUIDEDMISSILES) ) then		
		local destroyerDemand = ShipDemandGet(HGN_RAM_MISSILEDESTROYER)
		if (destroyerDemand > 0) then
			ResearchDemandSet( RAMGUIDEDMISSILES, destroyerDemand )
		end
	end
	if (Util_CheckResearch(RAMIONCANNONS)) then
		local demand = ShipDemandGet(HGN_RAM_IONARRAYFRIGATE)
		if (demand > 0) then
			ResearchDemandSet( RAMIONCANNONS, demand )
		end
	end
	if (Util_CheckResearch(RAMDEFENSEFIELDFRIGATESHIELD)) then
		local demand = ShipDemandGet(HGN_RAM_DFF)
		if (demand > 0) then
			ResearchDemandSet( RAMDEFENSEFIELDFRIGATESHIELD, demand )
		end
	end
	if (Util_CheckResearch(RAMHYPERSPACETECH)) then
			local demand = ShipDemandGet(HGN_RAM_OUTPOST)
			if (demand > 0) then
				ResearchDemandSet( RAMHYPERSPACETECH, demand+0.5 )
		end
	end
	if (Util_CheckResearch(RAMSUPERHEAVYCHASSIS)) then
		local demand = ShipDemandGet(HGN_RAM_CARRIER)
		if (demand > 0) then
			ResearchDemandSet( RAMSUPERHEAVYCHASSIS, demand )
		end
	end
	if (Util_CheckResearch(RAMATTACKBOMBERIMPROVEDBOMBS) ) then
		local numBombers = NumSquadrons( kBomber )
		if (numBombers > 2) then
			ResearchDemandSet( RAMATTACKBOMBERIMPROVEDBOMBS, numBombers )
			end
		end
	end
end	
DoUpgradeDemand = DoUpgradeDemand_Ascendant
DoResearchTechDemand = DoResearchTechDemand_Ascendant
