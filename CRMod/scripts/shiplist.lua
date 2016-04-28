--Advanced Ver1.00
--last updated 14 Oct 2008

tHGNShips = 
{
	-- Fighters ---------------

	{ 
		Type =					Ship, 
		ThingToBuild =			"Hgn_Scout",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		10,
		DisplayedName =			"$7030",
		Description =			"$7031"
	},

	{ 
		Type =					Ship, 
		ThingToBuild =			"Hgn_Interceptor",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"FighterProduction",
		DisplayPriority =		20,
		DisplayedName =			"$7032",
		Description =			"$7033"
	},
	
	{ 
		Type =					Ship, 
		ThingToBuild =			"Hgn_PulsarFighter",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"FighterProduction",
		DisplayPriority =		25,
		DisplayedName =			"Pulsar Fighter",
		Description =			"$7035"
	},

	{ 
		Type =					Ship, 
		ThingToBuild =			"Hgn_AttackBomber",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"FighterProduction",
		DisplayPriority =		30,
		DisplayedName =			"$7034",
		Description =			"$7035"
	},

	-- Corvettes --------------

	{ 
		Type =					Ship, 
		ThingToBuild =			"Hgn_AssaultCorvette",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"CorvetteProduction",
		DisplayPriority =		50,
		DisplayedName =			"$7038",
		Description =			"$7039"
	},

	{ 
		Type =					Ship, 
		ThingToBuild =			"Hgn_PulsarCorvette",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"CorvetteProduction",
		DisplayPriority =		51,
		DisplayedName =			"$7040",
		Description =			"$7041"
	},

	{ 
		Type =					Ship, 
		ThingToBuild =			"Hgn_HeavyAssaultCorvette",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"CorvetteProduction",
		DisplayPriority =		52,
		DisplayedName =			"Heavy Gunship",
		Description =			"$7039"
	},

	{ 
		Type =					Ship, 
		ThingToBuild =			"Hgn_MinelayerCorvette",
		RequiredResearch =		"GraviticAttractionMines",
		RequiredShipSubSystems =	"CorvetteProduction",
		DisplayPriority =		53,
		DisplayedName =			"$7042",
		Description =			"$7043"
	},

	-- Frigates ---------------

--	{ 
--		Type =					Ship, 
--		ThingToBuild =			"Hgn_SupportFrigate",
--		RequiredResearch =		"",
--		RequiredShipSubSystems =	"FrigateProduction",
--		DisplayPriority =		60,
--		DisplayedName =			"Support Frigate",
--		Description =			" (Repair) (400 RUs)"
--	},

	{ 
		Type =					Ship, 
		ThingToBuild =			"Hgn_AssaultFrigate",
		RequiredResearch =		"InstaAdvancedFrigateTech",
		RequiredShipSubSystems =	"FrigateProduction",
		DisplayPriority =		60,
		DisplayedName =			"$7048",
		Description =			"$7049"
	},
	
	{ 
		Type =					Ship, 
		ThingToBuild =			"Hgn_TorpedoFrigate",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"FrigateProduction",
		DisplayPriority =		65,
		DisplayedName =			"$7046",
		Description =			"$7047"
	},
	
	{ 
		Type =					Ship, 
		ThingToBuild =			"Hgn_IonCannonFrigate",
		RequiredResearch =		"InstaAdvancedFrigateTech",
		RequiredShipSubSystems =	"FrigateProduction",
		DisplayPriority =		70,
		DisplayedName =			"$1520",
		Description =			"$7051"
	},
	
	{ 
		Type =					Ship, 
		ThingToBuild =			"Hgn_MarineFrigate",
		RequiredResearch =		"InstaAdvancedFrigateTech",
		RequiredShipSubSystems =	"FrigateProduction",
		DisplayPriority =		75,
		DisplayedName =			"$7052",
		Description =			"$7053"
	},

	{ 
		Type =					Ship, 
		ThingToBuild =			"Hgn_DefenseFieldFrigate",
		RequiredResearch =		"DefenseFieldFrigateShield",
		RequiredShipSubSystems =	"FrigateProduction",
		DisplayPriority =		80,
		DisplayedName =			"$7044",
		Description =			"$7045"
	},

	-- Capital Ships ----------

	{ 
		Type =					Ship, 
		ThingToBuild =			"Hgn_Carrier",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"CapShipProduction",
		DisplayPriority =		110,
		DisplayedName =			"$7054",
		Description =			"$7055"
	},

	{ 
		Type =					Ship, 
		ThingToBuild =			"Hgn_Destroyer",
		RequiredResearch =		"DestroyerTech",
		RequiredShipSubSystems =	"CapShipProduction",
		DisplayPriority =		116,
		DisplayedName =			"$7056",
		Description =			"$7057"
	},

	{ 
		Type =					Ship, 
		ThingToBuild =			"Hgn_Shipyard",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"Hyperspace",
		DisplayPriority =		117,
		DisplayedName =			"$7058",
		Description =			"$7059"
	},

	{ 
		Type =					Ship, 
		ThingToBuild =			"Hgn_Battlecruiser",
		RequiredResearch =		"BattlecruiserIonWeapons",
		RequiredShipSubSystems =	"CapShipProduction",
		DisplayPriority =		118,
		DisplayedName =			"$7060",
		Description =			"$7061"
	},
	--HW1 Frigates ---------------
	{
		Type =					Ship,
		ThingToBuild =			"hgn_hscore",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		144,
		DisplayedName =			"***HW1 Balance Ships***",
		Description =			"$11051"
	},	
	{ 
		Type =					Ship, 
		ThingToBuild =			"Hgn_Hw1AssaultFrigate",
		RequiredResearch =		"InstaAdvancedFrigateTech",
		RequiredShipSubSystems =	"FrigateProduction",
		DisplayPriority =		60,
		DisplayedName =			"$7048",
		Description =			"$7049"
	},
	
	{ 
		Type =					Ship, 
		ThingToBuild =			"Hgn_Hw1TorpedoFrigate",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"FrigateProduction",
		DisplayPriority =		65,
		DisplayedName =			"$7046",
		Description =			"$7047"
	},
	
	{ 
		Type =					Ship, 
		ThingToBuild =			"Hgn_Hw1IonCannonFrigate",
		RequiredResearch =		"InstaAdvancedFrigateTech",
		RequiredShipSubSystems =	"FrigateProduction",
		DisplayPriority =		70,
		DisplayedName =			"$1520",
		Description =			"$7051"
	},	
	--HW1 Capital Ships----------
	{ 
		Type =					Ship, 
		ThingToBuild =			"Hgn_Hw1Destroyer",
		RequiredResearch =		"DestroyerTech",
		RequiredShipSubSystems =	"CapShipProduction",
		DisplayPriority =		116,
		DisplayedName =			"$7056",
		Description =			"$7057"
	},
	{ 
		Type =					Ship, 
		ThingToBuild =			"Hgn_Hw1Battlecruiser",
		RequiredResearch =		"BattlecruiserIonWeapons",
		RequiredShipSubSystems =	"CapShipProduction",
		DisplayPriority =		118,
		DisplayedName =			"$7060",
		Description =			"$7061"
	},
	{
		Type =					Ship,
		ThingToBuild =			"hgn_hscore",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		144,
		DisplayedName =			"***HW1 Balance Ships***",
		Description =			"$11051"
	},
	
	-- Platforms --------------

	{ 
		Type =					Ship, 
		ThingToBuild =			"Hgn_GunTurret",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"PlatformProduction",
		DisplayPriority =		141,
		DisplayedName =			"$7062",
		Description =			"$7063"
	},

	{ 
		Type =					Ship, 
		ThingToBuild =			"Hgn_PulsarTurret",
		RequiredResearch =		"PlatformIonWeapons",
		RequiredShipSubSystems =	"PlatformProduction",
		DisplayPriority =		142,
		DisplayedName =			"Pulsar Platform",
		Description =			"$7065"
	},
	
	{ 
		Type =					Ship, 
		ThingToBuild =			"Hgn_IonTurret",
		RequiredResearch =		"PlatformIonWeapons",
		RequiredShipSubSystems =	"PlatformProduction",
		DisplayPriority =		143,
		DisplayedName =			"$1514",
		Description =			"$7065"
	},

	{
		Type =					Ship,
		ThingToBuild =			"hgn_hscore",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		144,
		DisplayedName =			"***HW1 Balance Turrets***",
		Description =			"$11051"
	},

	{ 
		Type =					Ship, 
		ThingToBuild =			"Hgn_Hw1GunTurret",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"PlatformProduction",
		DisplayPriority =		141,
		DisplayedName =			"$7062",
		Description =			"$7063"
	},

--	{ 
--		Type =					Ship, 
--		ThingToBuild =			"Hgn_Hw1PulsarTurret",
--		RequiredResearch =		"PlatformIonWeapons",
--		RequiredShipSubSystems =	"PlatformProduction",
--		DisplayPriority =		142,
--		DisplayedName =			"Pulsar Platform",
--		Description =			"$7065"
--	},
	
	{ 
		Type =					Ship, 
		ThingToBuild =			"Hgn_Hw1IonTurret",
		RequiredResearch =		"PlatformIonWeapons",
		RequiredShipSubSystems =	"PlatformProduction",
		DisplayPriority =		143,
		DisplayedName =			"$1514",
		Description =			"$7065"
	},

	{
		Type =					Ship,
		ThingToBuild =			"hgn_hscore",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		144,
		DisplayedName =			"***HW1 Balance Turrets***",
		Description =			"$11051"
	},


	-- Utility ----------------

	{ 
		Type =					Ship, 
		ThingToBuild =			"Hgn_ResourceCollector",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		120,
		DisplayedName =			"$7066",
		Description =			"$7067"
	},

	{ 
		Type =					Ship, 
		ThingToBuild =			"Hgn_ResourceController",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		130,
		DisplayedName =			"$7068",
		Description =			"$7069"
	},

	{ 
		Type =					Ship, 
		ThingToBuild =			"Hgn_Probe",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		140,
		DisplayedName =			"$7070",
		Description =			"$7071"
	},

	{ 
		Type =					Ship, 
		ThingToBuild =			"Hgn_ProximitySensor",
		RequiredResearch =		"SensDisProbe",
		RequiredShipSubSystems =	"",
		DisplayPriority =		150,
		DisplayedName =			"$7072",
		Description =			"$7073"
	},

	{ 
		Type =					Ship, 
		ThingToBuild =			"Hgn_ECMProbe",
		RequiredResearch =		"ECMProbe",
		RequiredShipSubSystems =	"",
		DisplayPriority =		160,
		DisplayedName =			"$7074",
		Description =			"$7075"
	},


-----------------------------------------------------------------------
-- TEMP - All other ships here, for single player game ----------------
	{ 
		Type =					Ship, 
		ThingToBuild =			"Hgn_MarineFrigate_Soban",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		75,
		DisplayedName =			"$1566",
		Description =			"$7053"
	},
	{ 
		Type =					Ship, 
		ThingToBuild =			"Hgn_Dreadnought",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		75,
		DisplayedName =			"$1540",
		Description =			"$7053"
	},
	{ 
		Type =					Ship, 
		ThingToBuild =			"Hgn_Shipyard_SPG",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"CapShipProduction",
		DisplayPriority =		117,
		DisplayedName =			"$7058",
		Description =			"$7059"
	},
	{ 
		Type =					Ship, 
		ThingToBuild =			"Hgn_Shipyard_Elohim",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"CapShipProduction",
		DisplayPriority =		117,
		DisplayedName =			"$1572",
		Description =			"$1572"
	},
	{ 
		Type =					Ship, 
		ThingToBuild =			"Hgn_Mothership",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"CapShipProduction",
		DisplayPriority =		117,
		DisplayedName =			"$1536",
		Description =			"$7059"
	},

}

tVGRShips = 
{
	{
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Scout",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		20,
		DisplayedName =			"$7130",
		Description =			"$7131" 
	},

	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Interceptor",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"FighterProduction",
		DisplayPriority =		21,
		DisplayedName =			"$7132",
		Description =			"$7133" 
	},

	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Bomber",
		RequiredResearch =		"PlasmaBombs",
		RequiredShipSubSystems =	"FighterProduction",
		DisplayPriority =		22,
		DisplayedName =			"$7134",
		Description =			"$7135" 
	},

	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_LanceFighter",
		RequiredResearch =		"LanceBeams",
		RequiredShipSubSystems =	"FighterProduction",
		DisplayPriority =		23,
		DisplayedName =			"$7136",
		Description =			"$7137" 
	},

	-- Corvettes --------------

	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_MissileCorvette",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"CorvetteProduction",
		DisplayPriority =		100,
		DisplayedName =			"$7138",
		Description =			"$7139" 
	},

	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_LaserCorvette",
		RequiredResearch =		"CorvetteLaser",
		RequiredShipSubSystems =	"CorvetteProduction",
		DisplayPriority =		105,
		DisplayedName =			"$7140",
		Description =			"$7141" 
	},
	
	{ 
		Type =					Ship, 
		ThingToBuild =			"Vgr_CommandCorvette",
		RequiredResearch =		"CorvetteCommand",
		RequiredShipSubSystems =	"CorvetteProduction",
		DisplayPriority =		110,
		DisplayedName =			"$7144",
		Description =			"$7145" 
	},

	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_MinelayerCorvette",
		RequiredResearch =		"CorvetteGraviticAttraction",
		RequiredShipSubSystems =	"CorvetteProduction",
		DisplayPriority =		115,
		DisplayedName =			"$7142",
		Description =			"$7143" 
	},

	-- Frigates ---------------

	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_AssaultFrigate",
		RequiredResearch =		"FrigateAssault",
		RequiredShipSubSystems =	"FrigateProduction",
		DisplayPriority =		200,
		DisplayedName =			"$7146",
		Description =			"$7147" 
	},

--	{ 
--		Type = 					Ship, 
--		ThingToBuild = 			"Vgr_TransportFrigate",
--		RequiredResearch =		"FrigateTransport",
--		RequiredShipSubSystems =	"FrigateProduction",
--		DisplayPriority =		210,
--		DisplayedName =			"Transport Frigate (Unit Transport) (400 RUs)",
--		Description =			"" 
--	},

	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_HeavyMissileFrigate",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"FrigateProduction",
		DisplayPriority =		220,
		DisplayedName =			"$7148",
		Description =			"$7149" 
	},

	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_InfiltratorFrigate",
		RequiredResearch =		"FrigateInfiltrationTech",
		RequiredShipSubSystems =	"FrigateProduction",
		DisplayPriority =		230,
		DisplayedName =			"$7150",
		Description =			"$7151" 
	},


	-- Capital Ships ----------

	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Destroyer",
		RequiredResearch =		"DestroyerGuns",
		RequiredShipSubSystems =	"CapShipProduction",
		DisplayPriority =		300,
		DisplayedName =			"$7152",
		Description =			"$7153" 
	},

	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Carrier",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"CapShipProduction",
		DisplayPriority =		310,
		DisplayedName =			"$7154",
		Description =			"$7155" 
	},

	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_ShipYard",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"Hyperspace",
		DisplayPriority =		320,
		DisplayedName =			"$7156",
		Description =			"$7157" 
	},

	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_BattleCruiser",
		RequiredResearch =		"BattlecruiserIonWeapons",
		RequiredShipSubSystems =	"CapShipProduction",
		DisplayPriority =		330,
		DisplayedName =			"$7158",
		Description =			"$7159"
	},
	--HW1 Frigates ---------------
	{
		Type =					Ship,
		ThingToBuild =			"Vgr_PlanetKillerMissile",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		144,
		DisplayedName =			"***HW1 Balance Ships***",
		Description =			"$11051"
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Hw1AssaultFrigate",
		RequiredResearch =		"FrigateAssault",
		RequiredShipSubSystems =	"FrigateProduction",
		DisplayPriority =		200,
		DisplayedName =			"$7146",
		Description =			"$7147" 
	},

	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Hw1HeavyMissileFrigate",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"FrigateProduction",
		DisplayPriority =		220,
		DisplayedName =			"$7148",
		Description =			"$7149" 
	},

	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Hw1InfiltratorFrigate",
		RequiredResearch =		"FrigateInfiltrationTech",
		RequiredShipSubSystems =	"FrigateProduction",
		DisplayPriority =		230,
		DisplayedName =			"$7150",
		Description =			"$7151" 
	},
	
	--HW1 Capital Ships----------
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Hw1Destroyer",
		RequiredResearch =		"DestroyerGuns",
		RequiredShipSubSystems =	"CapShipProduction",
		DisplayPriority =		300,
		DisplayedName =			"$7152",
		Description =			"$7153" 
	},

	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Hw1BattleCruiser",
		RequiredResearch =		"BattlecruiserIonWeapons",
		RequiredShipSubSystems =	"CapShipProduction",
		DisplayPriority =		330,
		DisplayedName =			"$7158",
		Description =			"$7159"
	},

	{
		Type =					Ship,
		ThingToBuild =			"Vgr_PlanetKillerMissile",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		144,
		DisplayedName =			"***HW1 Balance Ships***",
		Description =			"$11051"
	},

	-- Platforms --------------

	{ 
		Type =					Ship, 
		ThingToBuild =			"Vgr_WeaponPlatform_gun",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"PlatformProduction",
		DisplayPriority =		400,
		DisplayedName =			"$7160",
		Description =			"$7161" 
	},

	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_WeaponPlatform_missile",
		RequiredResearch =		"PlatformHeavyMissiles",
		RequiredShipSubSystems =	"PlatformProduction",
		DisplayPriority =		410,
		DisplayedName =			"$7162",
		Description =			"$7163" 
	},

	-- Utility ----------------

	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_ResourceCollector",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		500,
		DisplayedName =			"$7164",
		Description =			"$7165" 
	},

	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_ResourceController",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		510,
		DisplayedName =			"$7166",
		Description =			"$7167" 
	},

	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_HyperSpace_Platform",
		RequiredResearch =		"HyperspaceGateTech",
		RequiredShipSubSystems =	"PlatformProduction",
		DisplayPriority =		520,
		DisplayedName =			"$7174",
		Description =			"$7175" 
	},

	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Probe",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		540,
		DisplayedName =			"$7168",
		Description =			"$7169" 
	},

	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Probe_Prox",
		RequiredResearch =		"ProbeProxSensor",
		RequiredShipSubSystems =	"",
		DisplayPriority =		550,
		DisplayedName =			"$7170",
		Description =			"$7171" 
	},

	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Probe_ECM",
		RequiredResearch =		"ProbeSensorDisruption",
		RequiredShipSubSystems =	"",
		DisplayPriority =		560,
		DisplayedName =			"$7172",
		Description =			"$7173" 
	},

	-- Special --------------
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_PlanetKiller",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		612,
		DisplayedName =			"$1704",
		Description =			"" 
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_PlanetKillerMissile",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		612,
		DisplayedName =			"$1664",
		Description =			"" 
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_CommStation",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		612,
		DisplayedName =			"$1668",
		Description =			"" 
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_PrisonStation",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		612,
		DisplayedName =			"$1669",
		Description =			"" 
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Mothership_Makaan",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		612,
		DisplayedName =			"$1626",
		Description =			"" 
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Mothership",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		612,
		DisplayedName =			"$1665",
		Description =			"" 
	},
}

tBSTShips = 
{
    { 
        Type = Ship, 
        ThingToBuild = "Bst_Mothership", 
	RequiredResearch =		"",
	RequiredShipSubSystems =	"",
        DisplayPriority = 20, 
        DisplayedName = "Command Ship", 
        Description = "Beast Command Ship", 
   	},
}

tKPRShips = 
{
    { 
        Type = Ship, 
        ThingToBuild = "kpr_attackdroid", 
	RequiredResearch =		"",
	RequiredShipSubSystems =	"",
        DisplayPriority = 20, 
        DisplayedName = "$1708", 
        Description = "$1709", 
    }, 
    { 
        Type = Ship, 
        ThingToBuild = "kpr_mover", 
 	RequiredResearch =		"",
	RequiredShipSubSystems =	"",
        DisplayPriority = 31, 
        DisplayedName = "$1702", 
        Description = "$1703", 
    }, 
    { 
        Type = Ship, 
        ThingToBuild = "kpr_sin", 
	RequiredResearch =		"",
	RequiredShipSubSystems =	"",
        DisplayPriority = 51, 
        DisplayedName = "Sin", 
        Description = "$1841", 
    },
     { 
        Type = Ship, 
        ThingToBuild = "kpr_destroyer", 
	RequiredResearch =		"",
	RequiredShipSubSystems =	"",
        DisplayPriority = 52, 
        DisplayedName = "$1700", 
        Description = "$1701", 
    },
      { 
        Type = Ship, 
        ThingToBuild = "kpr_dreadnaught", 
	RequiredResearch =		"",
	RequiredShipSubSystems =	"",
        DisplayPriority = 53, 
        DisplayedName = "$1540", 
        Description = "$1541", 
    },
    { 
        Type = Ship, 
        ThingToBuild = "kpr_sajuuk", 
	RequiredResearch =		"",
	RequiredShipSubSystems =	"",
        DisplayPriority = 55, 
        DisplayedName = "$1706", 
        Description = "$1707", 
    },
    { 
        Type = Ship, 
        ThingToBuild = "kpr_capital_sleeper", 
	RequiredResearch =		"",
	RequiredShipSubSystems =	"",
        DisplayPriority = 56, 
        DisplayedName = "Sleeper", 
        Description = "Progenitor Carrier", 
    },
    { 
        Type = Ship, 
        ThingToBuild = "kpr_capital_mothership", 
	RequiredResearch =		"",
	RequiredShipSubSystems =	"",
        DisplayPriority = 57, 
        DisplayedName = "Progenitor Mothership", 
        Description = "Progenitor Mothership of epic scale", 
    },
    { 
        Type = Ship, 
        ThingToBuild = "kpr_capital_reaver", 
	RequiredResearch =		"",
	RequiredShipSubSystems =	"",
        DisplayPriority = 58, 
        DisplayedName = "Reaver", 
        Description = "AI-controlled progenitor battlecruiser", 
    },
    { 
        Type = Ship, 
        ThingToBuild = "kpr_balcoragate", 
	RequiredResearch =		"",
	RequiredShipSubSystems =	"",
        DisplayPriority = 59, 
        DisplayedName = "Balcora Gate", 
        Description = "AI-controlled progenitor hyperspace supergate", 
    },
    { 
        Type = Ship, 
        ThingToBuild = "kpr_fighter_stalker", 
	RequiredResearch =		"",
	RequiredShipSubSystems =	"",
        DisplayPriority = 60, 
        DisplayedName = "Stalker", 
        Description = "AI-controlled progenitor multiple burn reconnaissance drone", 
    },
    { 
        Type = Ship, 
        ThingToBuild = "kpr_utility_processor", 
	RequiredResearch =		"",
	RequiredShipSubSystems =	"",
        DisplayPriority = 61, 
        DisplayedName = "Processor", 
        Description = "AI-controlled progenitor matter refinement ship", 
    },
    { 
        Type = Ship, 
        ThingToBuild = "kpr_utility_observer", 
	RequiredResearch =		"",
	RequiredShipSubSystems =	"",
        DisplayPriority = 62, 
        DisplayedName = "Observer", 
        Description = "AI-controlled progenitor single burn advanced reconnaissance drone", 
    },
    { 
        Type = Ship, 
        ThingToBuild = "kpr_utility_reclaimer", 
	RequiredResearch =		"",
	RequiredShipSubSystems =	"",
        DisplayPriority = 63, 
        DisplayedName = "Reclaimer", 
        Description = "AI-controlled progenitor acquisition drone", 
    },
    { 
        Type = Ship, 
        ThingToBuild = "kpr_seeker", 
	RequiredResearch =		"",
	RequiredShipSubSystems =	"",
        DisplayPriority = 63, 
        DisplayedName = "Seeker", 
        Description = "Frigate Class: Anti-Corvette", 
    },
    { 
        Type = Ship, 
        ThingToBuild = "kpr_frigate_guardian", 
	RequiredResearch =		"",
	RequiredShipSubSystems =	"",
        DisplayPriority = 64, 
        DisplayedName = "Guardian", 
        Description = "AI-controlled progenitor anti-frigate and anti-capital ship", 
    },
    { 
        Type = Ship, 
        ThingToBuild = "kpr_frigate_Sentinel", 
	RequiredResearch =		"",
	RequiredShipSubSystems =	"",
        DisplayPriority = 64, 
        DisplayedName = "Sentinel", 
        Description = "AI-controlled progenitor anti-fighter ship", 
    },
    { 
        Type = Ship, 
        ThingToBuild = "kpr_deciever", 
	RequiredResearch =		"",
	RequiredShipSubSystems =	"",
        DisplayPriority = 65, 
        DisplayedName = "deciever", 
        Description = "Frigate Class: Capture Frigate", 
    },
}
	
tBENShips = 
{
	{
		Type =					Ship,
		ThingToBuild =			"ben_bentus",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		10,
		DisplayedName =			"Harbor Ship",
		Description =			"$1833",
	},
	{
		Type =					Ship,
		ThingToBuild =			"ben_bentusiexchange",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		10,
		DisplayedName =			"Trade Ship",
		Description =			"$11001",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Ben_cargobarge",
		RequiredResearch =		"FighterChassis",
		RequiredShipSubSystems =	"",
		DisplayPriority =		11,
		DisplayedName =			"Cargo Barge",
		Description =			"$11003",
	},
}

tKUSShips = 
{
	{
		Type =					Ship,
		ThingToBuild =			"Kus_Scout",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		10,
		DisplayedName =			"$11000",
		Description =			"$11001",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_Interceptor",
		RequiredResearch =		"FighterChassis",
		RequiredShipSubSystems =	"",
		DisplayPriority =		11,
		DisplayedName =			"$11002",
		Description =			"$11003",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_Defender",
		RequiredResearch =		"DefenderSubSystems",
		RequiredShipSubSystems =	"",
		DisplayPriority =		12,
		DisplayedName =			"$11006",
		Description =			"$11007",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_AttackBomber",
		RequiredResearch =		"PlasmaBombLauncher",
		RequiredShipSubSystems =	"",
		DisplayPriority =		13,
		DisplayedName =			"$11004",
		Description =			"$11005",
	},	
	{
		Type =					Ship,
		ThingToBuild =			"Kus_CloakedFighter",
		RequiredResearch =		"CloakedFighter",
		RequiredShipSubSystems =	"",
		DisplayPriority =		14,
		DisplayedName =			"$11008",
		Description =			"$11009",
	},
  {
    Type = Ship,
    ThingToBuild = "kus_Scout5",
    RequiredResearch = "FighterDrive",
    RequiredShipSubSystems = "",
    DisplayPriority = 223,
    DisplayedName = "Scout Squadron",
		Description =			"$11001",
  },
    {
    Type = Ship,
    ThingToBuild = "kus_interceptor5",
    RequiredResearch = "FighterChassis",
    RequiredShipSubSystems = "",
    DisplayPriority = 225,
    DisplayedName = "Interceptor Squadron",
		Description =			"$11003",
  },
    {
    Type = Ship,
    ThingToBuild = "kus_attackbomber5",
    RequiredResearch = "PlasmaBombLauncher",
    RequiredShipSubSystems = "",
    DisplayPriority = 227,
    DisplayedName = "Attack Bomber Squadron",
		Description =			"$11005",
  },
--Corvettes--------------
	{
		Type =					Ship,
		ThingToBuild =			"Kus_RepairCorvette",
		RequiredResearch =		"CorvetteDrive",
		RequiredShipSubSystems =	"",
		DisplayPriority =		20,
		DisplayedName =			"$11022",
		Description =			"$11023",
	},
    --
    -- ***WARNING***
    -- This next stanza is referenced by index in DataHW1Campaign/LevelData/Campaign/HomeworldClassic/Kushan/Build.lua.
    -- If you modify it, please keep taht other one up to date!
    --
	{
		Type =					Ship,
		ThingToBuild =			"Kus_SalvageCorvette",
		RequiredResearch =		"CorvetteChassis",
		RequiredShipSubSystems =	"",
		DisplayPriority =		21,
		DisplayedName =			"$11020",
		Description =			"$11021",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_LightCorvette",
		RequiredResearch =		"CorvetteChassis",
		RequiredShipSubSystems =	"",
		DisplayPriority =		22,
		DisplayedName =			"$11012",
		Description =			"$11013",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_HeavyCorvette",
		RequiredResearch =		"HeavyCorvetteUpgrade",
		RequiredShipSubSystems =	"",
		DisplayPriority =		23,
		DisplayedName =			"$11014",
		Description =			"$11015",
	},	
	{
		Type =					Ship,
		ThingToBuild =			"Kus_MultiGunCorvette",
		RequiredResearch =		"FastTrackingTurrets",
		RequiredShipSubSystems =	"",
		DisplayPriority =		24,
		DisplayedName =			"$11016",
		Description =			"$11017",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_MinelayerCorvette",
		RequiredResearch =		"MinelayingTech",
		RequiredShipSubSystems =	"",
		DisplayPriority =		25,
		DisplayedName =			"$11018",
		Description =			"$11019",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_LightCorvette3",
		RequiredResearch =		"CorvetteChassis",
		RequiredShipSubSystems =	"",
		DisplayPriority =		222,
		DisplayedName =			"Light Corvette Squadron",
		Description =			"$11013",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_HeavyCorvette3",
		RequiredResearch =		"HeavyCorvetteUpgrade",
		RequiredShipSubSystems =	"",
		DisplayPriority =		223,
		DisplayedName =			"Heavy Corvette Squadron",
		Description =			"$11015",
	},	
	{
		Type =					Ship,
		ThingToBuild =			"Kus_MultiGunCorvette3",
		RequiredResearch =		"FastTrackingTurrets",
		RequiredShipSubSystems =	"",
		DisplayPriority =		224,
		DisplayedName =			"Multigun Corvette Squadron",
		Description =			"$11017",
	},
--Frigates---------------
	{
		Type =					Ship,
		ThingToBuild =			"Kus_AssaultFrigate",
		RequiredResearch =		"CapitalShipChassis",
		RequiredShipSubSystems =	"",
		DisplayPriority =		51,
		DisplayedName =			"$11024",
		Description =			"$11025",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_IonCannonFrigate",
		RequiredResearch =		"IonCannons",
		RequiredShipSubSystems =	"",
		DisplayPriority =		52,
		DisplayedName =			"$11026",
		Description =			"$11027",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_SupportFrigate",
		RequiredResearch =		"CapitalShipDrive",
		RequiredShipSubSystems =	"",
		DisplayPriority =		50,
		DisplayedName =			"$11028",
		Description =			"$11029",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_DroneFrigate",
		RequiredResearch =		"DroneTechnology",
		RequiredShipSubSystems =	"",
		DisplayPriority =		53,
		DisplayedName =			"$11030",
		Description =			"$11031",
	},
--Capital Ships----------
	{
		Type =					Ship,
		ThingToBuild =			"Kus_Destroyer",
		RequiredResearch =		"SuperCapitalShipDrive",
		RequiredShipSubSystems =	"",
		DisplayPriority =		70,
		DisplayedName =			"$11034",
		Description =			"$11035"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_MissileDestroyer",
		RequiredResearch =		"GuidedMissiles",
		RequiredShipSubSystems =	"",
		DisplayPriority =		71,
		DisplayedName =			"$11036",
		Description =			"$11037"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_Carrier",
		RequiredResearch =		"SuperHeavyChassis",
		RequiredShipSubSystems =	"",
		DisplayPriority =		72,
		DisplayedName =			"$11040",
		Description =			"$11041"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_HeavyCruiser",
		RequiredResearch =		"HeavyGuns",
		RequiredShipSubSystems =	"",
		DisplayPriority =		73,
		DisplayedName =			"$11038",
		Description =			"$11039"
	},	
--HW2 Frigates---------------
	{
		Type =					Ship,
		ThingToBuild =			"Kus_Drone1",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		100,	
		DisplayedName =			"***Hw2 Balance Ships***",
		Description =			""	
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_Hw2AssaultFrigate",
		RequiredResearch =		"CapitalShipChassis",
		RequiredShipSubSystems =	"",
		DisplayPriority =		51,
		DisplayedName =			"$11024",
		Description =			"$11025",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_Hw2IonCannonFrigate",
		RequiredResearch =		"IonCannons",
		RequiredShipSubSystems =	"",
		DisplayPriority =		52,
		DisplayedName =			"$11026",
		Description =			"$11027",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_Hw2SupportFrigate",
		RequiredResearch =		"CapitalShipDrive",
		RequiredShipSubSystems =	"",
		DisplayPriority =		50,
		DisplayedName =			"$11028",
		Description =			"$11029",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_Hw2DroneFrigate",
		RequiredResearch =		"DroneTechnology",
		RequiredShipSubSystems =	"",
		DisplayPriority =		53,
		DisplayedName =			"$11030",
		Description =			"$11031",
	},
--HW2 Capital Ships----------
	{
		Type =					Ship,
		ThingToBuild =			"Kus_Hw2Destroyer",
		RequiredResearch =		"SuperCapitalShipDrive",
		RequiredShipSubSystems =	"",
		DisplayPriority =		70,
		DisplayedName =			"$11034",
		Description =			"$11035"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_Hw2MissileDestroyer",
		RequiredResearch =		"GuidedMissiles",
		RequiredShipSubSystems =	"",
		DisplayPriority =		71,
		DisplayedName =			"$11036",
		Description =			"$11037"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_Hw2HeavyCruiser",
		RequiredResearch =		"HeavyGuns",
		RequiredShipSubSystems =	"",
		DisplayPriority =		73,
		DisplayedName =			"$11038",
		Description =			"$11039"
	},	
	{
		Type =					Ship,
		ThingToBuild =			"Kus_Drone10",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		100,	
		DisplayedName =			"***Hw2 Balance Ships***",
		Description =			""	
	},
--Utility----------------
	{
		Type =					Ship,
		ThingToBuild =			"Kus_Autogunl",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		100,	
		DisplayedName =			"Autogun Platform Large",
		Description =			""	
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_Autoguns",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		100,	
		DisplayedName =			"Autogun Platform Small",
		Description =			""	
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_ResourceCollector",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		100,
		DisplayedName =			"$11044",
		Description =			"$11045"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_ResourceController",
		RequiredResearch =		"CapitalShipDrive",
		RequiredShipSubSystems =	"",
		DisplayPriority =		101,
		DisplayedName =			"$11046",
		Description =			"$11047"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_ResourceController1",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		101,
		DisplayedName =			"Somtaaw Processor",
		Description =			"$11047"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_ResearchShip",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		110,
		DisplayedName =			"$11042",
		Description =			"$11043"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_ResearchShip_1",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		111,
		DisplayedName =			"$11058",
		Description =			"$11043"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_ResearchShip_2",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		112,
		DisplayedName =			"$11059",
		Description =			"$11043"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_ResearchShip_3",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		113,
		DisplayedName =			"$11060",
		Description =			"$11043"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_ResearchShip_4",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		114,
		DisplayedName =			"$11061",
		Description =			"$11043"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_ResearchShip_5",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		115,
		DisplayedName =			"$11062",
		Description =			"$11043"
	},		
	{
		Type =					Ship,
		ThingToBuild =			"Kus_Probe",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		140,
		DisplayedName =			"$11052",
		Description =			"$11053"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_ProximitySensor",
		RequiredResearch =		"ProximitySensor",
		RequiredShipSubSystems =	"",
		DisplayPriority =		141,
		DisplayedName =			"$11054",
		Description =			"$11055"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_SensorArray",
		RequiredResearch =		"SensorArray",
		RequiredShipSubSystems =	"",
		DisplayPriority =		142,
		DisplayedName =			"$11056",
		Description =			"$11057"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_GravWellGenerator",
		RequiredResearch =		"GravityGenerator",
		RequiredShipSubSystems =	"",
		DisplayPriority =		143,
		DisplayedName =			"$11048",
		Description =			"$11049"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_CloakGenerator",
		RequiredResearch =		"CloakGenerator",
		RequiredShipSubSystems =	"",
		DisplayPriority =		144,
		DisplayedName =			"$11050",
		Description =			"$11051"
	},
--Drones
	{
		Type =					Ship,
		ThingToBuild =			"Kus_Drone0",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		100,	
		DisplayedName =			"Drone",
		Description =			""	
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_Mothership",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		100,	
		DisplayedName =			"Mothership",
		Description =			""	
	},
}

tTAIShips = 
{
	{
		Type =					Ship,
		ThingToBuild =			"Tai_Scout",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		10,
		DisplayedName =			"$11000",
		Description =			"$11001",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_Interceptor",
		RequiredResearch =		"FighterChassis",
		RequiredShipSubSystems =	"",
		DisplayPriority =		11,
		DisplayedName =			"$11002",
		Description =			"$11003",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_Defender",
		RequiredResearch =		"DefenderSubSystems",
		RequiredShipSubSystems =	"",
		DisplayPriority =		12,
		DisplayedName =			"$11006",
		Description =			"$11007",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_AttackBomber",
		RequiredResearch =		"PlasmaBombLauncher",
		RequiredShipSubSystems =	"",
		DisplayPriority =		13,
		DisplayedName =			"$11004",
		Description =			"$11005",
	},	
	{
		Type =					Ship,
		ThingToBuild =			"Tai_DefenseFighter",
		RequiredResearch =		"DefenseFighter",
		RequiredShipSubSystems =	"",
		DisplayPriority =		14,
		DisplayedName =			"$11010",
		Description =			"$11011",
	},
  {
    Type = Ship,
    ThingToBuild = "Tai_Scout5",
    RequiredResearch = "FighterDrive",
    RequiredShipSubSystems = "",
    DisplayPriority = 223,
    DisplayedName = "Scout Squadron",
		Description =			"$11001",
  },
    {
    Type = Ship,
    ThingToBuild = "Tai_interceptor5",
    RequiredResearch = "FighterChassis",
    RequiredShipSubSystems = "",
    DisplayPriority = 225,
    DisplayedName = "Interceptor Squadron",
		Description =			"$11003",
  },
    {
    Type = Ship,
    ThingToBuild = "Tai_attackbomber5",
    RequiredResearch = "PlasmaBombLauncher",
    RequiredShipSubSystems = "",
    DisplayPriority = 227,
    DisplayedName = "Attack Bomber Squadron",
		Description =			"$11005",
  },
--Corvettes--------------
	{
		Type =					Ship,
		ThingToBuild =			"Tai_RepairCorvette",
		RequiredResearch =		"CorvetteDrive",
		RequiredShipSubSystems =	"",
		DisplayPriority =		20,
		DisplayedName =			"$11022",
		Description =			"$11023",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_SalvageCorvette",
		RequiredResearch =		"CorvetteChassis",
		RequiredShipSubSystems =	"",
		DisplayPriority =		21,
		DisplayedName =			"$11020",
		Description =			"$11021",
	},	
	{
		Type =					Ship,
		ThingToBuild =			"Tai_LightCorvette",
		RequiredResearch =		"CorvetteChassis",
		RequiredShipSubSystems =	"",
		DisplayPriority =		22,
		DisplayedName =			"$11012",
		Description =			"$11013",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_HeavyCorvette",
		RequiredResearch =		"HeavyCorvetteUpgrade",
		RequiredShipSubSystems =	"",
		DisplayPriority =		23,
		DisplayedName =			"$11014",
		Description =			"$11015",
	},		
	{
		Type =					Ship,
		ThingToBuild =			"Tai_MultiGunCorvette",
		RequiredResearch =		"FastTrackingTurrets",
		RequiredShipSubSystems =	"",
		DisplayPriority =		24,
		DisplayedName =			"$11016",
		Description =			"$11017",
	},	
	{
		Type =					Ship,
		ThingToBuild =			"Tai_MinelayerCorvette",
		RequiredResearch =		"MinelayingTech",
		RequiredShipSubSystems =	"",
		DisplayPriority =		25,
		DisplayedName =			"$11018",
		Description =			"$11019",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_LightCorvette3",
		RequiredResearch =		"CorvetteChassis",
		RequiredShipSubSystems =	"",
		DisplayPriority =		222,
		DisplayedName =			"Light Corvette Squadron",
		Description =			"$11013",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_HeavyCorvette3",
		RequiredResearch =		"HeavyCorvetteUpgrade",
		RequiredShipSubSystems =	"",
		DisplayPriority =		223,
		DisplayedName =			"Heavy Corvette Squadron",
		Description =			"$11015",
	},	
	{
		Type =					Ship,
		ThingToBuild =			"Tai_MultiGunCorvette3",
		RequiredResearch =		"FastTrackingTurrets",
		RequiredShipSubSystems =	"",
		DisplayPriority =		224,
		DisplayedName =			"Multigun Corvette Squadron",
		Description =			"$11017",
	},
--Frigates---------------
	{
		Type =					Ship,
		ThingToBuild =			"Tai_AssaultFrigate",
		RequiredResearch =		"CapitalShipChassis",
		RequiredShipSubSystems =	"",
		DisplayPriority =		51,
		DisplayedName =			"$11024",
		Description =			"$11025",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_IonCannonFrigate",
		RequiredResearch =		"IonCannons",
		RequiredShipSubSystems =	"",
		DisplayPriority =		52,
		DisplayedName =			"$11026",
		Description =			"$11027",
	},	
	{
		Type =					Ship,
		ThingToBuild =			"Tai_SupportFrigate",
		RequiredResearch =		"CapitalShipDrive",
		RequiredShipSubSystems =	"",
		DisplayPriority =		50,
		DisplayedName =			"$11028",
		Description =			"$11029",
	},	
	{
		Type =					Ship,
		ThingToBuild =			"Tai_FieldFrigate",
		RequiredResearch =		"DefenseField",
		RequiredShipSubSystems =	"",
		DisplayPriority =		53,
		DisplayedName =			"$11032",
		Description =			"$11033",
	},
--Capital Ships----------
	{
		Type =					Ship,
		ThingToBuild =			"Tai_Destroyer",
		RequiredResearch =		"SuperCapitalShipDrive",
		RequiredShipSubSystems =	"",
		DisplayPriority =		70,
		DisplayedName =			"$11034",
		Description =			"$11035"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_MissileDestroyer",
		RequiredResearch =		"GuidedMissiles",
		RequiredShipSubSystems =	"",
		DisplayPriority =		71,
		DisplayedName =			"$11036",
		Description =			"$11037"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_Carrier",
		RequiredResearch =		"SuperHeavyChassis",
		RequiredShipSubSystems =	"",
		DisplayPriority =		72,
		DisplayedName =			"$11040",
		Description =			"$11041"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_HeavyCruiser",
		RequiredResearch =		"HeavyGuns",
		RequiredShipSubSystems =	"",
		DisplayPriority =		73,
		DisplayedName =			"$11038",
		Description =			"$11039"
	},
--Hw2 Frigates---------------	
	{
		Type =					Ship,
		ThingToBuild =			"tai_killer_asteroid4",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		144,
		DisplayedName =			"***HW2 Balance Ships***",
		Description =			"$11051"
	},	
	{
		Type =					Ship,
		ThingToBuild =			"Tai_Hw2AssaultFrigate",
		RequiredResearch =		"CapitalShipChassis",
		RequiredShipSubSystems =	"",
		DisplayPriority =		51,
		DisplayedName =			"$11024",
		Description =			"$11025",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_Hw2IonCannonFrigate",
		RequiredResearch =		"IonCannons",
		RequiredShipSubSystems =	"",
		DisplayPriority =		52,
		DisplayedName =			"$11026",
		Description =			"$11027",
	},	
	{
		Type =					Ship,
		ThingToBuild =			"Tai_Hw2SupportFrigate",
		RequiredResearch =		"CapitalShipDrive",
		RequiredShipSubSystems =	"",
		DisplayPriority =		50,
		DisplayedName =			"$11028",
		Description =			"$11029",
	},	
--HW2 Capital Ships----------
	{
		Type =					Ship,
		ThingToBuild =			"Tai_Hw2Destroyer",
		RequiredResearch =		"SuperCapitalShipDrive",
		RequiredShipSubSystems =	"",
		DisplayPriority =		70,
		DisplayedName =			"$11034",
		Description =			"$11035"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_Hw2MissileDestroyer",
		RequiredResearch =		"GuidedMissiles",
		RequiredShipSubSystems =	"",
		DisplayPriority =		71,
		DisplayedName =			"$11036",
		Description =			"$11037"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_Hw2HeavyCruiser",
		RequiredResearch =		"HeavyGuns",
		RequiredShipSubSystems =	"",
		DisplayPriority =		73,
		DisplayedName =			"$11038",
		Description =			"$11039"
	},	
	{
		Type =					Ship,
		ThingToBuild =			"tai_killer_asteroid3",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		144,
		DisplayedName =			"***HW2 Balance Ships***",
		Description =			"$11051"
	},	

--Utility----------------
	{
		Type =					Ship,
		ThingToBuild =			"Tai_ResourceCollector",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		100,
		DisplayedName =			"$11044",
		Description =			"$11045"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_ResourceController",
		RequiredResearch =		"CapitalShipDrive",
		RequiredShipSubSystems =	"",
		DisplayPriority =		101,
		DisplayedName =			"$11046",
		Description =			"$11047"
	},		
	{
		Type =					Ship,
		ThingToBuild =			"Tai_ResearchShip",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		110,
		DisplayedName =			"$11042",
		Description =			"$11043"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_ResearchShip_1",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		111,
		DisplayedName =			"$11058",
		Description =			"$11043"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_ResearchShip_2",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		112,
		DisplayedName =			"$11059",
		Description =			"$11043"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_ResearchShip_3",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		113,
		DisplayedName =			"$11060",
		Description =			"$11043"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_ResearchShip_4",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		114,
		DisplayedName =			"$11061",
		Description =			"$11043"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_ResearchShip_5",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		115,
		DisplayedName =			"$11062",
		Description =			"$11043"
	},	
	{
		Type =					Ship,
		ThingToBuild =			"Tai_Probe",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		140,
		DisplayedName =			"$7070",
		Description =			"$7071"
	},		
	{
		Type =					Ship,
		ThingToBuild =			"Tai_ProximitySensor",
		RequiredResearch =		"ProximitySensor",
		RequiredShipSubSystems =	"",
		DisplayPriority =		141,
		DisplayedName =			"$11054",
		Description =			"$11055"
	},	
	{
		Type =					Ship,
		ThingToBuild =			"Tai_SensorArray",
		RequiredResearch =		"SensorArray",
		RequiredShipSubSystems =	"",
		DisplayPriority =		142,
		DisplayedName =			"$11056",
		Description =			"$11057"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_GravWellGenerator",
		RequiredResearch =		"GravityGenerator",
		RequiredShipSubSystems =	"",
		DisplayPriority =		143,
		DisplayedName =			"$11048",
		Description =			"$11049"
	},	
	{
		Type =					Ship,
		ThingToBuild =			"Tai_CloakGenerator",
		RequiredResearch =		"CloakGenerator",
		RequiredShipSubSystems =	"",
		DisplayPriority =		144,
		DisplayedName =			"$11050",
		Description =			"$11051"
	},	
	{
		Type =					Ship,
		ThingToBuild =			"tai_killer_asteroid4",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		144,
		DisplayedName =			"Killer Asteroid big",
		Description =			"$11051"
	},	
	{
		Type =					Ship,
		ThingToBuild =			"tai_killer_asteroid3",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		144,
		DisplayedName =			"Killer Asteroid small",
		Description =			"$11051"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_FieldGeneratorDummy",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		100,	
		DisplayedName =			"Field Generator",
		Description =			""	
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_ResearchStation",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		100,	
		DisplayedName =			"Research Station",
		Description =			""	
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_Mothership",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		100,	
		DisplayedName =			"Mothership",
		Description =			""	
	},
}

tTURShips = 
{
	{
		Type = Ship,
		ThingToBuild = "tur_fighter",
		DisplayPriority = 2,
		DisplayedName = "$10066",
		Description = "$10067",
	},
	{
		Type = Ship,
		ThingToBuild = "tur_fighter5",
		DisplayPriority = 3,
		DisplayedName = "Fighter Squadron",
		Description = "$10067",
	},
	{
		Type = Ship,
		ThingToBuild = "tur_standardcorvette",
		DisplayPriority = 10,
		DisplayedName = "$10068",
		Description = "$10069",
	},
	{
		Type = Ship,
		ThingToBuild = "tur_missilecorvette",
		DisplayPriority = 11,
		DisplayedName = "$10070",
		Description = "$10071",
	},
	{
		Type = Ship,
		ThingToBuild = "tur_ionarrayfrigate",
		DisplayPriority = 23,
		DisplayedName = "$10072",
		Description = "$10073",
	},
	{
		Type = Ship,
		ThingToBuild = "tur_p1mothership",
		DisplayPriority = 32,
		DisplayedName = "$10040",
		Description = "$10075",
	},
	{
		Type = Ship,
		ThingToBuild = "tur_minercorvette",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority = 40,
		DisplayedName = "Miner Corvette",
		Description = "$10069",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tur_Autogunl",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		43,	
		DisplayedName =			"Small automatic defense turret",
		Description =			"Small automatic defense turret"	
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tur_Autoguns",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		41,	
		DisplayedName =			"Large automatic defense turret",
		Description =			"Large automatic defense turret"	
	},
	{
		Type =					Ship,
		ThingToBuild =			"junk_junkyarddog",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		144,
		DisplayedName =			"***HW2 Balance Ships***",
		Description =			"$11051"
	},	
	{
		Type = Ship,
		ThingToBuild = "tur_Hw2ionarrayfrigate",
		DisplayPriority = 23,
		DisplayedName = "$10072",
		Description = "$10073",
	},
	{
		Type = Ship,
		ThingToBuild = "tur_Hw2p1mothership",
		DisplayPriority = 32,
		DisplayedName = "$10040",
		Description = "$10075",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tur_Hw2Autogunl",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		43,	
		DisplayedName =			"Small Planetary Defense Turret",
		Description =			"Small Planetary Defense Turret"	
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tur_Hw2Autoguns",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		41,	
		DisplayedName =			"Large Planetary Defense Turret",
		Description =			"Large Planetary Defense Turret"	
	},
	{
		Type =					Ship,
		ThingToBuild =			"junk_junkyardoffice",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		144,
		DisplayedName =			"***HW2 Balance Ships***",
		Description =			"$11051"
	},	
}

tKADShips = 
{
    { 
        Type = Ship, 
        ThingToBuild = "kad_ambassador", 
        DisplayPriority = 2, 
        DisplayedName = "Ambassador", 
        Description = "$10077", 
    }, 
    { 
        Type = Ship, 
        ThingToBuild = "kad_swarmer", 
        DisplayPriority = 2, 
        DisplayedName = "$10076", 
        Description = "$10077", 
    }, 
    { 
        Type = Ship, 
        ThingToBuild = "kad_advancedswarmer",
        DisplayPriority = 10,
        DisplayedName = "$10078",
        Description = "$10079", 
    },
    { 
        Type = Ship, 
        ThingToBuild = "kad_fuelpod", 
        DisplayPriority = 20, 
        DisplayedName = "$10084", 
        Description = "$10085", 
    }, 
    { 
        Type = Ship, 
        ThingToBuild = "kad_multibeamfrigate", 
        DisplayPriority = 23, 
        DisplayedName = "$10080", 
        Description = "$10081", 
    }, 
     { 
        Type = Ship, 
        ThingToBuild = "kad_p2mothership", 
        DisplayPriority = 55, 
        DisplayedName = "$10042", 
        Description = "$10043", 
    },
    { 
        Type = Ship, 
        ThingToBuild = "kad_hw2multibeamfrigate", 
        DisplayPriority = 23, 
        DisplayedName = "$10080", 
        Description = "$10081", 
    }, 
     { 
        Type = Ship, 
        ThingToBuild = "kad_hw2p2mothership", 
        DisplayPriority = 55, 
        DisplayedName = "$10042", 
        Description = "$10043", 
    },
    { 
        Type = Ship, 
        ThingToBuild = "kad_utilityswarmer",
        DisplayPriority = 61,
        DisplayedName = "Utility Swarmer",
        Description = "$10079", 
    },
}

tEMPShips = 
{
	{
		Type =					Ship,
		ThingToBuild =			"Emp_LightCorvette",
		RequiredResearch =		"CorvetteChassis",
		RequiredShipSubSystems =	"",
		DisplayPriority =		22,
		DisplayedName =			"Light Corvette",
		Description =			"$11013",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Emp_MultigunCorvette",
		RequiredResearch =		"CorvetteChassis",
		RequiredShipSubSystems =	"",
		DisplayPriority =		23,
		DisplayedName =			"Multigun Corvette",
		Description =			"$11013",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Emp_Carrier",
		RequiredResearch =		"SuperHeavyChassis",
		RequiredShipSubSystems =	"",
		DisplayPriority =		72,
		DisplayedName =			"Carrier",
		Description =			"$11041"
	},
}
