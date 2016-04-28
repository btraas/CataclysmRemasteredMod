aitrace("LOADING SOMTAAW SUBSYSTEM INFO")
 
function DoSubSystemDemand_Somtaaw()
	--CpuBuildSS_DoSubSystemProductionDemand( FIGHTERPRODUCTION, eFighter, kUnitCapId_Fighter )
	local researchcount = NumSubSystems(RESEARCH) + NumSubSystemsQ(RESEARCH)
	local highestCorvetteDemand = ShipDemandMaxByClass( eCorvette )
	local highestFrigateDemand = ShipDemandMaxByClass( eFrigate )
	local researchdemand = highestCorvetteDemand
	local capdemand = ShipDemandMaxByClass( eCapital )
	if (highestFrigateDemand > researchdemand) then
		researchdemand = highestFrigateDemand
	elseif (capdemand > researchdemand) then
		researchdemand = capdemand
	end
	if (researchcount==0) then
		SubSystemDemandSet(RESEARCH, researchdemand+0.5 )
	else
		--CpuBuildSS_DoSubSystemProductionDemand( CORVETTEPRODUCTION, eCorvette, kUnitCapId_Corvette )
		--CpuBuildSS_DoSubSystemProductionDemand( FRIGATEPRODUCTION, eFrigate, kUnitCapId_Frigate )
		local advresearchcount = NumSubSystems(ADVANCEDRESEARCH) + NumSubSystemsQ(ADVANCEDRESEARCH)
		local doAdvResearch = 0
		local advResDemand = researchdemand
		if (s_numFrSystems > 0) then
			researchdemand = researchdemand + 0.5
		end
                local armorresearchcount = NumSubSystems(ARMORRESEARCH) + NumSubSystemsQ(ARMORRESEARCH)
                local doarmorResearch = 0
                local armResDemand = researchdemand
                if (s_numFrSystems > 0) then
                        researchdemand = researchdemand + 0.5
                end
                local weaponsresearchcount = NumSubSystems(WEAPONSRESEARCH) + NumSubSystemsQ(WEAPONSRESEARCH)
                local doweaponsResearch = 0
                local wepResDemand = researchdemand
                if (s_numFrSystems > 0) then
                        researchdemand = researchdemand + 0.5
                end
                if (advresearchcount == 0 and researchdemand >= 0.5 and UnderAttackThreat() < -5 and
                        (s_militaryPop > 8 or s_selfTotalValue > 150 or s_militaryStrength > 50) ) then
                        SubSystemDemandSet(ADVANCEDRESEARCH, researchdemand-0.5 )
                end
                if (armorresearchcount == 0 and researchdemand >= 0.5 and UnderAttackThreat() < -5 and
                        (s_militaryPop > 8 or s_selfTotalValue > 150 or s_militaryStrength > 50) ) then
                        SubSystemDemandSet(ARMORRESEARCH, researchdemand-0.5 )
                end
                if (weaponsresearchcount == 0 and researchdemand >= 0.5 and UnderAttackThreat() < -5 and
                        (s_militaryPop > 8 or s_selfTotalValue > 150 or s_militaryStrength > 50) ) then
                        SubSystemDemandSet(WEAPONSRESEARCH, researchdemand-0.5 )
                end
        end
        CpuBuildSS_OtherMiscSubSystemDemand();
        if (researchcount > 0 and s_totalProdSS > 0 and s_militaryPop > 8 and GetNumCollecting() > 8 and GetRU() > 800) then
                CpuBuildSS_SpecialSubSystemDemand()
        end
end
 
CpuBuildSS_DefaultSubSystemDemandRules = DoSubSystemDemand_Somtaaw