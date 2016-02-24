function MPRestrict()	
	local i = 0
	local numplayers = Universe_PlayerCount()	
	while (i < numplayers) do
		RestrictOptions( i );	
		i = i + 1;
	end	
end

function RestrictOptions( playerid )
	local playerRace = Player_GetRace( playerid )		
	if (playerRace == Race_Hiigaran) then
		--build
		Player_RestrictBuildOption(playerid, "Hgn_MS_Production_CorvetteMover")
		Player_RestrictBuildOption(playerid, "Kpr_Mover")
		Player_RestrictBuildOption( playerid, "Hgn_Shipyard_SPG" )		
		Player_RestrictResearchOption(playerid, "AssaultCorvetteEliteWeaponUpgrade")
		Player_RestrictResearchOption(playerid, "AttackBomberEliteWeaponUpgrade")		
		--research
		Player_RestrictResearchOption(playerid, "SensorsDowngrade1")
		Player_RestrictResearchOption(playerid, "SensorsDowngrade2")
		Player_RestrictResearchOption(playerid, "SensorsDowngrade3")
		Player_RestrictResearchOption(playerid, "SensorsBackToNormal1")
		Player_RestrictResearchOption(playerid, "SensorsBackToNormal2")
		Player_RestrictResearchOption(playerid, "SensorsBackToNormal3")
		Player_RestrictResearchOption(playerid, "MoverHealthDowngrade")
		Player_RestrictResearchOption(playerid, "MoverHealthUpgrade")
		Player_RestrictResearchOption(playerid, "FrigateHealthUpgradeSPGAME")
		Player_RestrictResearchOption(playerid, "DamageMoverTech")
		Player_RestrictResearchOption(playerid, "KeeperHealthUpgradeSPGAME_LOW")
		Player_RestrictResearchOption(playerid, "KeeperHealthUpgradeSPGAME_MED")
		Player_RestrictResearchOption(playerid, "KeeperHealthUpgradeSPGAME_HIGH")
		Player_RestrictResearchOption(playerid, "KeeperWeaponUpgradeSPGAME_M10_LVL_1")
		Player_RestrictResearchOption(playerid, "KeeperWeaponUpgradeSPGAME_M10_LVL_2")
		Player_RestrictResearchOption(playerid, "KeeperWeaponUpgradeSPGAME_M10_LVL_3")
		Player_RestrictResearchOption(playerid, "KeeperWeaponUpgradeSPGAME_M10_LVL_4")
		Player_RestrictResearchOption(playerid, "KeeperWeaponUpgradeSPGAME_M10_LVL_5")
		Player_RestrictResearchOption(playerid, "KeeperWeaponUpgradeSPGAME_M10_LVL_6")
		Player_RestrictResearchOption(playerid, "KeeperHealthUpgradeSPGAME_M10_LVL_1")
		Player_RestrictResearchOption(playerid, "KeeperHealthUpgradeSPGAME_M10_LVL_2")
		Player_RestrictResearchOption(playerid, "KeeperHealthUpgradeSPGAME_M10_LVL_3")	
		Player_RestrictResearchOption(playerid, "AttackDroidHealthUpgradeSPGAME_LOW")
		Player_RestrictResearchOption(playerid, "AttackDroidHealthUpgradeSPGAME_MED")
		Player_RestrictResearchOption(playerid, "AttackDroidHealthUpgradeSPGAME_HIGH")
		Player_RestrictResearchOption(playerid, "AttackDroidWeaponUpgradeSPGAME_LOW")
		Player_RestrictResearchOption(playerid, "AttackDroidWeaponUpgradeSPGAME_MED")
		Player_RestrictResearchOption(playerid, "AttackDroidWeaponUpgradeSPGAME_HIGH")
		Player_RestrictResearchOption(playerid, "RadiationDefenseField")
	end	
	if (playerRace == Race_Vaygr) then
		-- build
		Player_RestrictBuildOption(playerid, "Vgr_PlanetKillerMissile")				
		--research
		Player_RestrictResearchOption(playerid, "WeakVgrHeavyMissiles")
		Player_RestrictResearchOption(playerid, "HyperspaceRecoveryTimeUpgradeSPGAME")
		Player_RestrictResearchOption(playerid, "HyperspaceTransitionTimeUpgradeSPGAME")
		Player_RestrictResearchOption(playerid, "VaygrCarrierHealthRegenDowngrade")
		Player_RestrictResearchOption(playerid, "ShipyardSpeedDowngradeSPGAME")
		Player_RestrictResearchOption(playerid, "SuperCapHealthUpgradeSPGAME")
		Player_RestrictResearchOption(playerid, "VaygrFrigateHealthUpgradeSPGAME")
		Player_RestrictResearchOption(playerid, "VaygrFrigateHealthRegenDowngradeSPGAME")
		Player_RestrictResearchOption(playerid, "CorvetteHealthUpgradeSPGAME")
		Player_RestrictResearchOption(playerid, "ExtraStrongVgrHeavyMissilesSPGAME")
		Player_RestrictResearchOption(playerid, "VaygrCaptureHack")
		Player_RestrictResearchOption(playerid, "VaygrReduceCaptureHack")
		Player_RestrictResearchOption(playerid, "VaygrRadiationImmunityHack")
		Player_RestrictResearchOption(playerid, "VaygrCarrierHealthUpgrade")
	end	
	if Player_GetLevelOfDifficulty(playerid) == 0 then
		Player_RestrictResearchOption(playerid, "cpuplayers_defensive")
		Player_RestrictResearchOption(playerid, "cpuplayers_aggressive")
		Player_RestrictResearchOption(playerid, "cpuplayers_dynamic")
		Player_RestrictResearchOption(playerid, "cpuplayers_norushtime5")
		Player_RestrictResearchOption(playerid, "cpuplayers_norushtime10")
		Player_RestrictResearchOption(playerid, "cpuplayers_norushtime15")			
		Player_RestrictResearchOption(playerid, "AllShipBuildSpeed")
		Player_RestrictResearchOption(playerid, "AllShipBuildSpeedHard")
		Player_RestrictResearchOption(playerid, "AllShipBuildSpeedExpert")		
		Player_RestrictResearchOption(playerid, "ResourceCollectionRateHard")
		Player_RestrictResearchOption(playerid, "ResourceCollectionRateExpert")				
		if Player_GetRace(playerid) == 5 then			
			Player_RestrictResearchOption(playerid, "MissileDestroyerVolley")		
			Player_RestrictResearchOption(playerid, "HeavyCorvetteAttackBurst")					
		elseif Player_GetRace(playerid) == 6 then
			Player_RestrictResearchOption(playerid, "MissileDestroyerVolley")		
		end								
	end				
end

function SPRestrict()	
	local i = 0
	local numplayers = Universe_PlayerCount()	
	while (i < numplayers) do
		SPRestrictOptions( i );	
		i = i + 1;
	end	
end

function SPRestrictOptions( playerid )		
	if Player_GetRace(playerid) == 1 or 
		 Player_GetRace(playerid) == 2 or
		 Player_GetRace(playerid) == 5 or
		 Player_GetRace(playerid) == 6 then		
		Player_RestrictResearchOption(playerid, "cpuplayers_defensive")
		Player_RestrictResearchOption(playerid, "cpuplayers_aggressive")
		Player_RestrictResearchOption(playerid, "cpuplayers_dynamic")		
		Player_RestrictResearchOption(playerid, "cpuplayers_norushtime5")
		Player_RestrictResearchOption(playerid, "cpuplayers_norushtime10")
		Player_RestrictResearchOption(playerid, "cpuplayers_norushtime15")			
		Player_RestrictResearchOption(playerid, "AllShipBuildSpeed")
		Player_RestrictResearchOption(playerid, "AllShipBuildSpeedHard")
		Player_RestrictResearchOption(playerid, "AllShipBuildSpeedExpert")	
		Player_RestrictResearchOption(playerid, "ResourceCollectionRateHard")
		Player_RestrictResearchOption(playerid, "ResourceCollectionRateExpert")			
	end		
	if Player_GetRace(playerid) == 5 then				
		Player_RestrictResearchOption(playerid, "MissileDestroyerVolley")		
		Player_RestrictResearchOption(playerid, "HeavyCorvetteAttackBurst")				
	elseif Player_GetRace(playerid) == 6 then		
		Player_RestrictResearchOption(playerid, "MissileDestroyerVolley")		
	end		
end


