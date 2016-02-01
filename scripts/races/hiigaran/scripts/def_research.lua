Icon_Speed = "data:ui/newui/research/icons/speed.mres"
Icon_Health = "data:ui/newui/research/icons/health.mres"
Icon_Tech = "data:ui/newui/research/icons/tech.mres"
Icon_Ability = "data:ui/newui/research/icons/ability.mres"
Icon_Build = "data:ui/newui/research/icons/build.mres"
Modifier = 0
Ability = 1
AllShips = 0
Family = 1
Ship = 2

research = 
{
	--======================================================================
	-- Tiers
	--======================================================================



	--======================================================================
	-- Tech
	--======================================================================

	-- ** IMPORTANT NOTE ABOUT TECHS
	-- Even though techs are global, and are applied to all ships we still need
	--  to specify a location to place them in the UI.  In the case of techs,
	--  targetName must be specified in order for your tech to show up in the UI.
	--  The tech will show up under the ship specified by targetName
	--
	
	
	
	
	--{
	--	Name =					"PlasmaBombs",
	--	RequiredResearch =		"",
	--	RequiredSubSystems =	"FighterProduction",
	--	Cost = 					30,
	--	Time = 					30,
	--	DisplayedName =			"Plasma Bombs",
	--	DisplayPriority =		21,
	--	Description =			"(30 RUs)",
	--},

	 
	--{
	--	Name =					"CorvettePulsarWeapons",
	--	RequiredResearch =		"",
	--	RequiredSubSystems =	"Research & CorvetteProduction",
	--	Cost = 					30,
	--	Time = 					60,
	--	DisplayedName =			"Pulsar Weapons",
	--	DisplayPriority =		22,
	--	Description =			" (30 RUs)",
	--},
	{ 
		Name =			"InstaAdvancedFrigateTech",
		RequiredResearch =	"",                                               -- <list of prerequisite research items>
		RequiredSubSystems =	"AdvancedResearch",                              -- <list of prerequisite sub systems>
		Cost = 			0,
		Time = 			0,
		DisplayedName =		"",
		DisplayPriority =	1,                                                    -- <display priority (used to sort on screen)>,
		Description =		"Instant Tech",			-- To Localize?
		TargetName = 		"Hgn_Mothership",
	},
	
	
		{
		Name =					"GraviticAttractionMines",
		RequiredResearch =		"",
		RequiredSubSystems =	"AdvancedResearch & CorvetteProduction",
		Cost = 					30,
		Time = 					40,
		DisplayedName =			"$730",
		DisplayPriority =		2,
		Description =			"$301",
		TargetName = 		"Hgn_MinelayerCorvette",
		Icon = Icon_Tech,
		ShortDisplayedName = "$7200",
	},

	{
		Name =					"PlatformIonWeapons",
		Required =		"",
		RequiredSubSystems =	"Research | AdvancedResearch & PlatformProduction",
		Cost = 					30,
		Time = 					30,
		DisplayedName =			"$302",
		DisplayPriority =		24,
		Description =			"$303",
		TargetName = 		"Hgn_IonTurret",
		Icon = Icon_Tech,
		ShortDisplayedName = "$7201",
	},
		
	{
		Name =					"DestroyerTech",
		RequiredResearch =		"",
		RequiredSubSystems =	"Research | AdvancedResearch & CapShipProduction",
		Cost = 					30,
		Time = 					90,
		DisplayedName =			"$307",
		DisplayPriority =		3,
		Description =			"$308",
		TargetName = 		"Hgn_Destroyer",
		Icon = Icon_Tech,
		ShortDisplayedName = "$7203",
	},
	{
		Name =					"BattlecruiserIonWeapons",
		RequiredResearch =		"",
		RequiredSubSystems =	"AdvancedResearch & CapShipProduction",
		Cost = 					30,
		Time = 					140,
		DisplayedName =			"$304",
		DisplayPriority =		1,
		Description =			"$305",
		TargetName = 		"Hgn_BattleCruiser",
		Icon = Icon_Tech,
		ShortDisplayedName = "$7202",
	},
	
	{
		Name =					"ECMProbe",
		RequiredResearch =		"",
		RequiredSubSystems =	"AdvancedResearch",
		Cost = 					30,
		Time = 					45,
		DisplayedName =			"$309",
		DisplayPriority =		4,
		Description =			"$7510",
		TargetName = 		"Hgn_ECMProbe",
		Icon = Icon_Tech,
		ShortDisplayedName = "$7204",
	},
	
	{
		Name =					"SensDisProbe",
		RequiredResearch =		"",
		RequiredSubSystems =	"Research",
		Cost = 					30,
		Time = 					35,
		DisplayedName =			"$7650",
		DisplayPriority =		5,
		Description =			"$7651",
		TargetName = 		"Hgn_ProximitySensor",
		Icon = Icon_Tech,
		ShortDisplayedName = "$7214",
	},
	
-- NOW BACK TO BEING A SUBSYSTEM - THEREFORE UNNEEDED
--	{
--		Name =					"MoverConstruction",
--		RequiredResearch =		"",
--		RequiredSubSystems =	"Research | AdvancedResearch",
--		Cost = 					30,
--		Time = 					60,
--		DisplayedName =			"$7910",
--		DisplayPriority =		29,
--		Description =			"$7911",
--		TargetName = 		"Kpr_Mover",
--		Icon = Icon_Tech,
--		ShortDisplayedName = 	"$7912",
--	},

	--======================================================================
	-- Ability Upgrades
	--======================================================================

	 
	{
		Name =					"RepairAbility",
		RequiredResearch =		"",
		RequiredSubSystems =	"Research | AdvancedResearch",
		Cost = 					30,
		Time = 					40,
		DisplayedName =			"$7511",
		DisplayPriority =		26,
		Description =			"$7512",
		UpgradeType =			Ability,
		TargetType =			Ship,
		TargetName =			"Hgn_ResourceCollector",
        	UpgradeName =			"Repair",
		Icon = Icon_Ability,
		ShortDisplayedName = "$7205",
	},

	 
	{
		Name =					"ScoutPingAbility",
		RequiredResearch =		"",
		RequiredSubSystems =	"Research | AdvancedResearch",
		Cost = 					30,
		Time = 					40,
		DisplayedName =			"$7513",
		DisplayPriority =		27,
		Description =			"$7514",
		UpgradeType =			Ability,
		TargetType =			Ship,
		TargetName =			"Hgn_Scout",
        	UpgradeName =			"SensorPing",
		Icon = Icon_Ability,
		ShortDisplayedName = "$7206",
        },

	
	{
		Name =					"ImprovedTorpedo",
		RequiredResearch =		"",
		RequiredSubSystems =		"Research | AdvancedResearch & FrigateProduction",
		Cost = 					30,
		Time = 					60,
		DisplayedName =			"$7515",
		DisplayPriority =		29,
		Description =			"$7516",
		UpgradeType =			Ability,
		TargetType =			Ship,
		TargetName =			"Hgn_TorpedoFrigate",
		UpgradeName =			"UseSpecialWeaponsInNormalAttack",
		Icon = Icon_Ability,
		ShortDisplayedName = "$7207",
	},

	 
	{
		Name =					"AttackBomberImprovedBombs",
		RequiredResearch =		"",
		RequiredSubSystems =		"Research | AdvancedResearch & FighterProduction",
		Cost = 					30,
		Time = 					45,
		DisplayedName =			"$7517",
		DisplayPriority =		30,
		Description =			"$7518",
		UpgradeType =			Ability,
		TargetType =			Ship,
		TargetName =			"Hgn_AttackBomber",
        UpgradeName =				"UseSpecialWeaponsInNormalAttack",
		Icon = Icon_Ability,
		ShortDisplayedName = "$7208",
	},

	 
	{
		Name =					"ScoutEMPAbility",
		RequiredResearch =		"",
		RequiredSubSystems =		"Research | AdvancedResearch",
		Cost = 					30,
		Time = 					70,
		DisplayedName =			"$7519",
		DisplayPriority =		31,
		Description =			"$7520",
		UpgradeType =			Ability,
		TargetType =			Ship,
		TargetName =			"Hgn_Scout",
		UpgradeName =			"SpecialAttack",
		Icon = Icon_Ability,
		ShortDisplayedName = "$7209",
	},

	{
		Name =					"DefenseFieldFrigateShield",
		RequiredResearch =		"",
		RequiredSubSystems =	"AdvancedResearch & FrigateProduction",
		Cost = 					30,
		Time = 					60,
		DisplayedName =			"$7521",
		DisplayPriority =		32,
		Description =			"$7522",
		TargetName =			"Hgn_DefenseFieldFrigate",   	
		Icon = Icon_Ability,
		ShortDisplayedName = "$7210",
	},


	--======================================================================
	-- Mothership Upgrades
	--======================================================================

	 
	{
		Name =					"MothershipHealthUpgrade1",
		RequiredResearch =		"",
		RequiredSubSystems =	"Research | AdvancedResearch",
		Cost = 					30,
		Time = 					30,
		DisplayedName =			"$7523",
		DisplayPriority =		41,
		Description =			"$7524",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_MotherShip",
        UpgradeName =			"MAXHEALTH",
        UpgradeValue =			1.5,
	Icon = Icon_Health,
	ShortDisplayedName = "$7211",
	},

	 
	{
		Name =					"MothershipHealthUpgrade2",
		RequiredResearch =		"MothershipHealthUpgrade1",
		RequiredSubSystems =	"AdvancedResearch",
		Cost = 					30,
		Time = 					40,
		DisplayedName =			"$7525",
		DisplayPriority =		41,
		Description =			"$7526",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_MotherShip",
        UpgradeName =			"MAXHEALTH",
        UpgradeValue =			2,
	Icon = Icon_Health,
	ShortDisplayedName = "$7212",
	},

	{
		Name =					"MothershipMAXSPEEDUpgrade1",
		RequiredResearch =		"",
		RequiredSubSystems =	"Research | AdvancedResearch",
		Cost = 					30,
		Time = 					30,
		DisplayedName =			"$7527",
		DisplayPriority =		44,
		Description =			"$7528",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_MotherShip",
        UpgradeName =			"MAXSPEED",
        UpgradeValue =			1.2,
	Icon = Icon_Speed,
	ShortDisplayedName = "$7211",
	},

	 
	{
		Name =					"MothershipMAXSPEEDUpgrade2",
		RequiredResearch =		"MothershipMAXSPEEDUpgrade1",
		RequiredSubSystems =	"AdvancedResearch",
		Cost = 					30,
		Time = 					40,
		DisplayedName =			"$7529",
		DisplayPriority =		44,
		Description =			"$7530",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_MotherShip",
        UpgradeName =			"MAXSPEED",
        UpgradeValue =			1.35,
	Icon = Icon_Speed,
	ShortDisplayedName = "$7212",
	},

	{
		Name =				"MothershipBUILDSPEEDUpgrade1",
		RequiredResearch =		"",
		RequiredSubSystems =		"AdvancedResearch",
		Cost = 				30,
		Time = 				60,
		DisplayedName =			"$730",
		DisplayPriority =		45,
		Description =			"$7801",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_MotherShip",
	        UpgradeName =			"BUILDSPEED",
        	UpgradeValue =			1.3,
		Icon = Icon_Build,
		ShortDisplayedName = "$7240",
	},

	--======================================================================
	-- Carrier Upgrades
	--======================================================================

	
	{
		Name =					"CarrierHealthUpgrade1",
		RequiredResearch =		"",
		RequiredSubSystems =	"Research | AdvancedResearch & CapShipProduction",
		Cost = 					30,
		Time = 					40,
		DisplayedName =			"$7531",
		DisplayPriority =		61,
		Description =			"$7532",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_Carrier",
        UpgradeName =			"MAXHEALTH",
        UpgradeValue =			1.3,
		Icon = Icon_Health,
	ShortDisplayedName = "$7221",
	},

	 
	{
		Name =					"CarrierHealthUpgrade2",
		RequiredResearch =		"CarrierHealthUpgrade1",
		RequiredSubSystems =	"AdvancedResearch & CapShipProduction",
		Cost = 					30,
		Time = 					60,
		DisplayedName =			"$7533",
		DisplayPriority =		61,
		Description =			"$7534",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_Carrier",
        UpgradeName =			"MAXHEALTH",
        UpgradeValue =			1.6,
		Icon = Icon_Health,
	ShortDisplayedName = "$7222",
	},

	 
	{
		Name =					"CarrierMAXSPEEDUpgrade1",
		RequiredResearch =		"",
		RequiredSubSystems =	"Research | AdvancedResearch & CapShipProduction",
		Cost = 					30,
		Time = 					30,
		DisplayedName =			"$7535",
		DisplayPriority =		64,
		Description =			"$7536",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_Carrier",
        UpgradeName =			"MAXSPEED",
        UpgradeValue =			1.2,
		Icon = Icon_Speed,
	ShortDisplayedName = "$7221",
	},

	 
	{
		Name =					"CarrierMAXSPEEDUpgrade2",
		RequiredResearch =		"CarrierMAXSPEEDUpgrade1",
		RequiredSubSystems =	"AdvancedResearch & CapShipProduction",
		Cost = 					30,
		Time = 					40,
		DisplayedName =			"$7537",
		DisplayPriority =		64,
		Description =			"$7538",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_Carrier",
        UpgradeName =			"MAXSPEED",
        UpgradeValue =			1.35,
	Icon = Icon_Speed,
	ShortDisplayedName = "$7222",
	},


	{
		Name =				"CarrierBUILDSPEEDUpgrade1",
		RequiredResearch =		"",
		RequiredSubSystems =		"AdvancedResearch & CapShipProduction",
		Cost = 				30,
		Time = 				60,
		DisplayedName =			"$7805",
		DisplayPriority =		65,
		Description =			"$7806",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_Carrier",
	        UpgradeName =			"BUILDSPEED",
        	UpgradeValue =			1.3,
		Icon = Icon_Build,
		ShortDisplayedName = "$7240",
	},
	 
	
	--======================================================================
	-- Fighter Upgrades
	--======================================================================
{Name="FighterHealthUpgrade1",
RequiredResearch = "", 
RequiredSubSystems="Research",
Cost=30,
Time=60,
DisplayedName="Fighter Armor Level 1",
DisplayPriority=80,
Description="Improved fighter armor to Level 1 allowing them to withstand more hits",
UpgradeType=Modifier,
TargetType=Family,
TargetName="Fighter",
UpgradeName="MAXHEALTH",
UpgradeValue=2,
Icon=Icon_Health,
ShortDisplayedName="Fighter Armor Level 1"},

{Name="FighterHealthUpgrade2",
RequiredResearch="FighterHealthUpgrade1",
RequiredSubSystems="Research",
Cost=30,
Time=80,
DisplayedName="Fighter Armor Level 2",
DisplayPriority=80,
Description="Improves Fighter Armor to Level 2",
UpgradeType=Modifier,
TargetType=Family,
TargetName="Fighter",
	UpgradeName="MAXHEALTH",
	UpgradeValue=4,
	Icon=Icon_Health,
	ShortDisplayedName="Fighter Armor Level 2"},

	 
	{
		Name =					"InterceptorMAXSPEEDUpgrade1",
		RequiredResearch =		"",
		RequiredSubSystems =	"Research | AdvancedResearch & FighterProduction",
		Cost = 					30,
		Time = 					30,
		DisplayedName =			"$7543",
		DisplayPriority =		81,
		Description =			"$7544",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_Interceptor",
        UpgradeName =			"MAXSPEED",
        UpgradeValue =			1.25,
	
	Icon = Icon_Speed,
	ShortDisplayedName = "$7231"
	},

	{
		Name =					"InterceptorMAXSPEEDUpgrade2",
		RequiredResearch =		"InterceptorMAXSPEEDUpgrade1",
		RequiredSubSystems =	"AdvancedResearch & FighterProduction",
		Cost = 					30,
		Time = 					40,
		DisplayedName =			"$7545",
		DisplayPriority =		81,
		Description =			"$7546",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_Interceptor",
        UpgradeName =			"MAXSPEED",
        UpgradeValue =			1.5,
	
	Icon = Icon_Speed,
	ShortDisplayedName = "$7232",
	},
	
	{
		Name =					"PulsarFighterMAXSPEEDUpgrade1",
		RequiredResearch =		"",
		RequiredSubSystems =	"Research | AdvancedResearch & FighterProduction",
		Cost = 					30,
		Time = 					30,
		DisplayedName =			"$7551",
		DisplayPriority =		85,
		Description =			"$7552",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_PulsarFighter",
        UpgradeName =			"MAXSPEED",
        UpgradeValue =			1.25,
	
	Icon = Icon_Speed,
	ShortDisplayedName = "$7234",
	},

	{
		Name =					"PulsarFighterMAXSPEEDUpgrade2",
		RequiredResearch =		"PulsarFighterMAXSPEEDUpgrade1",
		RequiredSubSystems =	"AdvancedResearch & FighterProduction",
		Cost = 					30,
		Time = 					40,
		DisplayedName =			"$7553",
		DisplayPriority =		85,
		Description =			"$7554",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_PulsarFighter",
        UpgradeName =			"MAXSPEED",
        UpgradeValue =			1.5,
	
	Icon = Icon_Speed,
	ShortDisplayedName = "$7235",
	},

	{
		Name =					"AttackBomberMAXSPEEDUpgrade1",
		RequiredResearch =		"",
		RequiredSubSystems =	"Research | AdvancedResearch & FighterProduction",
		Cost = 					30,
		Time = 					30,
		DisplayedName =			"$7551",
		DisplayPriority =		87,
		Description =			"$7552",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_AttackBomber",
        UpgradeName =			"MAXSPEED",
        UpgradeValue =			1.25,
	
	Icon = Icon_Speed,
	ShortDisplayedName = "$7234",
	},

	{
		Name =					"AttackBomberMAXSPEEDUpgrade2",
		RequiredResearch =		"AttackBomberMAXSPEEDUpgrade1",
		RequiredSubSystems =	"AdvancedResearch & FighterProduction",
		Cost = 					30,
		Time = 					40,
		DisplayedName =			"$7553",
		DisplayPriority =		87,
		Description =			"$7554",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_AttackBomber",
        UpgradeName =			"MAXSPEED",
        UpgradeValue =			1.5,
	
	Icon = Icon_Speed,
	ShortDisplayedName = "$7235",
	},

	--======================================================================
	-- Corvette Upgrades
	--======================================================================

	{
		Name =					"AssaultCorvetteHealthUpgrade1",
		RequiredResearch =		"",
		RequiredSubSystems =	"Research | AdvancedResearch & CorvetteProduction",
		Cost = 					30,
		Time = 					40,
		DisplayedName =			"$7555",
		DisplayPriority =		200,
		Description =			"$7556",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_AssaultCorvette",
        UpgradeName =			"MAXHEALTH",
        UpgradeValue =			1.3,
		Icon = Icon_Health,
	ShortDisplayedName = "$7237",
	},

	{
		Name =					"AssaultCorvetteHealthUpgrade2",
		RequiredResearch =		"AssaultCorvetteHealthUpgrade1",
		RequiredSubSystems =	"AdvancedResearch & CorvetteProduction",
		Cost = 					30,
		Time = 					50,
		DisplayedName =			"$7557",
		DisplayPriority =		200,
		Description =			"$7558",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_AssaultCorvette",
        UpgradeName =			"MAXHEALTH",
        UpgradeValue =			1.6,
		Icon = Icon_Health,
	ShortDisplayedName = "$7238",
	},

	{
		Name =					"AssaultCorvetteMAXSPEEDUpgrade1",
		RequiredResearch =		"",
		RequiredSubSystems =	"Research | AdvancedResearch & CorvetteProduction",
		Cost = 					30,
		Time = 					40,
		DisplayedName =			"$7559",
		DisplayPriority =		203,
		Description =			"$7560",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_AssaultCorvette",
        UpgradeName =			"MAXSPEED",
        UpgradeValue =			1.2,
	Icon = Icon_Speed,
	ShortDisplayedName = "$7237",
	},

	{
		Name =					"AssaultCorvetteMAXSPEEDUpgrade2",
		RequiredResearch =		"AssaultCorvetteMAXSPEEDUpgrade1",     -- <list of prerequisite research items>
		RequiredSubSystems =	"AdvancedResearch & CorvetteProduction",                        -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					50,
		DisplayedName =			"$7561",
		DisplayPriority =		203,                                                   -- <display priority (used to sort on screen)>,
		Description =			"$7562",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_AssaultCorvette",
        UpgradeName =			"MAXSPEED",
        UpgradeValue =			1.35,
	Icon = Icon_Speed,
	ShortDisplayedName = "$7238",
	},

	{
		Name =					"PulsarCorvetteHealthUpgrade1",
		RequiredResearch =		"",                                         -- <list of prerequisite research items>
		RequiredSubSystems =	"Research | AdvancedResearch & CorvetteProduction",                       -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					40,
		DisplayedName =			"$7563",
		DisplayPriority =		206,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7564",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_PulsarCorvette",
        	UpgradeName =			"MAXHEALTH",
        	UpgradeValue =			1.3,
		Icon = Icon_Health,
		ShortDisplayedName = "$7241",
	},

	{
		Name =					"PulsarCorvetteHealthUpgrade2",
		RequiredResearch =		"PulsarCorvetteHealthUpgrade1",     -- <list of prerequisite research items>
		RequiredSubSystems =	"AdvancedResearch & CorvetteProduction",                        -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					50,
		DisplayedName =			"$7565",
		DisplayPriority =		206,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7566",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_PulsarCorvette",
        UpgradeName =			"MAXHEALTH",
        UpgradeValue =			1.6,
		Icon = Icon_Health,
	ShortDisplayedName = "$7242",
	},

	{
		Name =					"PulsarCorvetteMAXSPEEDUpgrade1",
		RequiredResearch =		"",                                         -- <list of prerequisite research items>
		RequiredSubSystems =	"Research | AdvancedResearch & CorvetteProduction",                       -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					40,
		DisplayedName =			"$7567",
		DisplayPriority =		209,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7568",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_PulsarCorvette",
        UpgradeName =			"MAXSPEED",
        UpgradeValue =			1.2,
	
	Icon = Icon_Speed,
	ShortDisplayedName = "$7241",
	},

	{
		Name =					"PulsarCorvetteMAXSPEEDUpgrade2",
		RequiredResearch =		"PulsarCorvetteMAXSPEEDUpgrade1",     -- <list of prerequisite research items>
		RequiredSubSystems =	"AdvancedResearch & CorvetteProduction",                        -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					50,
		DisplayedName =			"$7569",
		DisplayPriority =		209,                                                   -- <display priority (used to sort on screen)>,
		Description =			"$7570",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_PulsarCorvette",
        UpgradeName =			"MAXSPEED",
        UpgradeValue =			1.35,
	
	Icon = Icon_Speed,
	ShortDisplayedName = "$7242",
	},
	
	{
		Name =					"HeavyAssaultCorvetteHealthUpgrade1",
		RequiredResearch =		"",                                         -- <list of prerequisite research items>
		RequiredSubSystems =	"Research | AdvancedResearch & CorvetteProduction",                       -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					40,
		DisplayedName =			"$7563",
		DisplayPriority =		207,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7564",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_HeavyAssaultCorvette",
        	UpgradeName =			"MAXHEALTH",
        	UpgradeValue =			1.3,
		Icon = Icon_Health,
		ShortDisplayedName = "$7241",
	},

	{
		Name =					"HeavyAssaultCorvetteHealthUpgrade2",
		RequiredResearch =		"HeavyAssaultCorvetteHealthUpgrade1",     -- <list of prerequisite research items>
		RequiredSubSystems =	"AdvancedResearch & CorvetteProduction",                        -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					50,
		DisplayedName =			"$7565",
		DisplayPriority =		207,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7566",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_HeavyAssaultCorvette",
        UpgradeName =			"MAXHEALTH",
        UpgradeValue =			1.6,
		Icon = Icon_Health,
	ShortDisplayedName = "$7242",
	},

	{
		Name =					"HeavyAssaultCorvetteMAXSPEEDUpgrade1",
		RequiredResearch =		"",                                         -- <list of prerequisite research items>
		RequiredSubSystems =	"Research | AdvancedResearch & CorvetteProduction",                       -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					40,
		DisplayedName =			"$7567",
		DisplayPriority =		210,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7568",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_HeavyAssaultCorvette",
        UpgradeName =			"MAXSPEED",
        UpgradeValue =			1.2,
	
	Icon = Icon_Speed,
	ShortDisplayedName = "$7241",
	},

	{
		Name =					"HeavyAssaultCorvetteMAXSPEEDUpgrade2",
		RequiredResearch =		"HeavyAssaultCorvetteMAXSPEEDUpgrade1",     -- <list of prerequisite research items>
		RequiredSubSystems =	"AdvancedResearch & CorvetteProduction",                        -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					50,
		DisplayedName =			"$7569",
		DisplayPriority =		210,                                                   -- <display priority (used to sort on screen)>,
		Description =			"$7570",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_HeavyAssaultCorvette",
        UpgradeName =			"MAXSPEED",
        UpgradeValue =			1.35,
	
	Icon = Icon_Speed,
	ShortDisplayedName = "$7242",
	},

	--======================================================================
	-- Frigate Upgrades
	--======================================================================

	{
		Name =					"TorpedoFrigateHealthUpgrade1",
		RequiredResearch =		"",                                          -- <list of prerequisite research items>
		RequiredSubSystems =	"Research | AdvancedResearch & FrigateProduction",     -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					60,
		DisplayedName =			"$7571",
		DisplayPriority =		30,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7572",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_TorpedoFrigate",
        UpgradeName =			"MAXHEALTH",
        UpgradeValue =			1.3,
		Icon = Icon_Health,
	ShortDisplayedName = "$7244",
	},

	{
		Name =					"TorpedoFrigateHealthUpgrade2",
		RequiredResearch =		"TorpedoFrigateHealthUpgrade1",     -- <list of prerequisite research items>
		RequiredSubSystems =	"AdvancedResearch & FrigateProduction",                        -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					75,
		DisplayedName =			"$7573",
		DisplayPriority =		30,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7574",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_TorpedoFrigate",
        UpgradeName =			"MAXHEALTH",
        UpgradeValue =			1.6,
		Icon = Icon_Health,
	ShortDisplayedName = "$7245",
	},

	{
		Name =					"TorpedoFrigateMAXSPEEDUpgrade1",
		RequiredResearch =		"",                                         -- <list of prerequisite research items>
		RequiredSubSystems =	"Research | AdvancedResearch & FrigateProduction",                       -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					50,
		DisplayedName =			"$7575",
		DisplayPriority =		303,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7576",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_TorpedoFrigate",
        UpgradeName =			"MAXSPEED",
        UpgradeValue =			1.2,
		Icon = Icon_Speed,
	ShortDisplayedName = "$7244",
	},

	{
		Name =					"TorpedoFrigateMAXSPEEDUpgrade2",
		RequiredResearch =		"TorpedoFrigateMAXSPEEDUpgrade1",     -- <list of prerequisite research items>
		RequiredSubSystems =	"AdvancedResearch & FrigateProduction",                        -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					70,
		DisplayedName =			"$7577",
		DisplayPriority =		303,                                                   -- <display priority (used to sort on screen)>,
		Description =			"$7578",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_TorpedoFrigate",
        UpgradeName =			"MAXSPEED",
        UpgradeValue =			1.35,
		Icon = Icon_Speed,
	ShortDisplayedName = "$7245",
	},

	{
		Name =					"IonCannonFrigateHealthUpgrade1",
		RequiredResearch =		"InstaAdvancedFrigateTech",                                         -- <list of prerequisite research items>
		RequiredSubSystems =	"Research | AdvancedResearch & FrigateProduction",                       -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					60,
		DisplayedName =			"$7579",
		DisplayPriority =		306,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7580",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_IonCannonFrigate",
        UpgradeName =			"MAXHEALTH",
        UpgradeValue =			1.3,
		Icon = Icon_Health,
	ShortDisplayedName = "$7247",
	},

	{
		Name =					"IonCannonFrigateHealthUpgrade2",
		RequiredResearch =		"IonCannonFrigateHealthUpgrade1 & InstaAdvancedFrigateTech",     -- <list of prerequisite research items>
		RequiredSubSystems =	"AdvancedResearch & FrigateProduction",                        -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					75,
		DisplayedName =			"$7581",
		DisplayPriority =		306,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7582",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_IonCannonFrigate",
        UpgradeName =			"MAXHEALTH",
        UpgradeValue =			1.6,
		Icon = Icon_Health,
	ShortDisplayedName = "$7248",
	},

	{
		Name =					"IonCannonFrigateMAXSPEEDUpgrade1",
		RequiredResearch =		"InstaAdvancedFrigateTech",                                         -- <list of prerequisite research items>
		RequiredSubSystems =	"Research | AdvancedResearch & FrigateProduction",                       -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					50,
		DisplayedName =			"$7583",
		DisplayPriority =		309,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7584",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_IonCannonFrigate",
        UpgradeName =			"MAXSPEED",
        UpgradeValue =			1.2,
		Icon = Icon_Speed,
	ShortDisplayedName = "$7247",

	},

	{
		Name =					"IonCannonFrigateMAXSPEEDUpgrade2",
		RequiredResearch =		"IonCannonFrigateMAXSPEEDUpgrade1 & InstaAdvancedFrigateTech",     -- <list of prerequisite research items>
		RequiredSubSystems =	"AdvancedResearch & FrigateProduction",                        -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					70,
		DisplayedName =			"$7585",
		DisplayPriority =		309,                                                   -- <display priority (used to sort on screen)>,
		Description =			"$7586",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_IonCannonFrigate",
        UpgradeName =			"MAXSPEED",
        UpgradeValue =			1.35,
		Icon = Icon_Speed,
	ShortDisplayedName = "$7248",

	},

	{
		Name =					"AssaultFrigateHealthUpgrade1",
		RequiredResearch =		"InstaAdvancedFrigateTech",                                         -- <list of prerequisite research items>
		RequiredSubSystems =	"Research | AdvancedResearch & FrigateProduction",                       -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					60,
		DisplayedName =			"$7587",
		DisplayPriority =		312,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7588",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_AssaultFrigate",
        	UpgradeName =			"MAXHEALTH",
       		UpgradeValue =			1.3,
		Icon = Icon_Health,
		ShortDisplayedName = "$7251",
	},

	{
		Name =					"AssaultFrigateHealthUpgrade2",
		RequiredResearch =		"AssaultFrigateHealthUpgrade1 & InstaAdvancedFrigateTech",     -- <list of prerequisite research items>
		RequiredSubSystems =	"AdvancedResearch & FrigateProduction",                        -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					75,
		DisplayedName =			"$7589",
		DisplayPriority =		312,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7590",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_AssaultFrigate",
        	UpgradeName =			"MAXHEALTH",
        	UpgradeValue =			1.6,
		Icon = Icon_Health,
		ShortDisplayedName = "$7252",
	},

	{
		Name =					"AssaultFrigateMAXSPEEDUpgrade1",
		RequiredResearch =		"InstaAdvancedFrigateTech",                                         -- <list of prerequisite research items>
		RequiredSubSystems =	"Research | AdvancedResearch & FrigateProduction",                       -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					50,
		DisplayedName =			"$7591",
		DisplayPriority =		315,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7592",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_AssaultFrigate",
      		UpgradeName =			"MAXSPEED",
        	UpgradeValue =			1.2,
		Icon = Icon_Speed,
		ShortDisplayedName = "$7251",

	},

	{
		Name =					"AssaultFrigateMAXSPEEDUpgrade2",
		RequiredResearch =		"AssaultFrigateMAXSPEEDUpgrade1 & InstaAdvancedFrigateTech",     -- <list of prerequisite research items>
		RequiredSubSystems =	"AdvancedResearch & FrigateProduction",                        -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					70,
		DisplayedName =			"$7593",
		DisplayPriority =		315,                                                   -- <display priority (used to sort on screen)>,
		Description =			"$7594",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_AssaultFrigate",
        UpgradeName =			"MAXSPEED",
        UpgradeValue =			1.35,
		Icon = Icon_Speed,
	ShortDisplayedName = "$7252",
	},

	--======================================================================
	-- HW1Frigate Upgrades
	--======================================================================

	{
		Name =				"Hw1TorpedoFrigateHealthUpgrade1",
		RequiredResearch =		"TorpedoFrigateHealthUpgrade1",                                          -- <list of prerequisite research items>
		RequiredSubSystems =		"",                        -- <list of prerequisite sub systems>
		Cost = 					0,
		Time = 					0,
		DisplayedName =			"$7571",
		DisplayPriority =		30,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7572",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_HW1TorpedoFrigate",
        UpgradeName =			"MAXHEALTH",
        UpgradeValue =			1.3,
		Icon = Icon_Health,
	ShortDisplayedName = "$7244",
	},

	{
		Name =				"Hw1TorpedoFrigateHealthUpgrade2",
		RequiredResearch =		"TorpedoFrigateHealthUpgrade2",     -- <list of prerequisite research items>
		RequiredSubSystems =		"",                        -- <list of prerequisite sub systems>
		Cost = 					0,
		Time = 					0,
		DisplayedName =			"$7573",
		DisplayPriority =		30,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7574",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_HW1TorpedoFrigate",
        UpgradeName =			"MAXHEALTH",
        UpgradeValue =			1.6,
		Icon = Icon_Health,
	ShortDisplayedName = "$7245",
	},

	{
		Name =				"Hw1TorpedoFrigateMAXSPEEDUpgrade1",
		RequiredResearch =		"TorpedoFrigateMAXSPEEDUpgrade1",                                         -- <list of prerequisite research items>
		RequiredSubSystems =		"",                        -- <list of prerequisite sub systems>
		Cost = 					0,
		Time = 					0,
		DisplayedName =			"$7575",
		DisplayPriority =		303,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7576",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_HW1TorpedoFrigate",
        UpgradeName =			"MAXSPEED",
        UpgradeValue =			1.2,
		Icon = Icon_Speed,
	ShortDisplayedName = "$7244",
	},

	{
		Name =				"Hw1TorpedoFrigateMAXSPEEDUpgrade2",
		RequiredResearch =		"TorpedoFrigateMAXSPEEDUpgrade2",     -- <list of prerequisite research items>
		RequiredSubSystems =		"",                        -- <list of prerequisite sub systems>
		Cost = 					0,
		Time = 					0,
		DisplayedName =			"$7577",
		DisplayPriority =		303,                                                   -- <display priority (used to sort on screen)>,
		Description =			"$7578",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_HW1TorpedoFrigate",
        UpgradeName =			"MAXSPEED",
        UpgradeValue =			1.35,
		Icon = Icon_Speed,
	ShortDisplayedName = "$7245",
	},

	{
		Name =				"Hw1IonCannonFrigateHealthUpgrade1",
		RequiredResearch =		"IonCannonFrigateHealthUpgrade1",                                         -- <list of prerequisite research items>
		RequiredSubSystems =		"",                        -- <list of prerequisite sub systems>
		Cost = 					0,
		Time = 					0,
		DisplayedName =			"$7579",
		DisplayPriority =		306,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7580",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_HW1IonCannonFrigate",
        UpgradeName =			"MAXHEALTH",
        UpgradeValue =			1.3,
		Icon = Icon_Health,
	ShortDisplayedName = "$7247",
	},

	{
		Name =				"Hw1IonCannonFrigateHealthUpgrade2",
		RequiredResearch =		"IonCannonFrigateHealthUpgrade2",     -- <list of prerequisite research items>
		RequiredSubSystems =	"AdvancedResearch & FrigateProduction",                        -- <list of prerequisite sub systems>
		Cost = 					0,
		Time = 					0,
		DisplayedName =			"$7581",
		DisplayPriority =		306,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7582",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_HW1IonCannonFrigate",
        UpgradeName =			"MAXHEALTH",
        UpgradeValue =			1.6,
		Icon = Icon_Health,
	ShortDisplayedName = "$7248",
	},

	{
		Name =				"Hw1IonCannonFrigateMAXSPEEDUpgrade1",
		RequiredResearch =		"IonCannonFrigateMAXSPEEDUpgrade1",                                         -- <list of prerequisite research items>
		RequiredSubSystems =	"Research | AdvancedResearch & FrigateProduction",                       -- <list of prerequisite sub systems>
		Cost = 					0,
		Time = 					0,
		DisplayedName =			"$7583",
		DisplayPriority =		309,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7584",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_HW1IonCannonFrigate",
        UpgradeName =			"MAXSPEED",
        UpgradeValue =			1.2,
		Icon = Icon_Speed,
	ShortDisplayedName = "$7247",

	},

	{
		Name =				"Hw1IonCannonFrigateMAXSPEEDUpgrade2",
		RequiredResearch =		"IonCannonFrigateMAXSPEEDUpgrade2",     -- <list of prerequisite research items>
		RequiredSubSystems =		"",                        -- <list of prerequisite sub systems>
		Cost = 					0,
		Time = 					0,
		DisplayedName =			"$7585",
		DisplayPriority =		309,                                                   -- <display priority (used to sort on screen)>,
		Description =			"$7586",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_HW1IonCannonFrigate",
        UpgradeName =			"MAXSPEED",
        UpgradeValue =			1.35,
		Icon = Icon_Speed,
	ShortDisplayedName = "$7248",

	},

	{
		Name =				"Hw1AssaultFrigateHealthUpgrade1",
		RequiredResearch =		"AssaultFrigateHealthUpgrade1",                                         -- <list of prerequisite research items>
		RequiredSubSystems =		"",                        -- <list of prerequisite sub systems>
		Cost = 					0,
		Time = 					0,
		DisplayedName =			"$7587",
		DisplayPriority =		312,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7588",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_HW1AssaultFrigate",
        	UpgradeName =			"MAXHEALTH",
       		UpgradeValue =			1.3,
		Icon = Icon_Health,
		ShortDisplayedName = "$7251",
	},

	{
		Name =				"Hw1AssaultFrigateHealthUpgrade2",
		RequiredResearch =		"AssaultFrigateHealthUpgrade2",     -- <list of prerequisite research items>
		RequiredSubSystems =		"",                        -- <list of prerequisite sub systems>
		Cost = 					0,
		Time = 					0,
		DisplayedName =			"$7589",
		DisplayPriority =		312,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7590",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_HW1AssaultFrigate",
        	UpgradeName =			"MAXHEALTH",
        	UpgradeValue =			1.6,
		Icon = Icon_Health,
		ShortDisplayedName = "$7252",
	},

	{
		Name =				"Hw1AssaultFrigateMAXSPEEDUpgrade1",
		RequiredResearch =		"AssaultFrigateMAXSPEEDUpgrade1",                                         -- <list of prerequisite research items>
		RequiredSubSystems =		"",                        -- <list of prerequisite sub systems>
		Cost = 					0,
		Time = 					0,
		DisplayedName =			"$7591",
		DisplayPriority =		315,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7592",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_HW1AssaultFrigate",
      		UpgradeName =			"MAXSPEED",
        	UpgradeValue =			1.2,
		Icon = Icon_Speed,
		ShortDisplayedName = "$7251",

	},

	{
		Name =				"Hw1AssaultFrigateMAXSPEEDUpgrade2",
		RequiredResearch =		"AssaultFrigateMAXSPEEDUpgrade2",     -- <list of prerequisite research items>
		RequiredSubSystems =		"",                        -- <list of prerequisite sub systems>
		Cost = 					0,
		Time = 					0,
		DisplayedName =			"$7593",
		DisplayPriority =		315,                                                   -- <display priority (used to sort on screen)>,
		Description =			"$7594",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_HW1AssaultFrigate",
        UpgradeName =			"MAXSPEED",
        UpgradeValue =			1.35,
		Icon = Icon_Speed,
	ShortDisplayedName = "$7252",
	},
	
	--======================================================================
	-- Capital Ship Upgrades
	--======================================================================

	{
		Name =					"BattlecruiserHealthUpgrade1",
		RequiredResearch =		"BattlecruiserIonWeapons",                             -- <list of prerequisite research items>
		RequiredSubSystems =	"Research | AdvancedResearch & CapShipProduction",                         -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					60,
		DisplayedName =			"$7595",
		DisplayPriority =		401,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7596",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_BattleCruiser",
		UpgradeName =			"MAXHEALTH",
		UpgradeValue =			1.3,
		Icon = Icon_Health,
		ShortDisplayedName = "$7254",
	},

	{
		Name =					"BattlecruiserHealthUpgrade2",
		RequiredResearch =		"BattlecruiserHealthUpgrade1",                 -- <list of prerequisite research items>
		RequiredSubSystems =	"AdvancedResearch & CapShipProduction",                         -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					75,
		DisplayedName =			"$7597",
		DisplayPriority =		401,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7598",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_BattleCruiser",
		UpgradeName =			"MAXHEALTH",
		UpgradeValue =			1.6,
		Icon = Icon_Health,
		ShortDisplayedName = "$7255",
	},

	{
		Name =					"BattlecruiserMAXSPEEDUpgrade1",
		RequiredResearch =		"BattlecruiserIonWeapons",                             -- <list of prerequisite research items>
		RequiredSubSystems =	"Research | AdvancedResearch & CapShipProduction",                         -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					30,
		DisplayedName =			"$7599",
		DisplayPriority =		404,                                                   -- <display priority (used to sort on screen)>,
		Description =			"$730",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_BattleCruiser",
		UpgradeName =			"MAXSPEED",
		UpgradeValue =			1.2,
		Icon = Icon_Speed,
		ShortDisplayedName = "$7254",

	},

	{
		Name =					"BattlecruiserMAXSPEEDUpgrade2",
		RequiredResearch =		"BattlecruiserMAXSPEEDUpgrade1",                  -- <list of prerequisite research items>
		RequiredSubSystems =	"AdvancedResearch & CapShipProduction",                         -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					40,
		DisplayedName =			"$7601",
		DisplayPriority =		404,                                                   -- <display priority (used to sort on screen)>,
		Description =			"$7602",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_BattleCruiser",
		UpgradeName =			"MAXSPEED",
		UpgradeValue =			1.35,
		Icon = Icon_Speed,
		ShortDisplayedName = "$7255",

	},


{
		Name =				"DestroyerHealthUpgrade1",
		RequiredResearch =		"DestroyerTech",                             -- <list of prerequisite research items>
		RequiredSubSystems =		"Research | AdvancedResearch & CapShipProduction",                         -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					60,
		DisplayedName =			"$7639",
		DisplayPriority =			405,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7640",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_Destroyer",
		UpgradeName =			"MAXHEALTH",
		UpgradeValue =			1.3,
		ShortDisplayedName = 		"$7274",
		Icon = 				Icon_Health,	
	},

	{
		Name =				"DestroyerHealthUpgrade2",
		RequiredResearch =		"DestroyerHealthUpgrade1",                 -- <list of prerequisite research items>
		RequiredSubSystems =		"AdvancedResearch & CapShipProduction",                         -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					75,
		DisplayedName =			"$7641",
		DisplayPriority =			405,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7642",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_Destroyer",
		UpgradeName =			"MAXHEALTH",
		UpgradeValue =			1.6,
		Icon = 				Icon_Health,
		ShortDisplayedName = 		"$7275",
	},

	{
		Name =					"DestroyerMAXSPEEDUpgrade1",
		RequiredResearch =		"DestroyerTech",                             -- <list of prerequisite research items>
		RequiredSubSystems =	"Research | AdvancedResearch & CapShipProduction",                         -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					30,
		DisplayedName =			"$7643",
		DisplayPriority =		406,                                                   -- <display priority (used to sort on screen)>,
		Description =			"$7644",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_Destroyer",
		UpgradeName =			"MAXSPEED",
		UpgradeValue =			1.2,
		Icon = Icon_Speed,
		ShortDisplayedName = "$7274",

	},

	{
		Name =					"DestroyerMAXSPEEDUpgrade2",
		RequiredResearch =		"DestroyerMAXSPEEDUpgrade1",                  -- <list of prerequisite research items>
		RequiredSubSystems =	"AdvancedResearch & CapShipProduction",                         -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					40,
		DisplayedName =			"$7645",
		DisplayPriority =		406,                                                   -- <display priority (used to sort on screen)>,
		Description =			"$7646",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_Destroyer",
		UpgradeName =			"MAXSPEED",
		UpgradeValue =			1.35,
		Icon = Icon_Speed,
		ShortDisplayedName = "$7275",

	},

	--======================================================================
	-- HW1Capital Ship Upgrades
	--======================================================================

	{
		Name =				"Hw1BattlecruiserHealthUpgrade1",
		RequiredResearch =		"BattlecruiserHealthUpgrade1",                             -- <list of prerequisite research items>
		RequiredSubSystems =		"",                         -- <list of prerequisite sub systems>
		Cost = 					0,
		Time = 					0,
		DisplayedName =			"$7595",
		DisplayPriority =		401,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7596",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_HW1BattleCruiser",
		UpgradeName =			"MAXHEALTH",
		UpgradeValue =			1.3,
		Icon = Icon_Health,
		ShortDisplayedName = "$7254",
	},

	{
		Name =				"Hw1BattlecruiserHealthUpgrade2",
		RequiredResearch =		"BattlecruiserHealthUpgrade2",                 -- <list of prerequisite research items>
		RequiredSubSystems =		"",                         -- <list of prerequisite sub systems>
		Cost = 					0,
		Time = 					0,
		DisplayedName =			"$7597",
		DisplayPriority =		401,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7598",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_HW1BattleCruiser",
		UpgradeName =			"MAXHEALTH",
		UpgradeValue =			1.6,
		Icon = Icon_Health,
		ShortDisplayedName = "$7255",
	},

	{
		Name =				"Hw1BattlecruiserMAXSPEEDUpgrade1",
		RequiredResearch =		"BattlecruiserMAXSPEEDUpgrade1",                             -- <list of prerequisite research items>
		RequiredSubSystems =		"",                         -- <list of prerequisite sub systems>
		Cost = 					0,
		Time = 					0,
		DisplayedName =			"$7599",
		DisplayPriority =		404,                                                   -- <display priority (used to sort on screen)>,
		Description =			"$730",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_HW1BattleCruiser",
		UpgradeName =			"MAXSPEED",
		UpgradeValue =			1.2,
		Icon = Icon_Speed,
		ShortDisplayedName = "$7254",

	},

	{
		Name =				"Hw1BattlecruiserMAXSPEEDUpgrade2",
		RequiredResearch =		"BattlecruiserMAXSPEEDUpgrade2",                  -- <list of prerequisite research items>
		RequiredSubSystems =		"",                         -- <list of prerequisite sub systems>
		Cost = 					0,
		Time = 					0,
		DisplayedName =			"$7601",
		DisplayPriority =		404,                                                   -- <display priority (used to sort on screen)>,
		Description =			"$7602",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_HW1BattleCruiser",
		UpgradeName =			"MAXSPEED",
		UpgradeValue =			1.35,
		Icon = Icon_Speed,
		ShortDisplayedName = "$7255",

	},


{
		Name =				"Hw1DestroyerHealthUpgrade1",
		RequiredResearch =		"DestroyerHealthUpgrade1",                             -- <list of prerequisite research items>
		RequiredSubSystems =		"",                         -- <list of prerequisite sub systems>
		Cost = 					0,
		Time = 					0,
		DisplayedName =			"$7639",
		DisplayPriority =			405,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7640",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_HW1Destroyer",
		UpgradeName =			"MAXHEALTH",
		UpgradeValue =			1.3,
		ShortDisplayedName = 		"$7274",
		Icon = 				Icon_Health,	
	},

	{
		Name =				"Hw1DestroyerHealthUpgrade2",
		RequiredResearch =		"DestroyerHealthUpgrade2",                 -- <list of prerequisite research items>
		RequiredSubSystems =		"",                         -- <list of prerequisite sub systems>
		Cost = 					0,
		Time = 					0,
		DisplayedName =			"$7641",
		DisplayPriority =			405,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7642",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_HW1Destroyer",
		UpgradeName =			"MAXHEALTH",
		UpgradeValue =			1.6,
		Icon = 				Icon_Health,
		ShortDisplayedName = 		"$7275",
	},

	{
		Name =				"Hw1DestroyerMAXSPEEDUpgrade1",
		RequiredResearch =		"DestroyerMAXSPEEDUpgrade1",                             -- <list of prerequisite research items>
		RequiredSubSystems =		"",                         -- <list of prerequisite sub systems>
		Cost = 					0,
		Time = 					0,
		DisplayedName =			"$7643",
		DisplayPriority =		406,                                                   -- <display priority (used to sort on screen)>,
		Description =			"$7644",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_HW1Destroyer",
		UpgradeName =			"MAXSPEED",
		UpgradeValue =			1.2,
		Icon = Icon_Speed,
		ShortDisplayedName = "$7274",

	},

	{
		Name =				"Hw1DestroyerMAXSPEEDUpgrade2",
		RequiredResearch =		"DestroyerMAXSPEEDUpgrade2",                  -- <list of prerequisite research items>
		RequiredSubSystems =		"",                         -- <list of prerequisite sub systems>
		Cost = 					0,
		Time = 					0,
		DisplayedName =			"$7645",
		DisplayPriority =		406,                                                   -- <display priority (used to sort on screen)>,
		Description =			"$7646",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_HW1Destroyer",
		UpgradeName =			"MAXSPEED",
		UpgradeValue =			1.35,
		Icon = Icon_Speed,
		ShortDisplayedName = "$7275",

	},

	--======================================================================
	-- Platform Upgrades
	--======================================================================

	{
		Name =					"GunTurretHealthUpgrade1",
		RequiredResearch =		"",                                                    -- <list of prerequisite research items>
		RequiredSubSystems =	"Research | AdvancedResearch & PlatformProduction",                       -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					30,
		DisplayedName =			"$7603",
		DisplayPriority =		30,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7604",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_GunTurret",
        	UpgradeName =			"MAXHEALTH",
       		UpgradeValue =			1.3,
		Icon = Icon_Health,
		ShortDisplayedName = "$7257",
	},

	{
		Name =					"GunTurretHealthUpgrade2",
		RequiredResearch =		"GunTurretHealthUpgrade1",                    -- <list of prerequisite research items>
		RequiredSubSystems =	"AdvancedResearch & PlatformProduction",                        -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					40,
		DisplayedName =			"$7605",
		DisplayPriority =			30,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7606",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_GunTurret",
        	UpgradeName =			"MAXHEALTH",
        	UpgradeValue =			1.6,
		Icon = Icon_Health,
		ShortDisplayedName =		"$7258",
	},

	{
		Name =					"PulsarTurretHealthUpgrade1",
		RequiredResearch =		"PlatformIonWeapons",                                                    -- <list of prerequisite research items>
		RequiredSubSystems =	"Research | AdvancedResearch & PlatformProduction",                       -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					30,
		DisplayedName =			"Pulsar Turret Armor 1",
		DisplayPriority =		601,                                                    -- <display priority (used to sort on screen)>,
		Description =			"<b>Description:</b> Improves Pulsar Turret armor",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_PulsarTurret",
        	UpgradeName =			"MAXHEALTH",
        	UpgradeValue =			1.3,
		Icon = 				Icon_Health,
		ShortDisplayedName = 		"Lvl 1 Pulsar Turret",
	},

	{
		Name =					"PulsarTurretHealthUpgrade2",
		RequiredResearch =		"PulsarTurretHealthUpgrade1 & PlatformIonWeapons",                    -- <list of prerequisite research items>
		RequiredSubSystems =	"AdvancedResearch & PlatformProduction",                        -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					40,
		DisplayedName =			"Pulsar Turret Armor 2",
		DisplayPriority =		601,                                                    -- <display priority (used to sort on screen)>,
		Description =			"<b>Description:</b> Improves Pulsar Turret armor",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_PulsarTurret",
        	UpgradeName =			"MAXHEALTH",
        	UpgradeValue =			1.6,
		Icon = 				Icon_Health,
		ShortDisplayedName = 		"Lvl 2 Pulsar Turret",
	},
	
	{
		Name =					"IonTurretHealthUpgrade1",
		RequiredResearch =		"PlatformIonWeapons",                                                    -- <list of prerequisite research items>
		RequiredSubSystems =	"Research | AdvancedResearch & PlatformProduction",                       -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					30,
		DisplayedName =			"$7607",
		DisplayPriority =		603,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7608",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_IonTurret",
        	UpgradeName =			"MAXHEALTH",
        	UpgradeValue =			1.3,
		Icon = 				Icon_Health,
		ShortDisplayedName = 		"$7261",
	},

	{
		Name =					"IonTurretHealthUpgrade2",
		RequiredResearch =		"IonTurretHealthUpgrade1 & PlatformIonWeapons",                    -- <list of prerequisite research items>
		RequiredSubSystems =	"AdvancedResearch & PlatformProduction",                        -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					40,
		DisplayedName =			"$7609",
		DisplayPriority =		603,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7610",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_IonTurret",
        	UpgradeName =			"MAXHEALTH",
        	UpgradeValue =			1.6,
		Icon = 				Icon_Health,
		ShortDisplayedName = 		"$7262",
	},

	--======================================================================
	-- Utility Upgrades
	--======================================================================

	{
		Name =				"ResourceCollectorHealthUpgrade1",
		RequiredResearch =		"",                                                    -- <list of prerequisite research items>
		RequiredSubSystems =		"Research | AdvancedResearch",                                                    -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					40,
		DisplayedName =			"$7611",
		DisplayPriority =			701,                                                   -- <display priority (used to sort on screen)>,
		Description =			"$7612",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_ResourceCollector",
        	UpgradeName =			"MAXHEALTH",
        	UpgradeValue =			1.45,
		Icon = Icon_Health,
		ShortDisplayedName = "$7264",
	},

	{
		Name =				"ResourceCollectorHealthUpgrade2",
		RequiredResearch =		"ResourceCollectorHealthUpgrade1",                     -- <list of prerequisite research items>
		RequiredSubSystems =		"AdvancedResearch",                                                    -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					60,
		DisplayedName =			"$7613",
		DisplayPriority =			701,                                                   -- <display priority (used to sort on screen)>,
		Description =			"$7614",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_ResourceCollector",
        	UpgradeName =			"MAXHEALTH",
        	UpgradeValue =			1.9,
		Icon = 				Icon_Health,
		ShortDisplayedName = 		"$7265",
	},

	{
		Name =				"ResourceControllerHealthUpgrade1",
		RequiredResearch =		"",                                                    -- <list of prerequisite research items>
		RequiredSubSystems =		"Research | AdvancedResearch",                                                    -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					30,
		DisplayedName =			"$7615",
		DisplayPriority =			704,                                                   -- <display priority (used to sort on screen)>,
		Description =			"$7616",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_ResourceController",
        	UpgradeName =			"MAXHEALTH",
        	UpgradeValue =			1.3,
		Icon = 				Icon_Health,
		ShortDisplayedName = 		"$7267",
	},

	{
		Name =				"ResourceControllerHealthUpgrade2",
		RequiredResearch =		"ResourceControllerHealthUpgrade1",                     -- <list of prerequisite research items>
		RequiredSubSystems =		"AdvancedResearch",                                                    -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					40,
		DisplayedName =			"$7617",
		DisplayPriority =			704,                                                   -- <display priority (used to sort on screen)>,
		Description =			"$7618",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_ResourceController",
        	UpgradeName =			"MAXHEALTH",
        	UpgradeValue =			1.6,
		Icon = 				Icon_Health,
		ShortDisplayedName = 		"$7268",
	},

	--======================================================================
	-- Hyperspace Research
	--======================================================================

	{
		Name =				"HyperspaceCostUpgrade1",
		RequiredResearch =		"",
		RequiredSubSystems =		"Research | AdvancedResearch & Hyperspace",
		Cost = 					30,
		Time = 					45,
		DisplayedName =			"$7627",
		DisplayPriority =			30,
		Description =			"$7628",
		UpgradeType =			Modifier,
		TargetType =			AllShips,
        	UpgradeName =			"HyperspaceCost",
        	UpgradeValue =			0.8,
		TargetName = 			"Hgn_Mothership", 
		Icon = 				Icon_Tech,
		ShortDisplayedName = 		"$7280",
	},


-- Hyperspace


	{
		Name =				"HyperspaceCostUpgrade2",
		RequiredResearch =		"HyperspaceCostUpgrade1",
		RequiredSubSystems =		"AdvancedResearch | AdvancedResearch & Hyperspace",
		Cost = 					30,
		Time = 					60,
		DisplayedName =			"$7629",
		DisplayPriority =			30,
		Description =			"$7630",
		UpgradeType =			Modifier,
		TargetType =			AllShips,
        	UpgradeName =			"HyperspaceCost",
        	UpgradeValue =			0.6,
		TargetName = 			"Hgn_Mothership", 
		Icon = 				Icon_Tech,
		ShortDisplayedName = 		"$7281",
	},

--	{
--		Name =				"HyperspaceRecoveryTimeUpgrade1",
--		RequiredResearch =		"",
--		RequiredSubSystems =		"Research | AdvancedResearch & Hyperspace",
--		Cost = 					30,
--		Time = 					30,
--		DisplayedName =			"$7635",
--		DisplayPriority =			307,
--		Description =			"$7636",
--		UpgradeType =			Modifier,
--		TargetType =			AllShips,
--     	UpgradeName =			"HyperspaceRecoveryTime",
--	  	UpgradeValue =			0.33,
--		TargetName = 			"Hgn_Mothership",
--		Icon = 				Icon_Tech,
--		ShortDisplayedName = 		"$7284",
--	},

--	{
--		Name =				"HyperspaceRecoveryTimeUpgrade2",
--		RequiredResearch =		"HyperspaceRecoveryTimeUpgrade1",
--		RequiredSubSystems =		"AdvancedResearch & Hyperspace",
--		Cost = 					30,
--		Time = 					45,
--		DisplayedName =			"$7637",
--		DisplayPriority =			307,
--		Description =			"$7638",
--		UpgradeType =			Modifier,
--		TargetType =			AllShips,
--     	UpgradeName =			"HyperspaceRecoveryTime",
--  	UpgradeValue =			0.33,
--		TargetName = 			"Hgn_Mothership", 
--		Icon = 				Icon_Tech,
--		ShortDisplayedName = 		"$7285",
--	},

	
	--======================================================================
	-- Shipyard Upgrades
	--======================================================================

	{
		Name =				"ShipyardHealthUpgrade1",
		RequiredResearch =		"",                                                    -- <list of prerequisite research items>
		RequiredSubSystems =		"Research | AdvancedResearch & Hyperspace",                               -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					30,
		DisplayedName =			"$7619",
		DisplayPriority =			1200,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7620",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_Shipyard",
        	UpgradeName =			"MAXHEALTH",
        	UpgradeValue =			1.3,
		Icon = 				Icon_Health,
		ShortDisplayedName = 		"$7271",
	},

	{
		Name =				"ShipyardHealthUpgrade2",
		RequiredResearch =		"ShipyardHealthUpgrade1",                       -- <list of prerequisite research items>
		RequiredSubSystems =		"AdvancedResearch & Hyperspace",                               -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					40,
		DisplayedName =			"$7621",
		DisplayPriority =			1200,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7622",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_Shipyard",
        	UpgradeName =			"MAXHEALTH",
        	UpgradeValue =			1.6,
		Icon = 				Icon_Health,
		ShortDisplayedName = 		"$7272",
	},

	{
		Name =				"ShipyardMAXSPEEDUpgrade1",
		RequiredResearch =		"",                                                    -- <list of prerequisite research items>
		RequiredSubSystems =		"Research | AdvancedResearch & Hyperspace",                               -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					30,
		DisplayedName =			"$7623",
		DisplayPriority =			1203,                                                   -- <display priority (used to sort on screen)>,
		Description =			"$7624",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_Shipyard",
        	UpgradeName =			"MAXSPEED",
        	UpgradeValue =			1.2,
		Icon = 				Icon_Speed,
		ShortDisplayedName = 		"$7271",
	},

	{
		Name =				"ShipyardMAXSPEEDUpgrade2",
		RequiredResearch =		"ShipyardMAXSPEEDUpgrade1",                        -- <list of prerequisite research items>
		RequiredSubSystems =		"AdvancedResearch & Hyperspace",                               -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					60,
		DisplayedName =			"$7625",
		DisplayPriority =			1203,                                                   -- <display priority (used to sort on screen)>,
		Description =			"$7626",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_Shipyard",
        	UpgradeName =			"MAXSPEED",
        	UpgradeValue =			1.35,
		Icon = 				Icon_Speed,
		ShortDisplayedName = 		"$7272",
	},

	{
		Name =				"ShipyardBUILDSPEEDUpgrade1",
		RequiredResearch =		"",
		RequiredSubSystems =		"AdvancedResearch & Hyperspace",
		Cost = 				30,
		Time = 				40,
		DisplayedName =			"$7810",
		DisplayPriority =			1204,
		Description =			"$7811",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Hgn_Shipyard",
	        UpgradeName =			"BUILDSPEED",
        	UpgradeValue =			1.3,
		Icon = 				Icon_Build,
		ShortDisplayedName = 		"$7240",
	},


	--======================================================================
	-- TEMPORARY - for SP Game Use
	--======================================================================

	{
		Name =			"SensorsDowngrade1",
		RequiredResearch =	"RESEARCH HACK",                        -- <list of prerequisite research items>
		RequiredSubSystems =	"",                               -- <list of prerequisite sub systems>
		Cost = 			0,
		Time = 			0,
		DisplayedName =		"Sensors Downgrade1",
		DisplayPriority =	1210,                                                   -- <display priority (used to sort on screen)>,
		Description =		"",
		UpgradeType =		Modifier,
		TargetType =		Ship,
		TargetName =		"Hgn_MotherShip",
	        UpgradeName =		"PrimarySensorsRange",
	        UpgradeValue =		0.3,
	},

	{
		Name =			"SensorsDowngrade2",
		RequiredResearch =	"RESEARCH HACK",                        -- <list of prerequisite research items>
		RequiredSubSystems =	"",                               -- <list of prerequisite sub systems>
		Cost = 			0,
		Time = 			0,
		DisplayedName =		"Sensors Downgrade2",
		DisplayPriority =	1211,                                                   -- <display priority (used to sort on screen)>,
		Description =		"",
		UpgradeType =		Modifier,
		TargetType =		Ship,
		TargetName =		"Hgn_MotherShip",
	        UpgradeName =		"SecondarySensorsRange",
	        UpgradeValue =		0.3,
	},

	{
		Name =			"SensorsDowngrade3",
		RequiredResearch =	"RESEARCH HACK",                        -- <list of prerequisite research items>
		RequiredSubSystems =	"",                               -- <list of prerequisite sub systems>
		Cost = 			0,
		Time = 			0,
		DisplayedName =		"Sensors Downgrade3",
		DisplayPriority =	1212,                                                   -- <display priority (used to sort on screen)>,
		Description =		"",
		UpgradeType =		Modifier,
		TargetType =		Ship,
		TargetName =		"Hgn_MotherShip",
	        UpgradeName =		"VisualRange",
	        UpgradeValue =		0.3,
	},

	{
		Name =			"SensorsBackToNormal1",
		RequiredResearch =	"RESEARCH HACK",                        -- <list of prerequisite research items>
		RequiredSubSystems =	"",                               -- <list of prerequisite sub systems>
		Cost = 			0,
		Time = 			0,
		DisplayedName =		"SensorsBackToNormal1",
		DisplayPriority =	1213,                                                   -- <display priority (used to sort on screen)>,
		Description =		"",
		UpgradeType =		Modifier,
		TargetType =		Ship,
		TargetName =		"Hgn_MotherShip",
	        UpgradeName =		"PrimarySensorsRange",
	        UpgradeValue =		1.0,
	},

	{
		Name =			"SensorsBackToNormal2",
		RequiredResearch =	"RESEARCH HACK",                        -- <list of prerequisite research items>
		RequiredSubSystems =	"",                               -- <list of prerequisite sub systems>
		Cost = 			0,
		Time = 			0,
		DisplayedName =		"SensorsBackToNormal2",
		DisplayPriority =	1214,                                                   -- <display priority (used to sort on screen)>,
		Description =		"",
		UpgradeType =		Modifier,
		TargetType =		Ship,
		TargetName =		"Hgn_MotherShip",
	        UpgradeName =		"SecondarySensorsRange",
	        UpgradeValue =		1.0,
	},

	{
		Name =			"SensorsBackToNormal3",
		RequiredResearch =	"RESEARCH HACK",                        -- <list of prerequisite research items>
		RequiredSubSystems =	"",                               -- <list of prerequisite sub systems>
		Cost = 			0,
		Time = 			0,
		DisplayedName =		"SensorsBackToNormal3",
		DisplayPriority =	1215,                                                   -- <display priority (used to sort on screen)>,
		Description =		"",
		UpgradeType =		Modifier,
		TargetType =		Ship,
		TargetName =		"Hgn_MotherShip",
	        UpgradeName =		"VisualRange",
	        UpgradeValue =		1.0,
	},

	{
		Name =			"AssaultCorvetteEliteWeaponUpgrade",
		RequiredResearch =	"RESEARCH HACK",                        -- <list of prerequisite research items>
		RequiredSubSystems =	"",                               -- <list of prerequisite sub systems>
		Cost = 			0,
		Time = 			0,
		DisplayedName =		"Elite Assault Corvette Weapon Upgrade",
		DisplayPriority =	1204,                                                   -- <display priority (used to sort on screen)>,
		Description =		"",
		UpgradeType =		Modifier,
		TargetType =		Ship,
		TargetName =		"Hgn_AssaultCorvetteElite",
	        UpgradeName =		"WeaponDamage",
	        UpgradeValue =		1.2,
	},

	{
		Name =			"AttackBomberEliteWeaponUpgrade",
		RequiredResearch =	"RESEARCH HACK",                        -- <list of prerequisite research items>
		RequiredSubSystems =	"",                               -- <list of prerequisite sub systems>
		Cost = 			0,
		Time = 			0,
		DisplayedName =		"Elite Attack Bomber Weapon Upgrade",
		DisplayPriority =	1205,                                                   -- <display priority (used to sort on screen)>,
		Description =		"",
		UpgradeType =		Modifier,
		TargetType =		Ship,
		TargetName =		"Hgn_AttackBomberElite",
	        UpgradeName =		"WeaponDamage",
	        UpgradeValue =		1.4,
	},
	{
		Name =				"MoverHealthUpgrade",
		RequiredResearch =		"RESEARCH HACK",
		RequiredSubSystems =		"",
		Cost = 				0,
		Time = 				0,
		DisplayedName =			"Mover health upgrade",
		DisplayPriority =			41,
		Description =			"Upgrades Mover health",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Kpr_Mover",
		UpgradeName =			"MAXHEALTH",
		UpgradeValue =			5,			-- or whatever value suits the mission
	},
	{
		Name =				"MoverHealthDowngrade",
		RequiredResearch =		"RESEARCH HACK",
		RequiredSubSystems =		"",
		Cost = 				0,
		Time = 				0,
		DisplayedName =			"Mover health downgrade",
		DisplayPriority =			41,
		Description =			"Downgrades Mover health",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Kpr_Mover",
		UpgradeName =			"MAXHEALTH",
		UpgradeValue =			1,			-- or whatever value suits the mission
	},

	{
		Name =				"FrigateHealthUpgradeSPGAME",
		RequiredResearch =		"RESEARCH HACK",                                          -- <list of prerequisite research items>
		RequiredSubSystems =		"",     -- <list of prerequisite sub systems>
		Cost = 				30,
		Time = 				60,
		DisplayedName =			"$7571",
		DisplayPriority =		30,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7572",
		UpgradeType =			Modifier,
		TargetType =			Family,
		TargetName =			"Frigate",
	        UpgradeName =			"MAXHEALTH",
	        UpgradeValue =			2.5,
	},

	{
		Name =				"KeeperHealthUpgradeSPGAME_LOW",
		RequiredResearch =		"RESEARCH HACK",                                          -- <list of prerequisite research items>
		RequiredSubSystems =		"",     -- <list of prerequisite sub systems>
		Cost = 				0,
		Time = 				0,
		DisplayedName =			"$7571",
		DisplayPriority =		30,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7572",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Kpr_Destroyer",
	        UpgradeName =			"MAXHEALTH",
	        UpgradeValue =			2.5,
	},

	{
		Name =				"KeeperHealthUpgradeSPGAME_MED",
		RequiredResearch =		"RESEARCH HACK",                                          -- <list of prerequisite research items>
		RequiredSubSystems =		"",     -- <list of prerequisite sub systems>
		Cost = 				0,
		Time = 				0,
		DisplayedName =			"$7571",
		DisplayPriority =		30,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7572",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Kpr_Destroyer",
	        UpgradeName =			"MAXHEALTH",
	        UpgradeValue =			3.5,
	},


	{
		Name =				"KeeperHealthUpgradeSPGAME_HIGH",
		RequiredResearch =		"RESEARCH HACK",                                          -- <list of prerequisite research items>
		RequiredSubSystems =		"",     -- <list of prerequisite sub systems>
		Cost = 				0,
		Time = 				0,
		DisplayedName =			"$7571",
		DisplayPriority =		30,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7572",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Kpr_Destroyer",
	        UpgradeName =			"MAXHEALTH",
	        UpgradeValue =			4.5,
	},

	{
		Name =				"KeeperWeaponUpgradeSPGAME_M10_LVL_1",
		RequiredResearch =		"RESEARCH HACK",                                          -- <list of prerequisite research items>
		RequiredSubSystems =		"",     -- <list of prerequisite sub systems>
		Cost = 				0,
		Time = 				0,
		DisplayedName =			"$7571",
		DisplayPriority =		30,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7572",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Kpr_DestroyerM10",
	        UpgradeName =			"WeaponDamage",
	        UpgradeValue =			0.1,
	},
	
	{
		Name =				"KeeperWeaponUpgradeSPGAME_M10_LVL_2",
		RequiredResearch =		"RESEARCH HACK",                                          -- <list of prerequisite research items>
		RequiredSubSystems =		"",     -- <list of prerequisite sub systems>
		Cost = 				0,
		Time = 				0,
		DisplayedName =			"$7571",
		DisplayPriority =		30,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7572",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Kpr_DestroyerM10",
	        UpgradeName =			"WeaponDamage",
	        UpgradeValue =			0.2,
	},
	
	{
		Name =				"KeeperWeaponUpgradeSPGAME_M10_LVL_3",
		RequiredResearch =		"RESEARCH HACK",                                          -- <list of prerequisite research items>
		RequiredSubSystems =		"",     -- <list of prerequisite sub systems>
		Cost = 				0,
		Time = 				0,
		DisplayedName =			"$7571",
		DisplayPriority =		30,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7572",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Kpr_DestroyerM10",
	        UpgradeName =			"WeaponDamage",
	        UpgradeValue =			0.3,
	},
	
	{
		Name =				"KeeperWeaponUpgradeSPGAME_M10_LVL_4",
		RequiredResearch =		"RESEARCH HACK",                                          -- <list of prerequisite research items>
		RequiredSubSystems =		"",     -- <list of prerequisite sub systems>
		Cost = 				0,
		Time = 				0,
		DisplayedName =			"$7571",
		DisplayPriority =		30,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7572",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Kpr_DestroyerM10",
	        UpgradeName =			"WeaponDamage",
	        UpgradeValue =			0.4,
	},
	
	{
		Name =				"KeeperWeaponUpgradeSPGAME_M10_LVL_5",
		RequiredResearch =		"RESEARCH HACK",                                          -- <list of prerequisite research items>
		RequiredSubSystems =		"",     -- <list of prerequisite sub systems>
		Cost = 				0,
		Time = 				0,
		DisplayedName =			"$7571",
		DisplayPriority =		30,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7572",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Kpr_DestroyerM10",
	        UpgradeName =			"WeaponDamage",
	        UpgradeValue =			0.5,
	},
	
	{
		Name =				"KeeperWeaponUpgradeSPGAME_M10_LVL_6",
		RequiredResearch =		"RESEARCH HACK",                                          -- <list of prerequisite research items>
		RequiredSubSystems =		"",     -- <list of prerequisite sub systems>
		Cost = 				0,
		Time = 				0,
		DisplayedName =			"$7571",
		DisplayPriority =		30,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7572",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Kpr_DestroyerM10",
	        UpgradeName =			"WeaponDamage",
	        UpgradeValue =			0.6,
	},
	
	{
		Name =				"KeeperHealthUpgradeSPGAME_M10_LVL_1",
		RequiredResearch =		"RESEARCH HACK",                                          -- <list of prerequisite research items>
		RequiredSubSystems =		"",     -- <list of prerequisite sub systems>
		Cost = 				0,
		Time = 				0,
		DisplayedName =			"$7571",
		DisplayPriority =		30,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7572",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Kpr_DestroyerM10",
	        UpgradeName =			"MAXHEALTH",
	        UpgradeValue =			2,
	},
	{
		Name =				"KeeperHealthUpgradeSPGAME_M10_LVL_2",
		RequiredResearch =		"RESEARCH HACK",                                          -- <list of prerequisite research items>
		RequiredSubSystems =		"",     -- <list of prerequisite sub systems>
		Cost = 				0,
		Time = 				0,
		DisplayedName =			"$7571",
		DisplayPriority =		30,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7572",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Kpr_DestroyerM10",
	        UpgradeName =			"MAXHEALTH",
	        UpgradeValue =			3,
	},
	{
		Name =				"KeeperHealthUpgradeSPGAME_M10_LVL_3",
		RequiredResearch =		"RESEARCH HACK",                                          -- <list of prerequisite research items>
		RequiredSubSystems =		"",     -- <list of prerequisite sub systems>
		Cost = 				0,
		Time = 				0,
		DisplayedName =			"$7571",
		DisplayPriority =		30,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7572",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Kpr_DestroyerM10",
	        UpgradeName =			"MAXHEALTH",
	        UpgradeValue =			4,
	},

	{
		Name =				"AttackDroidHealthUpgradeSPGAME_LOW",
		RequiredResearch =		"RESEARCH HACK",                                          -- <list of prerequisite research items>
		RequiredSubSystems =		"",     -- <list of prerequisite sub systems>
		Cost = 				0,
		Time = 				0,
		DisplayedName =			"$7571",
		DisplayPriority =		30,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7572",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Kpr_AttackDroid",
	        UpgradeName =			"MAXHEALTH",
	        UpgradeValue =			2.0,
	},

	{
		Name =				"AttackDroidHealthUpgradeSPGAME_MED",
		RequiredResearch =		"RESEARCH HACK",                                          -- <list of prerequisite research items>
		RequiredSubSystems =		"",     -- <list of prerequisite sub systems>
		Cost = 				0,
		Time = 				0,
		DisplayedName =			"$7571",
		DisplayPriority =		30,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7572",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Kpr_AttackDroid",
	        UpgradeName =			"MAXHEALTH",
	        UpgradeValue =			3.0,
	},

	{
		Name =				"AttackDroidHealthUpgradeSPGAME_HIGH",
		RequiredResearch =		"RESEARCH HACK",                                          -- <list of prerequisite research items>
		RequiredSubSystems =		"",     -- <list of prerequisite sub systems>
		Cost = 				0,
		Time = 				0,
		DisplayedName =			"$7571",
		DisplayPriority =		30,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7572",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Kpr_AttackDroid",
	        UpgradeName =			"MAXHEALTH",
	        UpgradeValue =			4.0,
	},

	{
		Name =				"AttackDroidWeaponUpgradeSPGAME_LOW",
		RequiredResearch =		"RESEARCH HACK",                                          -- <list of prerequisite research items>
		RequiredSubSystems =		"",     -- <list of prerequisite sub systems>
		Cost = 				0,
		Time = 				0,
		DisplayedName =			"$7571",
		DisplayPriority =		30,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7572",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Kpr_AttackDroid",
	        UpgradeName =			"WeaponDamage",
	        UpgradeValue =			1.3,
	},

	{
		Name =				"AttackDroidWeaponUpgradeSPGAME_MED",
		RequiredResearch =		"RESEARCH HACK",                                          -- <list of prerequisite research items>
		RequiredSubSystems =		"",     -- <list of prerequisite sub systems>
		Cost = 				0,
		Time = 				0,
		DisplayedName =			"$7571",
		DisplayPriority =		30,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7572",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Kpr_AttackDroid",
	        UpgradeName =			"WeaponDamage",
	        UpgradeValue =			1.6,
	},

	{
		Name =				"AttackDroidWeaponUpgradeSPGAME_HIGH",
		RequiredResearch =		"RESEARCH HACK",                                          -- <list of prerequisite research items>
		RequiredSubSystems =		"",     -- <list of prerequisite sub systems>
		Cost = 				0,
		Time = 				0,
		DisplayedName =			"$7571",
		DisplayPriority =		30,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7572",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Kpr_AttackDroid",
	        UpgradeName =			"WeaponDamage",
	        UpgradeValue =			2.0,
	},
	
	{
		Name =					"DamageMoverTech",
		RequiredResearch =		"",
		RequiredSubSystems =	"Research | AdvancedResearch",
		Cost = 					30,
		Time = 					60,
		DisplayedName =			"$7900",
		DisplayPriority =		29,
		Description =			"$7901",
		TargetName = 		"Hgn_Mothership",
		Icon = Icon_Tech,
		ShortDisplayedName = "$7902",
	},
	
	{
		Name =					"RadiationDefenseField",
		RequiredResearch =		"",
		RequiredSubSystems =	"Research | AdvancedResearch",
		Cost = 					30,
		Time = 					60,
		DisplayedName =			"$7905",
		DisplayPriority =		30,
		Description =			"$7906",
		UpgradeType =			Ability,
		TargetType =			Ship,
		UpgradeName =			"DefenseFieldShield",
		TargetName = 		"Hgn_DefenseFieldFrigate",
		Icon = Icon_Tech,
		ShortDisplayedName =	"$7907",
	},
--AI behaviour	
	{ 
		Name = "cpuplayers_defensive", 
		RequiredResearch = "", 
		RequiredSubSystems = "", 
		Cost = 1, 
		Time = 1, 
		DisplayedName = "", 
		DisplayPriority = 0,        
		Description = "",             
		TargetName = "",
	},	
	{ 
		Name = "cpuplayers_aggressive", 
		RequiredResearch = "", 
		RequiredSubSystems = "", 
		Cost = 1, 
		Time = 1, 
		DisplayedName = "", 
		DisplayPriority = 0,        
		Description = "",             
		TargetName = "",
	},	
	{ 
		Name = "cpuplayers_dynamic", 
		RequiredResearch = "", 
		RequiredSubSystems = "", 
		Cost = 1, 
		Time = 1, 
		DisplayedName = "", 
		DisplayPriority = 0,        
		Description = "",             
		TargetName = "",
	},
--AI no-rush	
	{ 
		Name = "cpuplayers_norushtime5", 
		RequiredResearch = "", 
		RequiredSubSystems = "", 
		Cost = 1, 
		Time = 1, 
		DisplayedName = "", 
		DisplayPriority = 0,        
		Description = "",             
		TargetName = "",
	},		
	{ 
		Name = "cpuplayers_norushtime10", 
		RequiredResearch = "", 
		RequiredSubSystems = "", 
		Cost = 1, 
		Time = 1, 
		DisplayedName = "", 
		DisplayPriority = 0,        
		Description = "",             
		TargetName = "",
	},		
	{ 
		Name = "cpuplayers_norushtime15", 
		RequiredResearch = "", 
		RequiredSubSystems = "", 
		Cost = 1, 
		Time = 1, 
		DisplayedName = "", 
		DisplayPriority = 0,        
		Description = "",             
		TargetName = "",
	},	
--AI build speed	
	{ 
		Name =			"AllShipBuildSpeed",
		RequiredResearch =	"",                       
		RequiredSubSystems =	"",                               
		Cost = 			1,
		Time = 			1,
		DisplayedName =		"",
		DisplayPriority =	0,                                                    
		Description =		"",
		UpgradeType =		Modifier,
		TargetType =		Family,
		TargetName =		"Capital",
		UpgradeName =		"BUILDSPEED",
		UpgradeValue =		1.025,
	},	
	{ 
		Name =			"AllShipBuildSpeedHard",
		RequiredResearch =	"",                       
		RequiredSubSystems =	"",                               
		Cost = 			1,
		Time = 			1,
		DisplayedName =		"",
		DisplayPriority =	0,                                                    
		Description =		"",
		UpgradeType =		Modifier,
		TargetType =		Family,
		TargetName =		"Capital",
		UpgradeName =		"BUILDSPEED",
		UpgradeValue =		1.05,
	},	
	{ 
		Name =			"AllShipBuildSpeedExpert",
		RequiredResearch =	"",                       
		RequiredSubSystems =	"",                               
		Cost = 			1,
		Time = 			1,
		DisplayedName =		"",
		DisplayPriority =	0,                                                    
		Description =		"",
		UpgradeType =		Modifier,
		TargetType =		Family,
		TargetName =		"Capital",
		UpgradeName =		"BUILDSPEED",
		UpgradeValue =		1.075,
	},
--AI resource rate	
	{ 
		Name =			"ResourceCollectionRateHard",
		RequiredResearch =	"",                       
		RequiredSubSystems =	"",                               
		Cost = 			1,
		Time = 			1,
		DisplayedName =		"",
		DisplayPriority =	0,                                                    
		Description =		"",
		UpgradeType =		Modifier,
		TargetType =		Ship,
		TargetName = "hgn_resourcecollector",
		UpgradeName =		"ResourceCollectionRate",
		UpgradeValue =		1.04,
	},	
	{ 
		Name =			"ResourceCollectionRateExpert",
		RequiredResearch =	"",                       
		RequiredSubSystems =	"",                               
		Cost = 			1,
		Time = 			1,
		DisplayedName =		"",
		DisplayPriority =	0,                                                    
		Description =		"",
		UpgradeType =		Modifier,
		TargetType =		Ship,
		TargetName = "hgn_resourcecollector",
		UpgradeName =		"ResourceCollectionRate",
		UpgradeValue =		1.08,
	},			
}





