aitrace("CPU: CLASSDEF LOADED")
squadclass = {}
squadclass[eMotherShip] = {
	HGN_MOTHERSHIP,	
	VGR_MOTHERSHIP,
	VGR_MOTHERSHIP_MAKAAN,
	KUS_MOTHERSHIP,
	TAI_MOTHERSHIP,
}
squadclass[eCollector] = {
	HGN_RESOURCECOLLECTOR,	
	VGR_RESOURCECOLLECTOR,
	KUS_RESOURCECOLLECTOR,
	TAI_RESOURCECOLLECTOR,
	TUR_MINERCORVETTE,
	KAD_UTILITYSWARMER,
}
squadclass[eScout] = {
	HGN_SCOUT,
	HGN_PROBE,
	HGN_PROXIMITYSENSOR,
	HGN_ECMPROBE,	
	VGR_SCOUT,
	VGR_PROBE,
	VGR_PROBE_PROX,
	VGR_PROBE_ECM,
	KUS_PROBE,
	KUS_PROXIMITYSENSOR,
	TAI_PROBE,
	TAI_PROXIMITYSENSOR,
	TUR_SCOUT,
	KAD_AMBASSADOR,
}
squadclass[eRefinery] = {
	HGN_RESOURCECONTROLLER,	
	VGR_RESOURCECONTROLLER,
	KUS_RESOURCECONTROLLER,	
	TAI_RESOURCECONTROLLER,
	KAD_FUELPOD,
}
squadclass[eBuilder] = {
	HGN_MOTHERSHIP,
	HGN_CARRIER,
	HGN_SHIPYARD,		
	VGR_MOTHERSHIP,
	VGR_MOTHERSHIP_MAKAAN,
	VGR_CARRIER,
	VGR_SHIPYARD,
	KUS_MOTHERSHIP,
	KUS_CARRIER,
	TAI_MOTHERSHIP,
	TAI_CARRIER,
	TUR_P1MOTHERSHIP,
	KAD_P2MOTHERSHIP,
}
squadclass[eDropOff] = {
	HGN_MOTHERSHIP,
	HGN_CARRIER,
	HGN_SHIPYARD,
	HGN_RESOURCECONTROLLER,	
	VGR_MOTHERSHIP,
	VGR_MOTHERSHIP_MAKAAN,
	VGR_CARRIER,
	VGR_SHIPYARD,
	VGR_RESOURCECONTROLLER,
	KUS_MOTHERSHIP,
	KUS_CARRIER,	
	KUS_RESOURCECONTROLLER,	
	TAI_MOTHERSHIP,
	TAI_CARRIER,	
	TAI_RESOURCECONTROLLER,	
	TUR_P1MOTHERSHIP,
	KAD_P2MOTHERSHIP,
}
squadclass[eSalvageDropOff] = {
	HGN_MOTHERSHIP,
	HGN_CARRIER,
	HGN_SHIPYARD,
	VGR_MOTHERSHIP,
	VGR_MOTHERSHIP_MAKAAN,
	VGR_CARRIER,
	VGR_SHIPYARD,
	KUS_MOTHERSHIP,
	KUS_CARRIER,	
	TAI_MOTHERSHIP,
	TAI_CARRIER,	
	TUR_P1MOTHERSHIP,
	KAD_P2MOTHERSHIP,
}
squadclass[eFighter] = {
	HGN_INTERCEPTOR,
	HGN_PULSARFIGHTER,
	HGN_ATTACKBOMBER,
	HGN_ATTACKBOMBERELITE,	
	VGR_INTERCEPTOR,
	VGR_BOMBER,
	VGR_LANCEFIGHTER,
	KUS_SCOUT,
	KUS_INTERCEPTOR,
	KUS_ATTACKBOMBER,
	KUS_DEFENDER,
	KUS_CLOAKEDFIGHTER,
	TAI_SCOUT,
	TAI_INTERCEPTOR,
 	TAI_ATTACKBOMBER,
  	TAI_DEFENDER,
  	TAI_DEFENSEFIGHTER,
	TAI_SCOUT5,
	TAI_INTERCEPTOR5,
	TAI_ATTACKBOMBER5,
	TUR_FIGHTER,
	TUR_FIGHTER5,	
	KAD_SWARMER,
	KAD_ADVANCEDSWARMER,
}
squadclass[eCorvette] = {
	HGN_ASSAULTCORVETTE,
	HGN_PULSARCORVETTE,
	HGN_HEAVYASSAULTCORVETTE,
	HGN_MINELAYERCORVETTE,	
	VGR_MISSILECORVETTE,
	VGR_LASERCORVETTE,
	VGR_MINELAYERCORVETTE,
	VGR_COMMANDCORVETTE,
	KUS_LIGHTCORVETTE,
	KUS_HEAVYCORVETTE,
	KUS_MULTIGUNCORVETTE,
	KUS_SALVAGECORVETTE,
	KUS_REPAIRCORVETTE,
	KUS_MINELAYERCORVETTE,
	TAI_LIGHTCORVETTE,
	TAI_HEAVYCORVETTE,
	TAI_LIGHTCORVETTE3,
	TAI_HEAVYCORVETTE3,
	TAI_SALVAGECORVETTE,
	TAI_REPAIRCORVETTE,
	TAI_MULTIGUNCORVETTE,
	TAI_MULTIGUNCORVETTE3,
	TAI_MINELAYERCORVETTE,
	TUR_STANDARDCORVETTE,
	TUR_MISSILECORVETTE,
}
squadclass[eFrigate] = {
	HGN_ASSAULTFRIGATE,
	HGN_DEFENSEFIELDFRIGATE,
	HGN_IONCANNONFRIGATE,
	HGN_MARINEFRIGATE,
	HGN_MARINEFRIGATE_SOBAN,
	HGN_TORPEDOFRIGATE,
	HGN_TORPEDOFRIGATEELITE,
	HGN_HW1ASSAULTFRIGATE,
	HGN_HW1IONCANNONFRIGATE,
	HGN_HW1TORPEDOFRIGATE,
	VGR_ASSAULTFRIGATE,
	VGR_HEAVYMISSILEFRIGATE,
	VGR_INFILTRATORFRIGATE,	
	VGR_HW1ASSAULTFRIGATE,
	VGR_HW1HEAVYMISSILEFRIGATE,
	VGR_HW1INFILTRATORFRIGATE,	
	KUS_ASSAULTFRIGATE,
	KUS_IONCANNONFRIGATE,
	KUS_DRONEFRIGATE,
	TAI_ASSAULTFRIGATE,
	TAI_IONCANNONFRIGATE,
	TAI_FIELDFRIGATE,
	TAI_SUPPORTFRIGATE,
	TAI_HW2ASSAULTFRIGATE,
	TAI_HW2IONCANNONFRIGATE,
	TAI_HW2SUPPORTFRIGATE,
	TUR_IONARRAYFRIGATE,
	TUR_HW2IONARRAYFRIGATE,
	KAD_MULTIBEAMFRIGATE,
	KAD_HW2MULTIBEAMFRIGATE,
	KAD_FUELPOD,
}
squadclass[eCapture] = {
	HGN_MARINEFRIGATE,
	HGN_MARINEFRIGATE_SOBAN,
	VGR_INFILTRATORFRIGATE,
	VGR_HW1INFILTRATORFRIGATE,
--	TUR_STANDARDCORVETTE,
--	KAD_CONVERTER,
}
squadclass[eShield] = {
	HGN_DEFENSEFIELDFRIGATE,
--	KUS_CLOAKGENERATOR,
--	KUS_GRAVWELLGENERATOR,
--	TAI_CLOAKGENERATOR,
--	TAI_GRAVWELLGENERATOR,
	TAI_FIELDFRIGATE,
	KAD_FUELPOD,
}
squadclass[ePlatform] = {
	HGN_GUNTURRET,
	HGN_PULSARTURRET,
	HGN_IONTURRET,
	HGN_HW1GUNTURRET,
	HGN_HW1PULSARTURRET,
	HGN_HW1IONTURRET,	
	VGR_WEAPONPLATFORM_GUN,
	VGR_WEAPONPLATFORM_MISSILE,
	VGR_HYPERSPACE_PLATFORM,
	TUR_AUTOGUNL,
	TUR_AUTOGUNS,
	TUR_HW2AUTOGUNL,	
	TUR_HW2AUTOGUNS,
}
squadclass[eAntiFighter] = {
	HGN_INTERCEPTOR,
	HGN_ASSAULTCORVETTE,
	HGN_ASSAULTFRIGATE,
	HGN_HW1ASSAULTFRIGATE,
	HGN_GUNTURRET,	
	HGN_HW1GUNTURRET,
	VGR_INTERCEPTOR,
	VGR_MISSILECORVETTE,
	VGR_ASSAULTFRIGATE,
	VGR_HW1ASSAULTFRIGATE,
	VGR_WEAPONPLATFORM_GUN,
	KUS_SCOUT,
	KUS_INTERCEPTOR,	
	KUS_DEFENDER,	
	KUS_CLOAKEDFIGHTER,
	KUS_LIGHTCORVETTE,  
	KUS_DRONEFRIGATE,
	KUS_MISSILEDESTROYER,
	KUS_HW2DRONEFRIGATE,
	KUS_HW2MISSILEDESTROYER,
	TAI_SCOUT,
	TAI_INTERCEPTOR,  
	TAI_SCOUT5,
	TAI_INTERCEPTOR5,  
	TAI_DEFENDER, 
	TAI_LIGHTCORVETTE,
	TAI_MULTIGUNCORVETTE,
	TAI_LIGHTCORVETTE3,
	TAI_MULTIGUNCORVETTE3,
	TAI_MISSILEDESTROYER,
	TAI_HW2MISSILEDESTROYER,
	TUR_FIGHTER,
	TUR_FIGHTER5,	
	TUR_STANDARDCORVETTE,
	TUR_MISSILECORVETTE,
	TUR_AUTOGUNS,
	TUR_HW2AUTOGUNS,
	KAD_ADVANCEDSWARMER,
}
squadclass[eAntiCorvette] = {
	HGN_PULSARFIGHTER,
	HGN_PULSARCORVETTE,
	HGN_TORPEDOFRIGATE,
	HGN_TORPEDOFRIGATEELITE,
	HGN_HW1TORPEDOFRIGATE,
	HGN_PULSARTURRET,
	HGN_HW1PULSARTURRET,
	VGR_LANCEFIGHTER,
	VGR_MISSILECORVETTE,
	VGR_ASSAULTFRIGATE,
	VGR_HW1ASSAULTFRIGATE,
	KUS_DEFENDER,		
	KUS_CLOAKEDFIGHTER,
	KUS_HEAVYCORVETTE,  
	KUS_ASSAULTFRIGATE,	
	KUS_DRONEFRIGATE,
	KUS_MISSILEDESTROYER,
	TAI_INTERCEPTOR,  
	TAI_INTERCEPTOR5,  
	TAI_DEFENDER, 	
	TAI_HEAVYCORVETTE,		
	TAI_HEAVYCORVETTE3,		
	TAI_ASSAULTFRIGATE,
	TAI_MISSILEDESTROYER,
	TAI_HW2ASSAULTFRIGATE,
	TAI_HW2DESTROYER,
	TAI_HW2MISSILEDESTROYER,
	TUR_MISSILECORVETTE,
	TUR_AUTOGUNS,
	TUR_HW2AUTOGUNS,
	KAD_SWARMER,
	KAD_ADVANCEDSWARMER,
}
squadclass[eAntiFrigate] = {
	HGN_IONTURRET,
	HGN_HW1IONTURRET,	
	HGN_ATTACKBOMBER,
	HGN_ATTACKBOMBERELITE,
	HGN_HEAVYASSAULTCORVETTE,
	HGN_IONCANNONFRIGATE,
	HGN_HW1IONCANNONFRIGATE,
	HGN_MARINEFRIGATE,
	HGN_MARINEFRIGATE_SOBAN,
	HGN_DEFENSEFIELDFRIGATE,
	HGN_DESTROYER,
	HGN_BATTLECRUISER,
	HGN_HW1DESTROYER,
	HGN_HW1BATTLECRUISER,
	VGR_BOMBER,
	VGR_HEAVYMISSILEFRIGATE,
	VGR_INFILTRATORFRIGATE,
	VGR_HW1HEAVYMISSILEFRIGATE,
	VGR_HW1INFILTRATORFRIGATE,	
	VGR_DESTROYER,
	VGR_BATTLECRUISER,
	VGR_HW1DESTROYER,
	VGR_HW1BATTLECRUISER,
	VGR_WEAPONPLATFORM_MISSILE,
	KUS_ATTACKBOMBER,
	KUS_ATTACKBOMBER5,
	KUS_CLOAKEDFIGHTER,
	KUS_MINELAYERCORVETTE,				
	KUS_IONCANNONFRIGATE,
	KUS_DESTROYER,	
	KUS_HEAVYCRUISER,	
	TAI_ATTACKBOMBER,	
	TAI_ATTACKBOMBER5,	
	TAI_DEFENSEFIGHTER,
	TAI_MINELAYERCORVETTE,				
	TAI_IONCANNONFRIGATE,
	TAI_DESTROYER,	
	TAI_HEAVYCRUISER,
	TAI_HW2IONCANNONFRIGATE,
	TAI_HW2DESTROYER,	
	TAI_HW2HEAVYCRUISER,
--	TUR_STANDARDCORVETTE,
--	TUR_MISSILECORVETTE,
	TUR_IONARRAYFRIGATE,
	TUR_AUTOGUNL,
	TUR_HW2AUTOGUNL,
	KAD_SWARMER,
	KAD_ADVANCEDSWARMER,
	KAD_MULTIBEAMFRIGATE,
	KAD_HW2MULTIBEAMFRIGATE,
	KAD_P2MOTHERSHIP,
	KAD_HW2P2MOTHERSHIP,
}
squadclass[eCapital] = {
	HGN_CARRIER,
	HGN_MOTHERSHIP,
	HGN_SHIPYARD,
	HGN_DESTROYER,
	HGN_BATTLECRUISER,
	HGN_HW1DESTROYER,
	HGN_HW1BATTLECRUISER,
	HGN_DREADNAUGHT,	
	VGR_CARRIER,
	VGR_MOTHERSHIP,
	VGR_MOTHERSHIP_MAKAAN,
	VGR_SHIPYARD,
	VGR_DESTROYER,
	VGR_BATTLECRUISER,
	VGR_HW1DESTROYER,
	VGR_HW1BATTLECRUISER,
	KUS_MOTHERSHIP,
	KUS_CARRIER,	
	KUS_DESTROYER,
	KUS_MISSILEDESTROYER,
	KUS_HEAVYCRUISER,	
	TAI_MOTHERSHIP,
	TAI_CARRIER,	
	TAI_DESTROYER,
	TAI_MISSILEDESTROYER,
	TAI_HEAVYCRUISER,	
	TAI_HW2DESTROYER,
	TAI_HW2MISSILEDESTROYER,
	TAI_HW2HEAVYCRUISER,
	TUR_P1MOTHERSHIP,	
	TUR_HW2P1MOTHERSHIP,
	KAD_P2MOTHERSHIP,
	KAD_HW2P2MOTHERSHIP,
}
squadclass[eNonThreat] = {
	HGN_RESOURCECOLLECTOR,
	HGN_RESOURCECONTROLLER,
	HGN_CARRIER,
	HGN_MOTHERSHIP,
	HGN_SHIPYARD,
	HGN_SCOUT,
	HGN_PROBE,
	HGN_PROXIMITYSENSOR,
	HGN_ECMPROBE,	
	VGR_RESOURCECOLLECTOR,
	VGR_RESOURCECONTROLLER,	
	VGR_CARRIER,
	VGR_MOTHERSHIP,
	VGR_MOTHERSHIP_MAKAAN,
	VGR_SHIPYARD,	
	VGR_SCOUT,
	VGR_PROBE,
	VGR_PROBE_PROX,
	VGR_PROBE_ECM,	
	VGR_HYPERSPACE_PLATFORM,
	KUS_RESOURCECOLLECTOR,
	KUS_RESOURCECONTROLLER,
	KUS_REPAIRCORVETTE,
	KUS_MOTHERSHIP,
	KUS_CARRIER,
	KUS_PROBE,
	KUS_PROXIMITYSENSOR,	
	KUS_SENSORARRAY,
	KUS_CLOAKGENERATOR,
	KUS_RESEARCHSHIP,
	KUS_RESEARCHSHIP_1,
	KUS_RESEARCHSHIP_2,
	KUS_RESEARCHSHIP_3,
	KUS_RESEARCHSHIP_4,
	KUS_RESEARCHSHIP_5,
	TAI_RESOURCECOLLECTOR,
	TAI_RESOURCECONTROLLER,
	TAI_REPAIRCORVETTE,
	TAI_MOTHERSHIP,
	TAI_CARRIER,
	TAI_PROBE,
	TAI_PROXIMITYSENSOR,
	TAI_SENSORARRAY,
	TAI_CLOAKGENERATOR,
	TAI_RESEARCHSHIP,
	TAI_RESEARCHSHIP_1,
	TAI_RESEARCHSHIP_2,
	TAI_RESEARCHSHIP_3,
	TAI_RESEARCHSHIP_4,
	TAI_RESEARCHSHIP_5,
	TUR_MINERCORVETTE,
	KAD_UTILITYSWARMER,
}
squadclass[eHyperspaceGate] = 
{
	VGR_HYPERSPACE_PLATFORM
}
squadclass[eSubSystemAttackers] = 
{
	HGN_ATTACKBOMBER,
	HGN_ATTACKBOMBERELITE,
	VGR_BOMBER,
	KUS_ATTACKBOMBER,
	TAI_ATTACKBOMBER,
	TAI_ATTACKBOMBER5,
	KAD_SWARMER,
}
squadclass[eNonCriticalSubSys] = 
{
	CLOAKGENERATOR,
	FIRECONTROLTOWER,
	HYPERSPACEINHIBITOR,
	ADVANCEDARRAY,
	CLOAKSENSOR,
}
squadclass[eGoodRepairAttackers] = 
{
	HGN_INTERCEPTOR,
	HGN_HEAVYASSAULTCORVETTE,
	HGN_ASSAULTFRIGATE,
	HGN_IONCANNONFRIGATE,
	HGN_DESTROYER,
	HGN_BATTLECRUISER,
	HGN_HW1DESTROYER,
	HGN_HW1BATTLECRUISER,	
	VGR_INTERCEPTOR,
	VGR_MISSILECORVETTE,
	VGR_ASSAULTFRIGATE,
	VGR_HW1ASSAULTFRIGATE,
	VGR_DESTROYER,
	VGR_BATTLECRUISER,
	VGR_HW1DESTROYER,
	VGR_HW1BATTLECRUISER,
	KUS_INTERCEPTOR,
	KUS_ATTACKBOMBER,
	KUS_CLOAKEDFIGHTER,
	KUS_HEAVYCORVETTE,		
	KUS_ASSAULTFRIGATE,
	KUS_IONCANNONFRIGATE,
	KUS_DESTROYER,
	KUS_MISSILEDESTROYER,
	KUS_HEAVYCRUISER,
	TAI_INTERCEPTOR,
	TAI_INTERCEPTOR5,
	TAI_ATTACKBOMBER,
	TAI_ATTACKBOMBER5,
	TAI_HEAVYCORVETTE,		
	TAI_HEAVYCORVETTE3,		
	TAI_ASSAULTFRIGATE,
	TAI_IONCANNONFRIGATE,
	TAI_DESTROYER,
	TAI_MISSILEDESTROYER,
	TAI_HEAVYCRUISER,
	TAI_HW2ASSAULTFRIGATE,
	TAI_HW2IONCANNONFRIGATE,
	TAI_HW2DESTROYER,
	TAI_HW2MISSILEDESTROYER,
	TAI_HW2HEAVYCRUISER,
	TUR_STANDARDCORVETTE,
	KAD_SWARMER,
}
eUselessShips = eMaxCount
eBattleCruiser = eMaxCount + 1
sg_maxClasses = eBattleCruiser+1
eMissileShips = eMaxCount + 2
sg_maxClasses = eMissileShips  + 1
squadclass[ eUselessShips ] = 
{
	HGN_MINELAYERCORVETTE,	
	VGR_MINELAYERCORVETTE,
	VGR_COMMANDCORVETTE,
	VGR_HYPERSPACE_PLATFORM,
	KUS_SALVAGECORVETTE,
	TAI_SALVAGECORVETTE,
}
squadclass[eBattleCruiser] = 
{
	HGN_BATTLECRUISER,
	HGN_HW1BATTLECRUISER,
	VGR_BATTLECRUISER,
	VGR_HW1BATTLECRUISER,
	KUS_HEAVYCRUISER,
	TAI_HEAVYCRUISER,
	TAI_HW2HEAVYCRUISER,
	TUR_P1MOTHERSHIP,
	TUR_HW2P1MOTHERSHIP,
	KAD_P2MOTHERSHIP,
	KAD_HW2P2MOTHERSHIP,
}

squadclass[eMissileShips] = {

	VGR_MISSILECORVETTE,
	KUS_MINELAYERCORVETTE,
	TAI_MINELAYERCORVETTE,
	TUR_MISSILECORVETTE,
	HGN_TORPEDOFRIGATE,
	HGN_HW1TORPEDOFRIGATE,
	VGR_ASSAULTFRIGATE,
	VGR_HEAVYMISSILEFRIGATE,
	VGR_HW1ASSAULTFRIGATE,
	VGR_HW1HEAVYMISSILEFRIGATE,
	VGR_WEAPONPLATFORM_MISSILE,
	HGN_DESTROYER,
	HGN_HW1DESTROYER,
	VGR_DESTROYER,
	VGR_BATTLECRUISER,
	VGR_HW1DESTROYER,
	VGR_HW1BATTLECRUISER,
	KUS_MISSILEDESTROYER,
	KUS_HW2MISSILEDESTROYER,
	TAI_MISSILEDESTROYER,
	TAI_HW2MISSILEDESTROYER,
}
function FastAddToClass( tbl, classid )
	for a,b in tbl do
		AddToClass( b, classid )
	end
end

function ClassInitialize()
	for i=0, sg_maxClasses do
		if (squadclass[i]) then
			FastAddToClass( squadclass[i], i )
		end
	end		
	AddClassName( eMotherShip, "Motherships")
	AddClassName( eCollector, "Collectors")
	AddClassName( eDropOff, "DropOffs")
	AddClassName( eFighter, "Fighters")
	AddClassName( eFrigate, "Frigates")
	AddClassName( eCorvette, "Corvettes")
	AddClassName( eCapital, "Capital")
	AddClassName( eAntiFighter, "AntiFighter")
	AddClassName( eAntiCorvette, "AntiCorvette")
	AddClassName( eAntiFrigate, "AntiFrigate")
	AddClassName( ePlatform, "Platform")
	AddClassName( eRefinery, "Refinery")
	AddClassName( eHyperspaceGate, "HypGates")
	AddClassName( eShield, "Shields")
	AddClassName( eCapture, "Capture")
	AddClassName( eSubSystemAttackers, "SubSysKillas")
	AddClassName( eBattleCruiser, "BattleCruiser")
end

