aitrace("LOADING KADESHI UPGRADE INFO")
rt_mothership = {
	health = {
		P2MOTHERSHIPHEALTHUPGRADE1,
		P2MOTHERSHIPHEALTHUPGRADE2,
	},
	speed = {
		P2MOTHERSHIPMAXSPEEDUPGRADE1,
		P2MOTHERSHIPMAXSPEEDUPGRADE2,
	},
}
rt_carrier = {
	health = {
		P2MOTHERSHIPHEALTHUPGRADE1,
		P2MOTHERSHIPHEALTHUPGRADE2,
	},
	speed = {
		P2MOTHERSHIPMAXSPEEDUPGRADE1,
		P2MOTHERSHIPMAXSPEEDUPGRADE2,
	},
}
rt_frigate = {
	multibeam = {
		health = {
			MULTIBEAMFRIGATEHEALTHUPGRADE1,
			MULTIBEAMFRIGATEHEALTHUPGRADE2,
		},
		speed = {
			MULTIBEAMFRIGATEMAXSPEEDUPGRADE1,
			MULTIBEAMFRIGATEMAXSPEEDUPGRADE2,
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


function DoResearchTechDemand_Kadeshi()	
	ResearchDemandSet( FIGHTERPRODUCTION, 4 )
	ResearchDemandSet( FRIGATEPRODUCTION, 3 )
--	ResearchDemandSet( CAPITALPRODUCTION, 2 )
	ResearchDemandSet( HYPERSPACE, 1 )
--	ResearchDemandSet( PLATFORMPRODUCTION, 0.5 )
	if (Util_CheckResearch(ADVANCEDSWARMERUPGRADE)) then
		local demand = ShipDemandGet(KAD_ADVANCEDSWARMER)-- + (ShipDemandGet(KAD_ADVANCEDSWARMER3)*3)
		if (demand > 0) then
			ResearchDemandSet( ADVANCEDSWARMERUPGRADE, demand )
		end
	end
end

function DoUpgradeDemand_Kadeshi()	
	local numFighter = numActiveOfClass( s_playerIndex, eFighter )
	local numMothership = NumSquadrons( kCarrier ) + NumSquadrons( kCarrierHw2 )
	if (numMothership > 0) then
		inc_upgrade_demand( rt_mothership, numMothership*1.25  )
	end
--	local numHeavyCruiser = NumSquadrons( kBattleCruiser ) + NumSquadrons( kBattleCruiserHw2 )
--	if (numHeavyCruiser > 0) then
--		inc_upgrade_demand( rt_heavycruiser, numHeavyCruiser*2.5  )
--	end
	local numCorvette = numActiveOfClass( s_playerIndex, eCorvette )
	local numFrigate = numActiveOfClass( s_playerIndex, eFrigate )
	if (numFrigate > 2) then
		local numMultibeamFrigate = NumSquadrons( KAD_MULTIBEAMFRIGATE ) + NumSquadrons( KAD_HW2MULTIBEAMFRIGATE )
		if (numMultibeamFrigate>2) then
			inc_upgrade_demand( rt_frigate.multibeam, numMultibeamFrigate*1.5 )
		end
	end
end
DoUpgradeDemand = DoUpgradeDemand_Kadeshi
DoResearchTechDemand = DoResearchTechDemand_Kadeshi
