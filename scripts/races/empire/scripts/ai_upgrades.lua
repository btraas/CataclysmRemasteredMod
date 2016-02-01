aitrace("LOADING TURANIC UPGRADE INFO")
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
		P1MOTHERSHIPHEALTHUPGRADE1,
		P1MOTHERSHIPHEALTHUPGRADE2,
	},
	speed = {
		P1MOTHERSHIPMAXSPEEDUPGRADE1,
		P1MOTHERSHIPMAXSPEEDUPGRADE2,
	},
}
rt_fighter = {
	fighter = {
		FIGHTERMAXSPEEDUPGRADE1,
		FIGHTERMAXSPEEDUPGRADE2,
	},
}
rt_corvette = {
	standard = {
			STANDARDCORVETTEMAXSPEEDUPGRADE1,
			STANDARDCORVETTEMAXSPEEDUPGRADE2,
	},
	missile = {
			MISSILECORVETTEMAXSPEEDUPGRADE1,
			MISSILECORVETTEMAXSPEEDUPGRADE2,
	},
}
rt_frigate = {
	ionarray = {
		health = {
			IONARRAYFRIGATEHEALTHUPGRADE1,
			IONARRAYFRIGATEHEALTHUPGRADE2,
		},
		speed = {
			IONARRAYFRIGATEMAXSPEEDUPGRADE1,
			IONARRAYFRIGATEMAXSPEEDUPGRADE2,
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
rt_hyperspace = {
		HYPERSPACE,

}


function DoResearchTechDemand_Turanic()	
	ResearchDemandSet( FIGHTERPRODUCTION, 5 )
	ResearchDemandSet( CORVETTEPRODUCTION, 4 )
	ResearchDemandSet( FRIGATEPRODUCTION, 3 )
	ResearchDemandSet( CAPITALPRODUCTION, 2 )
	ResearchDemandSet( HYPERSPACE, 1 )
	ResearchDemandSet( PLATFORMPRODUCTION, 0.5 )
	if (Util_CheckResearch(MISSILECORVETTEUPGRADE)) then
		local demand = ShipDemandGet(TUR_MISSILECORVETTE)-- + (ShipDemandGet(TUR_MISSILECORVETTE3)*3)
		if (demand > 0) then
			ResearchDemandSet( MISSILECORVETTEUPGRADE, demand )
		end
	end
end

function DoUpgradeDemand_Turanic()	
	local numFighter = numActiveOfClass( s_playerIndex, eFighter )
	if (numFighter > 1) then
		local numInterceptors = NumSquadrons( kInterceptor ) + (NumSquadrons( TUR_FIGHTER5 )*5)
		if (numInterceptors > 1) then
			inc_upgrade_demand( rt_fighter.fighter, numInterceptors*1 )
		end
	end
	local numCarriers = NumSquadrons( kCarrier )
	if (numCarriers > 0) then
		inc_upgrade_demand( rt_carrier, numCarriers*1.25  )
	end
--	local numHeavyCruiser = NumSquadrons( kBattleCruiser ) + NumSquadrons( kBattleCruiserHw2 )
--	if (numHeavyCruiser > 0) then
--		inc_upgrade_demand( rt_heavycruiser, numHeavyCruiser*2.5  )
--	end
	local numCorvette = numActiveOfClass( s_playerIndex, eCorvette )
	if (numCorvette > 1) then
		local numStandardCorvette = NumSquadrons( TUR_STANDARDCORVETTE )-- + (NumSquadrons( TUR_STANDARDCORVETTE3 )*3)
		if (numStandardCorvette>2) then
			inc_upgrade_demand( rt_corvette.standard, numStandardCorvette*1.25 )
		end
		local numMissileCorvette = NumSquadrons( TUR_MISSILECORVETTE )-- + (NumSquadrons( TUR_MISSILECORVETTE3 )*3)
		if (numMissileCorvette>2) then
			inc_upgrade_demand( rt_corvette.missile, numMissileCorvette*1.25 )
		end
	end
	local numFrigate = numActiveOfClass( s_playerIndex, eFrigate )
	if (numFrigate > 2) then
		local numIonFrigate = NumSquadrons( TUR_IONARRAYFRIGATE ) + NumSquadrons( TUR_HW2IONARRAYFRIGATE )
		if (numIonFrigate>2) then
			inc_upgrade_demand( rt_frigate.ionarray, numIonFrigate*1.5 )
		end
	end
end
DoUpgradeDemand = DoUpgradeDemand_Turanic
DoResearchTechDemand = DoResearchTechDemand_Turanic
