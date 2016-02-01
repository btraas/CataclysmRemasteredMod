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
	-- Tech
	--======================================================================
	
	
	-- ** NOTE: TargetName is req'd even for upgrades for all ships because it
	--          needs to be placed in the UI under a certain ship type.
	
	

	-- This tech is used to make the CapShip / Adv. Cap Ship facilities into the equivalent of TIERs
	-- When a Cap Ship Facility is built, this tech is unlocked, and is then researched instantly
	-- The build items which depend on having built a Cap Ship facility are thus made dependent on this technology instead
	
	-- Same as above - special tech used to get Vaygr tech tree working right
	{ 
		Name =			"CorvetteTech",
		RequiredResearch =	"",                                               -- <list of prerequisite research items>
		RequiredSubSystems =	"Research",                              -- <list of prerequisite sub systems>
		Cost = 			30,
		Time = 			40,
		DisplayedName =		"$7176",
		DisplayPriority =	20,                                                    -- <display priority (used to sort on screen)>,
		Description =		"$7177",
		TargetType =			Family,
		TargetName =			"Corvette",
		Icon = Icon_Tech,
		ShortDisplayedName = "$7180",
	},

	-- Same as above - special tech used to get Vaygr tech tree working right
	{ 
		Name =			"FrigateTech",
		RequiredResearch =	"",                                               -- <list of prerequisite research items>
		RequiredSubSystems =	"Research",                              -- <list of prerequisite sub systems>
		Cost = 			30,
		Time = 			120,
		DisplayedName =		"$7178",
		DisplayPriority =	20,                                                    -- <display priority (used to sort on screen)>,
		Description =		"$7179",
		TargetType =			Family,
		TargetName = "Frigate",
		Icon = Icon_Tech,
		ShortDisplayedName = "$7181",
	},

--
-- Probe Research Items
-- 


	{ 
		Name =			"ProbeSensorDisruption",
		RequiredResearch =	"",                                                    -- <list of prerequisite research items>
		RequiredSubSystems =	"Research",                       -- <list of prerequisite sub systems>
		Cost = 			30,
		Time = 			60,
		DisplayedName =		"$7700",
		DisplayPriority =	210,                                                    -- <display priority (used to sort on screen)>,
		Description =		"$7701",
		TargetName = "Vgr_Probe_ECM",
		Icon = Icon_Tech,
		ShortDisplayedName = "$7182",
	},

	{ 
		Name =			"ProbeProxSensor",
		RequiredResearch =	"",                                                    -- <list of prerequisite research items>
		RequiredSubSystems =	"Research",                       -- <list of prerequisite sub systems>
		Cost = 			30,
		Time = 			40,
		DisplayedName =		"$7183",
		DisplayPriority =	220,                                                    -- <display priority (used to sort on screen)>,
		Description =		"$7184",
		TargetName = "Vgr_Probe_Prox",
		Icon = Icon_Tech,
		ShortDisplayedName = "$7185",
	},

--
-- Fighter Research Items
--
	
	{ 
		Name =			"LanceBeams",
		RequiredResearch =	"",                                                    -- <list of prerequisite research items>
		RequiredSubSystems =	"Research & FighterProduction",                       -- <list of prerequisite sub systems>
		Cost = 			30,
		Time = 			25,
		DisplayedName =		"$7704",
		DisplayPriority =	220,                                                    -- <display priority (used to sort on screen)>,
		Description =		"$7705",
		TargetName = "Vgr_LanceFighter",
		Icon = Icon_Tech,
		ShortDisplayedName = "$7301",
	},

	{ 
		Name =			"PlasmaBombs",
		RequiredResearch =	"",                                                    -- <list of prerequisite research items>
		RequiredSubSystems =	"Research & FighterProduction",                       -- <list of prerequisite sub systems>
		Cost = 			30,
		Time = 			25,
		DisplayedName =		"$7702",
		DisplayPriority =	221,                                                    -- <display priority (used to sort on screen)>,
		Description =		"$7703",
		TargetName = "Vgr_Bomber",
		Icon = Icon_Tech,
		ShortDisplayedName = "$730",
	},
--
-- Corvette Research Items
--

	{ 
		Name =			"CorvetteGraviticAttraction",
		RequiredResearch =	"",                                                    -- <list of prerequisite research items>
		RequiredSubSystems =	"Research & CorvetteProduction",                       -- <list of prerequisite sub systems>
		Cost = 			30,
		Time = 			100,
		DisplayedName =		"$7706",
		DisplayPriority =	30,                                                    -- <display priority (used to sort on screen)>,
		Description =		"$7707",
		TargetName = "Vgr_MinelayerCorvette",
				Icon = Icon_Tech,
		ShortDisplayedName = "$7302",
	},

	{ 
		Name =			"CorvetteLaser",
		RequiredResearch =	"",                                                    -- <list of prerequisite research items>
		RequiredSubSystems =	"Research & CorvetteProduction",                       -- <list of prerequisite sub systems>
		Cost = 			30,
		Time = 			60,
		DisplayedName =		"$7708",
		DisplayPriority =	231,                                                    -- <display priority (used to sort on screen)>,
		Description =		"$7709",
		TargetName = "Vgr_LaserCorvette",
				Icon = Icon_Tech,
		ShortDisplayedName = "$7303",
	},

	{ 
		Name =			"CorvetteCommand",
		RequiredResearch =	"",                                                    -- <list of prerequisite research items>
		RequiredSubSystems =	"Research & CorvetteProduction",                       -- <list of prerequisite sub systems>
		Cost = 			30,
		Time = 			60,
		DisplayedName =		"$7710",
		DisplayPriority =	232,                                                    -- <display priority (used to sort on screen)>,
		Description =		"$7711",
		TargetName = "Vgr_CommandCorvette",
		Icon = Icon_Tech,
		ShortDisplayedName = "$7304",
	},



--
-- Platform Research Items
--
	{ 
		Name =			"PlatformHeavyMissiles",
		RequiredResearch =	"",                                               -- <list of prerequisite research items>
		RequiredSubSystems =	"Research & PlatformProduction",                              -- <list of prerequisite sub systems>
		Cost = 			30,
		Time = 			105,
		DisplayedName =		"$7712",
		DisplayPriority =	240,                                                    -- <display priority (used to sort on screen)>,
		Description =		"$7713",
		TargetName = "Vgr_WeaponPlatform_missile",
		Icon = Icon_Tech,
		ShortDisplayedName = "$7305",
	},

	
--
-- Frigate Research Items
--
	
	{ 
		Name =			"FrigateAssault",
		RequiredResearch =	"",                                               -- <list of prerequisite research items>
		RequiredSubSystems =	"Research & FrigateProduction",                              -- <list of prerequisite sub systems>
		Cost = 			30,
		Time = 			45,
		DisplayedName =		"$7714",
		DisplayPriority =	30,                                                    -- <display priority (used to sort on screen)>,
		Description =		"$7715",
		TargetName = "Vgr_AssaultFrigate",
		Icon = Icon_Tech,
		ShortDisplayedName = "$7306",
	},
	
	--{ 
	--	Name =			"FrigateTransport",
	--	RequiredResearch =	"",                                               -- <list of prerequisite research items>
	--	RequiredSubSystems =	"Research & FrigateProduction",                              -- <list of prerequisite sub systems>
	--	Cost = 			30,
	--	Time = 			45,
--		DisplayedName =		"Frigate Transport",
--		DisplayPriority =	251,                                                    -- <display priority (used to sort on screen)>,
--		Description =		"",
--TargetName = "Vgr_TransportFrigate",
--	},

	{ 
		Name =			"FrigateInfiltrationTech",
		RequiredResearch =	"",                                               -- <list of prerequisite research items>
		RequiredSubSystems =	"Research & FrigateProduction",                              -- <list of prerequisite sub systems>
		Cost = 			30,
		Time = 			60,
		DisplayedName =		"$7716",
		DisplayPriority =	252,                                                    -- <display priority (used to sort on screen)>,
		Description =		"$7717",
		TargetName = "Vgr_InfiltratorFrigate",
		Icon = Icon_Tech,
		ShortDisplayedName = "$7307",
	},
	
--
-- Capital Ship Items
--

	{ 
		Name =			"BattlecruiserIonWeapons",
		RequiredResearch =	"",                                               -- <list of prerequisite research items>
		RequiredSubSystems =	"Research & CapShipProduction",                -- <list of prerequisite sub systems>
		Cost = 			30,
		Time = 			200,
		DisplayedName =		"$7718",
		DisplayPriority =	1,                                                    -- <display priority (used to sort on screen)>,
		Description =		"$7719",
		TargetName = "Vgr_BattleCruiser",
		Icon = Icon_Tech,
		ShortDisplayedName = "$7308",
	},
	
	{ 
		Name =			"DestroyerGuns",
		RequiredResearch =	"",                                               -- <list of prerequisite research items>
		RequiredSubSystems =	"Research & CapShipProduction",                -- <list of prerequisite sub systems>
		Cost = 			30,
		Time = 			140,
		DisplayedName =		"$7720",
		DisplayPriority =	261,                                                    -- <display priority (used to sort on screen)>,
		Description =		"$7721",
		TargetName = "Vgr_Destroyer",
		Icon = Icon_Tech,
		ShortDisplayedName = "$7309",
	},
	
	{ 
		Name =			"HyperspaceGateTech",
		RequiredResearch =	"",                                               -- <list of prerequisite research items>
		RequiredSubSystems =	"Research",                              -- <list of prerequisite sub systems>
		Cost = 			30,
		Time = 			50,
		DisplayedName =		"$7722",
		DisplayPriority =	262,                                                    -- <display priority (used to sort on screen)>,
		Description =		"$7723",
		TargetName = "Vgr_HyperSpace_Platform",
		Icon = Icon_Tech,
		ShortDisplayedName = "$7310",
	},

	--======================================================================
	-- Abilities
	--======================================================================

	{ 
		Name =			"RepairAbility",
		RequiredResearch =	"",
		RequiredSubSystems =	"Research",
		Cost = 			30,
		Time = 			30,
		DisplayedName =		"$7724",
		DisplayPriority =	280,
		Description =		"$7725",
		UpgradeType =		Ability,
		TargetType =		Ship,
		TargetName =		"Vgr_ResourceCollector",
	        UpgradeName =		"Repair",
				Icon = Icon_Ability,
		ShortDisplayedName = "$7311",
	},

	{ 
		Name =			"ScoutEMPAbility",
		RequiredResearch =	"",
		RequiredSubSystems =	"Research & FighterProduction",
		Cost = 			30,
		Time = 			70,
		DisplayedName =		"$7732",
		DisplayPriority =	281,
		Description =		"$7734",
		UpgradeType =		Ability,
		TargetType =		Ship,
		TargetName =		"Vgr_Scout",
	        UpgradeName =		"SpecialAttack",
		Icon = Icon_Ability,
		ShortDisplayedName = "$7314",
	},
	
	{ 
		Name =			"BomberImprovedBombs",
		RequiredResearch =	"PlasmaBombs",
		RequiredSubSystems =	"Research",
		Cost = 			30,
		Time = 			45,
		DisplayedName =		"$7730",
		DisplayPriority =	282,
		Description =		"$7731",
		UpgradeType =		Ability,
		TargetType =		Ship,
		TargetName =		"Vgr_Bomber",
	        UpgradeName =		"UseSpecialWeaponsInNormalAttack",
		Icon = Icon_Ability,
		ShortDisplayedName = "$7313",
	},

	--======================================================================
	-- Mothership Upgrades
	--======================================================================

	{
		Name =				"MothershipBUILDSPEEDUpgrade1",
		RequiredResearch =		"",
		RequiredSubSystems =		"Research",
		Cost = 				30,
		Time = 				60,
		DisplayedName =			"$7815",
		DisplayPriority =		45,
		Description =			"$7816",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Vgr_MotherShip",
	        UpgradeName =			"BUILDSPEED",
        	UpgradeValue =			1.3,
		Icon = Icon_Build,
		ShortDisplayedName = "$7240",
	},

	--======================================================================
	-- Capital Ship Upgrades
	--======================================================================

	{ 
		Name =				"SuperCapHealthUpgrade1",
		RequiredResearch =		"",                                                    -- <list of prerequisite research items>
		RequiredSubSystems =		"CapShipProduction & Research",                               -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					60,
		DisplayedName =			"$7743",
		DisplayPriority =			61,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7744",
		UpgradeType =			Modifier,
		TargetType =			Family,
		TargetName =			"Capital",
        	UpgradeName =			"MAXHEALTH",
        	UpgradeValue =			1.3,
		Icon = 				Icon_Health,
		ShortDisplayedName = 		"$7354",
	},

	{ 
		Name =				"SuperCapHealthUpgrade2",
		RequiredResearch =		"SuperCapHealthUpgrade1",                       -- <list of prerequisite research items>
		RequiredSubSystems =		"CapShipProduction & Research",                               -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					80,
		DisplayedName =			"$7745",
		DisplayPriority =			61,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7746",
		UpgradeType =			Modifier,
		TargetType =			Family,
		TargetName =			"Capital",
        	UpgradeName =			"MAXHEALTH",
        	UpgradeValue =			1.6,
		Icon = 				Icon_Health,
		ShortDisplayedName = 		"$7355",
	},

	{ 
		Name =				"SuperCapSpeedUpgrade1",
		RequiredResearch =		"",                                                    -- <list of prerequisite research items>
		RequiredSubSystems =		"CapShipProduction & Research",                               -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					60,
		DisplayedName =			"$7747",
		DisplayPriority =			64,                                                   -- <display priority (used to sort on screen)>,
		Description =			"$7748",
		UpgradeType =			Modifier,
		TargetType =			Family,
		TargetName =			"Capital",
        	UpgradeName =			"MAXSPEED",
        	UpgradeValue =			1.2,
		Icon = 				Icon_Speed,
		ShortDisplayedName = 		"$7354",
	},

	{ 
		Name =					"SuperCapSpeedUpgrade2",
		RequiredResearch =		"SuperCapSpeedUpgrade1",                        -- <list of prerequisite research items>
		RequiredSubSystems =	"CapShipProduction & Research",                               -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					80,
		DisplayedName =			"$7749",
		DisplayPriority =		64,                                                   -- <display priority (used to sort on screen)>,
		Description =			"$730",
		UpgradeType =			Modifier,
		TargetType =			Family,
		TargetName =			"Capital",
        UpgradeName =			"MAXSPEED",
        UpgradeValue =			1.35,
			Icon = Icon_Speed,
	ShortDisplayedName = "$7355",
	},

	{
		Name =				"CarrierBUILDSPEEDUpgrade1",
		RequiredResearch =		"",
		RequiredSubSystems =		"Research & CapShipProduction",
		Cost = 				30,
		Time = 				100,
		DisplayedName =			"$7820",
		DisplayPriority =			65,
		Description =			"$7821",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Vgr_Carrier",
	        UpgradeName =			"BUILDSPEED",
        	UpgradeValue =			1.3,
		Icon = Icon_Build,
		ShortDisplayedName = "$7240",
	},

	{
		Name =				"ShipyardBUILDSPEEDUpgrade1",
		RequiredResearch =		"",
		RequiredSubSystems =		"Research & CapShipProduction & Hyperspace",
		Cost = 				30,
		Time = 				95,
		DisplayedName =			"$7825",
		DisplayPriority =		65,
		Description =			"$7826",
		UpgradeType =			Modifier,
		TargetType =			Ship,
		TargetName =			"Vgr_ShipYard",
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
		Name =				"FighterspeedUpgrade1",
		RequiredResearch =		"",                                                    -- <list of prerequisite research items>
		RequiredSubSystems =		"FighterProduction & Research",                       -- <list of prerequisite sub systems>
		Cost = 				30,
		Time = 				50,
		DisplayedName =			"$7755",
		DisplayPriority =			81,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7756",
		UpgradeType =			Modifier,
		TargetType =			Family,
		TargetName =			"Fighter",
        	UpgradeName =			"MAXSPEED",
      		UpgradeValue =			1.25,
		Icon = 				Icon_Speed,
		ShortDisplayedName = 		"$7331",
	},

	{ 
		Name =				"FighterspeedUpgrade2",
		RequiredResearch =		"FighterspeedUpgrade1",                    -- <list of prerequisite research items>
		RequiredSubSystems =		"FighterProduction & Research",                        -- <list of prerequisite sub systems>
		Cost = 				30,
		Time = 				70,
		DisplayedName =			"$7757",
		DisplayPriority =			81,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7758",
		UpgradeType =			Modifier,
		TargetType =			Family,
		TargetName =			"Fighter",
      		UpgradeName =			"MAXSPEED",
        	UpgradeValue =			1.5,		
		Icon = 				Icon_Speed,
		ShortDisplayedName =		"$7332",
	},

	--======================================================================
	-- Corvette Upgrades
	--======================================================================

	{ 
		Name =				"CorvetteHealthUpgrade1",
		RequiredResearch =		"",                                         -- <list of prerequisite research items>
		RequiredSubSystems =		"CorvetteProduction & Research",                       -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					60,
		DisplayedName =			"$7759",
		DisplayPriority =			200,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7760",
		UpgradeType =			Modifier,
		TargetType =			Family,
		TargetName =			"Corvette",
        	UpgradeName =			"MAXHEALTH",
        	UpgradeValue =			1.3,
		Icon =				Icon_Health,
		ShortDisplayedName = 		"$7341",
	},

	{ 
		Name =				"CorvetteHealthUpgrade2",
		RequiredResearch =		"CorvetteHealthUpgrade1",     -- <list of prerequisite research items>
		RequiredSubSystems =		"CorvetteProduction & Research",                        -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					80,
		DisplayedName =			"$7761",
		DisplayPriority =			200,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7762",
		UpgradeType =			Modifier,
		TargetType =			Family,
		TargetName =			"Corvette",
       		UpgradeName =			"MAXHEALTH",
        	UpgradeValue =			1.6,
		Icon = 				Icon_Health,
		ShortDisplayedName = 		"$7342",
	},
	
	{ 
		Name =				"CorvetteSpeedUpgrade1",
		RequiredResearch =		"",                                         -- <list of prerequisite research items>
		RequiredSubSystems =		"CorvetteProduction & Research",                       -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					60,
		DisplayedName =			"$7763",
		DisplayPriority =			201,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7764",
		UpgradeType =			Modifier,
		TargetType =			Family,
		TargetName =			"Corvette",
        	UpgradeName =			"MAXSPEED",
        	UpgradeValue =			1.2,
		Icon = 				Icon_Speed,
		ShortDisplayedName = 		"$7341",
	},

	{ 
		Name =				"CorvetteSpeedUpgrade2",
		RequiredResearch =		"CorvetteSpeedUpgrade1",     -- <list of prerequisite research items>
		RequiredSubSystems =		"CorvetteProduction & Research",                        -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					80,
		DisplayedName =			"$7765",
		DisplayPriority =			201,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7766",
		UpgradeType =			Modifier,
		TargetType =			Family,
		TargetName =			"Corvette",
        	UpgradeName =			"MAXSPEED",
        	UpgradeValue =			1.4,
		Icon = 				Icon_Speed,
		ShortDisplayedName = 		"$7342",
	},

	--======================================================================
	-- Frigate Upgrades
	--======================================================================
	{ 
		Name =				"FrigateHealthUpgrade1",
		RequiredResearch =		"",                                         -- <list of prerequisite research items>
		RequiredSubSystems =		"FrigateProduction & Research",                       -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					80,
		DisplayedName =			"$7767",
		DisplayPriority =			306,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7768",
		UpgradeType =			Modifier,
		TargetType =			Family,
		TargetName =			"Frigate",
        	UpgradeName =			"MAXHEALTH",
        	UpgradeValue =			1.3,
		Icon = 				Icon_Health,
		ShortDisplayedName = 		"$7371",
	},

	{ 
		Name =				"FrigateHealthUpgrade2",
		RequiredResearch =		"FrigateHealthUpgrade1",     -- <list of prerequisite research items>
		RequiredSubSystems =		"FrigateProduction & Research",                        -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					100,
		DisplayedName =			"$7769",
		DisplayPriority =			306,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7770",
		UpgradeType =			Modifier,
		TargetType =			Family,
		TargetName =			"Frigate",
		UpgradeName =			"MAXHEALTH",
		UpgradeValue =			1.6,
		Icon = 				Icon_Health,
		ShortDisplayedName = 		"$7372",
	},
	{ 
		Name =				"FrigateSpeedUpgrade1",
		RequiredResearch =		"",                                         -- <list of prerequisite research items>
		RequiredSubSystems =		"FrigateProduction & Research",                       -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					70,
		DisplayedName =			"$7771",
		DisplayPriority =			307,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7772",
		UpgradeType =			Modifier,
		TargetType =			Family,
		TargetName =			"Frigate",
        	UpgradeName =			"MAXSPEED",
        	UpgradeValue =			1.2,
		Icon = 				Icon_Speed,
		ShortDisplayedName = 		"$7371",
	},

	{ 
		Name =				"SpeedUpgrade2",
		RequiredResearch =		"FrigateSpeedUpgrade1",     -- <list of prerequisite research items>
		RequiredSubSystems =		"FrigateProduction & Research",                        -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					100,
		DisplayedName =			"$7773",
		DisplayPriority =			307,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7774",
		UpgradeType =			Modifier,
		TargetType =			Family,
		TargetName =			"Frigate",
		UpgradeName =			"MAXSPEED",
		UpgradeValue =			1.35,
		Icon = 				Icon_Speed,
		ShortDisplayedName = 		"$7372",
	},


	--======================================================================
	-- Platform Upgrades
	--======================================================================

	{ 
		Name =					"PlatformHealthUpgrade1",
		RequiredResearch =		"",                                                    -- <list of prerequisite research items>
		RequiredSubSystems =	"PlatformProduction & Research",                       -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					50,
		DisplayedName =			"$7775",
		DisplayPriority =		30,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7776",
		UpgradeType =			Modifier,
		TargetType =			Family,
		TargetName =			"Platform",
		UpgradeName =			"MAXHEALTH",
		UpgradeValue =			1.5,
		Icon = Icon_Health,
		ShortDisplayedName = "$7361",
	},

	{ 
		Name =					"PlatformHealthUpgrade2",
		RequiredResearch =		"PlatformHealthUpgrade1",                    -- <list of prerequisite research items>
		RequiredSubSystems =	"PlatformProduction & Research",                        -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					70,
		DisplayedName =			"$7777",
		DisplayPriority =		30,                                                    -- <display priority (used to sort on screen)>,
		Description =			"$7778",
		UpgradeType =			Modifier,
		TargetType =			Family,
		TargetName =			"Platform",
		UpgradeName =			"MAXHEALTH",
		UpgradeValue =			2.0,
		Icon = Icon_Health,
		ShortDisplayedName = "$7362",
	},

	--======================================================================
	-- Utility Upgrades
	--======================================================================

	{ 
		Name =					"UtilityHealthUpgrade1",
		RequiredResearch =		"",                                                    -- <list of prerequisite research items>
		RequiredSubSystems =	"Research",                                                    -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					50,
		DisplayedName =			"$7779",
		DisplayPriority =		701,                                                   -- <display priority (used to sort on screen)>,
		Description =			"$7780",
		UpgradeType =			Modifier,
		TargetType =			Family,
		TargetName =			"Utility",
		UpgradeName =			"MAXHEALTH",
		UpgradeValue =			1.5,	
		Icon = Icon_Health,
		ShortDisplayedName = "$7351",
	},

	{ 
		Name =					"UtilityHealthUpgrade2",
		RequiredResearch =		"UtilityHealthUpgrade1",                     -- <list of prerequisite research items>
		RequiredSubSystems =	"Research",                                                    -- <list of prerequisite sub systems>
		Cost = 					30,
		Time = 					70,
		DisplayedName =			"$7781",
		DisplayPriority =		701,                                                   -- <display priority (used to sort on screen)>,
		Description =			"$7782",
		UpgradeType =			Modifier,
		TargetType =			Family,
		TargetName =			"Utility",
		UpgradeName =			"MAXHEALTH",
		UpgradeValue =			2,
		Icon = Icon_Health,
		ShortDisplayedName = "$7352",
	},

	--======================================================================
	-- SINGLE PLAYER GAME SPECIFIC TECH
	--======================================================================


	{ 
		Name =			"WeakVgrHeavyMissiles",
		RequiredResearch =	"RESEARCH HACK",
		RequiredSubSystems =	"",
		Cost = 			0,
		Time = 			0,
		DisplayedName =		"Reduces damage on Vgr Heavy Missiles (SP Game only!)",
		DisplayPriority =	1205,
		Description =		"",
		UpgradeType =		Modifier,
		TargetType =		Ship,
		TargetName =		"Vgr_HeavyMissileFrigate",
	        UpgradeName =		"WeaponDamage",
        	UpgradeValue =		0.25,
	},

	{
		Name =			"HyperspaceRecoveryTimeUpgradeSPGAME",
		RequiredResearch =	"RESEARCH HACK",
		RequiredSubSystems =	"",
		Cost = 			0,
		Time = 			0,
		DisplayedName =		"Hyperspace Recovery - SP GAME ONLY",
		DisplayPriority =	1206,
		Description =		"",
		UpgradeType =		Modifier,
		TargetType =		AllShips,
	        UpgradeName =		"HyperspaceRecoveryTime",
	        UpgradeValue =		0.01,
	},


	{
		Name =			"VaygrCarrierHealthRegenDowngrade",
		RequiredResearch =	"RESEARCH HACK",                        -- <list of prerequisite research items>
		RequiredSubSystems =	"",                               -- <list of prerequisite sub systems>
		Cost = 			0,
		Time = 			0,
		DisplayedName =		"Vaygr Carrier Health Regen Rate Downgrade",
		DisplayPriority =	1207,                                                   -- <display priority (used to sort on screen)>,
		Description =		"",
		UpgradeType =		Modifier,
		TargetType =		Ship,
		TargetName =		"Vgr_Carrier",
	        UpgradeName =		"HealthRegenerationRate",
	        UpgradeValue =		0.1,
	},
	
	{
		Name =			"HyperspaceTransitionTimeUpgradeSPGAME",
		RequiredResearch =	"RESEARCH HACK",
		RequiredSubSystems =	"",
		Cost = 			0,
		Time = 			0,
		DisplayedName =		"Hyperspace Transition - SP GAME ONLY",
		DisplayPriority =	1206,
		Description =		"",
		UpgradeType =		Modifier,
		TargetType =		AllShips,
	        UpgradeName =		"HyperspaceTime",
	        UpgradeValue =		0.1,
	},

	{ 
		Name =			"SuperCapHealthUpgradeSPGAME",
		RequiredResearch =	"RESEARCH HACK",                       -- <list of prerequisite research items>
		RequiredSubSystems =	"",                               -- <list of prerequisite sub systems>
		Cost = 			0,
		Time = 			0,
		DisplayedName =		"Vgr Super Cap Health Upgrade",
		DisplayPriority =	1208,                                                    -- <display priority (used to sort on screen)>,
		Description =		"Vaygr Carrier Health upgrade - SP GAME ONLY",
		UpgradeType =		Modifier,
		TargetType =		Family,
		TargetName =		"Capital",
	        UpgradeName =		"MAXHEALTH",
	        UpgradeValue =		3.5,
	},

	{ 
		Name =			"ShipyardSpeedDowngradeSPGAME",
		RequiredResearch =	"RESEARCH HACK",                       -- <list of prerequisite research items>
		RequiredSubSystems =	"",                               -- <list of prerequisite sub systems>
		Cost = 			0,
		Time = 			0,
		DisplayedName =		"Vaygr Shipyard Speed downgrade",
		DisplayPriority =	1208,                                                    -- <display priority (used to sort on screen)>,
		Description =		"Vaygr Shipyard Speed downgrade - SP GAME ONLY",
		UpgradeType =		Modifier,
		TargetType =		Ship,
		TargetName =		"Vgr_ShipYard",
	        UpgradeName =		"MAXSPEED",
	        UpgradeValue =		0.0001,
	},

	{ 
		Name =			"VaygrFrigateHealthUpgradeSPGAME",
		RequiredResearch =	"RESEARCH HACK",                       -- <list of prerequisite research items>
		RequiredSubSystems =	"",                               -- <list of prerequisite sub systems>
		Cost = 			0,
		Time = 			0,
		DisplayedName =		"Vgr Frigate Health Upgrade",
		DisplayPriority =	1208,                                                    -- <display priority (used to sort on screen)>,
		Description =		"Vaygr Frigate Health upgrade - SP GAME ONLY",
		UpgradeType =		Modifier,
		TargetType =		Family,
		TargetName =		"Frigate",
	        UpgradeName =		"MAXHEALTH",
	        UpgradeValue =		3.0,
	},

	{
		Name =			"VaygrFrigateHealthRegenDowngradeSPGAME",
		RequiredResearch =	"RESEARCH HACK",                        -- <list of prerequisite research items>
		RequiredSubSystems =	"",                               -- <list of prerequisite sub systems>
		Cost = 			0,
		Time = 			0,
		DisplayedName =		"Vaygr Frigate Health Regen Rate Downgrade",
		DisplayPriority =	1207,                                                   -- <display priority (used to sort on screen)>,
		Description =		"",
		UpgradeType =		Modifier,
		TargetType =		Family,
		TargetName =		"Frigate",
	        UpgradeName =		"HealthRegenerationRate",
	        UpgradeValue =		0.1,
	},

	{ 
		Name =			"CorvetteHealthUpgradeSPGAME",
		RequiredResearch =	"RESEARCH HACK",                       -- <list of prerequisite research items>
		RequiredSubSystems =	"",                               -- <list of prerequisite sub systems>
		Cost = 			0,
		Time = 			0,
		DisplayedName =		"Vgr Corvette Health Upgrade",
		DisplayPriority =	1208,                                                    -- <display priority (used to sort on screen)>,
		Description =		"Vaygr Corvette Health upgrade - SP GAME ONLY",
		UpgradeType =		Modifier,
		TargetType =		Family,
		TargetName =		"Corvette",
	        UpgradeName =		"MAXHEALTH",
	        UpgradeValue =		3.5,
	},

	{ 
		Name =			"ExtraStrongVgrHeavyMissilesSPGAME",
		RequiredResearch =	"RESEARCH HACK",
		RequiredSubSystems =	"",
		Cost = 			0,
		Time = 			0,
		DisplayedName =		"Increases damage on Vgr Heavy Missiles (SP Game only!)",
		DisplayPriority =	1205,
		Description =		"",
		UpgradeType =		Modifier,
		TargetType =		Ship,
		TargetName =		"Vgr_HeavyMissileFrigate",
	        UpgradeName =		"WeaponDamage",
        	UpgradeValue =		1.35,
	},
	
	{ 
		Name =			"VaygrCaptureHack",
		RequiredResearch =	"RESEARCH HACK",
		RequiredSubSystems =	"",
		Cost = 			0,
		Time = 			0,
		DisplayedName =		"Increases Capture Speed (SP Game only!)",
		DisplayPriority =	1205,
		Description =		"",
		UpgradeType =		Modifier,
		TargetType =		Ship,
		TargetName =		"Vgr_InfiltratorFrigate",
	        UpgradeName =		"Capture",
        	UpgradeValue =		1.35,
	},
	{ 
		Name =			"VaygrReduceCaptureHack",
		RequiredResearch =	"RESEARCH HACK",
		RequiredSubSystems =	"",
		Cost = 			0,
		Time = 			0,
		DisplayedName =		"Increases Capture Speed (SP Game only!)",
		DisplayPriority =	1205,
		Description =		"",
		UpgradeType =		Modifier,
		TargetType =		Ship,
		TargetName =		"Vgr_InfiltratorFrigate",
	        UpgradeName =		"Capture",
        	UpgradeValue =		.75,
	},
	{ 
		Name =			"VaygrRadiationImmunityHack",
		RequiredResearch =	"RESEARCH HACK",
		RequiredSubSystems =	"",
		Cost = 			0,
		Time = 			0,
		DisplayedName =		"Makes Vaygr Immune to Radiation (SP Game only!)",
		DisplayPriority =	1205,
		Description =		"",
		UpgradeType =		Modifier,
		TargetType =		AllShips,
	        UpgradeName =		"NebulaSensitivity",
        	UpgradeValue =		0,
	},
	{
		Name =			"VaygrCarrierHealthUpgrade",
		RequiredResearch =	"RESEARCH HACK",                        -- <list of prerequisite research items>
		RequiredSubSystems =	"",                               -- <list of prerequisite sub systems>
		Cost = 			0,
		Time = 			0,
		DisplayedName =		"Vaygr Carrier Health Upgrade",
		DisplayPriority =	1208,                                                   -- <display priority (used to sort on screen)>,
		Description =		"",
		UpgradeType =		Modifier,
		TargetType =		Ship,
		TargetName =		"Vgr_Carrier",
	        UpgradeName =		"MAXHEALTH",
	        UpgradeValue =		3,
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
		TargetName = "vgr_resourcecollector",
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
		TargetName = "vgr_resourcecollector",
		UpgradeName =		"ResourceCollectionRate",
		UpgradeValue =		1.08,
	},			
}