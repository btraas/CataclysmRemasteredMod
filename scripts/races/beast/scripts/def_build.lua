
--Type => SubSystem
--ThingToBuild => name of subsystem to build
--RequiredResearch => global research dependencies
--RequiredShipSubSystems => subsystems dependencies for local to the ship
--RequiredFleetSubSystems => Fleet wide subsystem dependencies
--DisplayPriority => Order in UI lists
--DisplayedName => Localized name for UI
--Description => Description for UI


Ship = 0
SubSystem = 1

build = 
{
	-- BEAST
	----------------------------------------------------
	
	{
		Type=SubSystem,
		ThingToBuild="Bst_CS_Module_Research",
		RequiredResearch="",
		RequiredShipSubSystems="",
		DisplayPriority=0,
		DisplayedName="$7010",
		Description="$7011"
	},
	{
		Type=SubSystem,
		ThingToBuild="Bst_CS_Module_AdvancedResearch",
		RequiredResearch="",
		RequiredFleetSubSystems="Research",
		DisplayPriority=10,
		DisplayedName="$7012",
		Description="$7013"
	},
	{
		Type=SubSystem,
		ThingToBuild="Bst_CS_Module_Hyperspace",
		RequiredResearch="",
		RequiredFleetSubSystems="Research",
		DisplayPriority=30,
		DisplayedName="$7014",
		Description="$7015"
	},
	{
		Type=SubSystem,
		ThingToBuild="Bst_CS_Module_HyperspaceInhibitor",
		RequiredResearch="",
		RequiredFleetSubSystems="Research",
		DisplayPriority=40,
		DisplayedName="$7016",
		Description="$7017"
	},
	{
		Type=SubSystem,
		ThingToBuild="Bst_CS_Module_FireControl",
		RequiredResearch="",
		RequiredFleetSubSystems="Research",
		DisplayPriority=60,
		DisplayedName="$7020",
		Description="$7021"
	},
	{
		Type=SubSystem,
		ThingToBuild="Bst_CS_Production_Fighter",
		RequiredResearch="",
		RequiredShipSubSystems="",
		DisplayPriority=0,
		DisplayedName="$7000",
		Description="$7001"
	},
	{
		Type=SubSystem,
		ThingToBuild="Bst_CS_Production_Corvette",
		RequiredResearch="",
		RequiredFleetSubSystems="Research",
		DisplayPriority=0,
		DisplayedName="$7002",
		Description="$7003"
	},
	{
		Type=SubSystem,
		ThingToBuild="Bst_CS_Production_Frigate",
		RequiredResearch="",
		RequiredFleetSubSystems="Research",
		DisplayPriority=0,
		DisplayedName="$7004",
		Description="$7005"
	},
	{
		Type=SubSystem,
		ThingToBuild="Bst_CS_Production_CapShip",
		RequiredResearch="",
		RequiredFleetSubSystems="",
		DisplayPriority=0,
		DisplayedName="$7006",
		Description="$7007"
	},
	{
		Type = Ship,
		ThingToBuild = "Bst_Worker",
		RequiredResearch = "",
		RequiredShipSubSystems = "",
		DisplayPriority = 12,
		DisplayedName = "Worker",
		Description = "$7067"
	},
	{
		Type = Ship,
		ThingToBuild = "Bst_Processor",
		RequiredResearch = "",
		RequiredShipSubSystems = "",
		DisplayPriority = 13,
		DisplayedName = "Ore Processor",
		Description = "<b>Description:</b> Massive resource drop point with four docking ports.  Its four frigate strength flak turrets are make the ship capable to defend itself during limited engagements.  \n\n<b>Strong Vs:</b> Fighters & Corvettes \n\n<b>Weak Vs:</b> Frigates & Capital Ships \n\n<b>Prerequisites:</b> None",
	},
	{
		Type = Ship,
		ThingToBuild = "Bst_Clee_San",
		RequiredResearch = "",
		RequiredShipSubSystems = "",
		DisplayPriority = 14,
		DisplayedName = "Clee-San Research ship",
		Description = "<b>Description:</b> A research station capable of researching new technology.",
	},
	{
		Type=Ship,
		ThingToBuild="Bst_Scout",
		RequiredShipSubSystems="",
		DisplayPriority=20,
		DisplayedName="Recon",
		Description="$7131"
	},
	{
		Type=Ship,
		ThingToBuild="Bst_Fighter",
		RequiredResearch="BSTFIGHTERDRIVE",
		RequiredShipSubSystems = "",
		DisplayPriority=22,
		DisplayedName="Turanic Fighter",
		Description="Requires Fighter Drive and Fighter Chassis in order to build."
	},
	{
		Type = Ship,
		ThingToBuild = "Bst_Acolyte",
		RequiredResearch = "BSTFighterChassis",
		RequiredShipSubSystems = "",
		DisplayPriority = 24,
		DisplayedName = "Acolyte",
		Description = "<b>Description:</b> Subverted vessel. It is slower and better armored than the source vessel, with a harder-hitting missile armament.\n\n<b>Strong Vs:</b> Fighters & Corvettes \n\n<b>Weak Vs:</b> Flak Frigates, Multibeam Frigates, Battlecruisers \n\n<b>Prerequisites:</b> Fighter Drive & Fighter Chassis",
	},
	--{
	--	Type = Ship,
	--	ThingToBuild = "Bst_AcolyteE",
	--	RequiredResearch = "BSTFighterChassis & BstEnergyCannonTechnology",
	--	RequiredShipSubSystems = "",
	--	DisplayPriority = 25,
	--	DisplayedName = "Acolyte E Variant",
	--	Description = "<b>Description:</b> Interceptor comparable to contemporary versions, has the added ability of firing two high yeild missiles, must reload via docking.  \n\n<b>Strong Vs:</b> Fighters & Corvettes \n\n<b>Weak Vs:</b> Flak Frigates, Multibeam Frigates, Battlecruisers \n\n<b>Prerequisites:</b> Fighter Production",
	--},
	{
		Type=Ship,
		ThingToBuild="Bst_AttackBomber",
		RequiredResearch="BSTPlasmaBombLauncher",
		RequiredShipSubSystems = "",
		DisplayPriority=26,
		DisplayedName="$7134",
		Description="Subverted vessel. Like most Beast-infected ships, this version is slower, tougher, self-repairs over time, and is more expensive to build than the original. Requires Fighter Chassis & Plasma Launcher Research"
	},
	{
		Type=Ship,
		ThingToBuild="Bst_CloakedFighter",
		RequiredResearch="BSTCloakedFighter",
		RequiredShipSubSystems = "",
		DisplayPriority=28,
		DisplayedName="Cloaked Fighter",
		Description="Subverted vessel. Like most Beast-infected ships, this version is slower, tougher, self-repairs over time, and is more expensive to build than the original. Requires Fighter Chassis & Cloaked Fighter Research"
	},
	{
		Type = Ship,
		ThingToBuild = "Bst_ACV",
		RequiredResearch = "BstCorvetteChassis",
		RequiredShipSubSystems = "",
		DisplayPriority = 20,
		DisplayedName = "ACV",
		Description = "<b>Description:</b> Subverted Somtaaw ACV equipped with 4 rapid kinetic guns and EMP ability \n\n<b>Strong Vs:</b> Corvettes \n\n<b>Weak Vs:</b> Flak Frigates, Multibeam Frigates, Battlecruisers \n\n<b>Prerequisites:</b> Requires Corvette Drive & Corvette Chassis",
	},
	--{
	--	Type = Ship,
	--	ThingToBuild = "Bst_ACVE",
	--	RequiredResearch = "BstCorvetteChassis & BstEnergyCannonTechnology",
	--	RequiredShipSubSystems = "",
	--	DisplayPriority = 21,
	--	DisplayedName = "ACV",
	--	Description = "<b>Description:</b> Subverted Somtaaw ACV equipped with 4 rapid kinetic guns and EMP ability \n\n<b>Strong Vs:</b> Corvettes \n\n<b>Weak Vs:</b> Flak Frigates, Multibeam Frigates, Battlecruisers \n\n<b>Prerequisites:</b> Corvette Production",
	--},
	{
		Type=Ship,
		ThingToBuild="Bst_HeavyCorvette",
		RequiredResearch="BSTHeavyCorvetteUpgrade",
		RequiredShipSubSystems = "",
		DisplayPriority=30,
		DisplayedName="Heavy Corvette",
		Description = "<b>Description:</b> Subverted Kushan Heavy Corvette armed with 2 Kinetic turrets capable of handling corvettes and has burst attack ability to deal with fighters\n\n<b>Strong Vs:</b> Corvettes \n\n<b>Weak Vs:</b> Flak Frigates, Multibeam Frigates, Battlecruisers \n\n<b>Prerequisites:</b> Corvette Chassis & Heavy Corvette Upgrade",
	},
	{
		Type=Ship,
		ThingToBuild="Bst_MultigunCorvette",
		RequiredResearch="BSTFastTrackingTurrets",
		RequiredShipSubSystems = "",
		DisplayPriority=40,
		DisplayedName="Multigun Corvette",
		Description = "<b>Description:</b> Subverted Taiidan Multigun Corvette armed wtih 6 guns capable of destroying fighters\n\n<b>Strong Vs:</b> Fighters \n\n<b>Weak Vs:</b> Anti Corvettes, Torpedo Frigates, MBFs\n\n<b>Prerequisites:</b> Corvette Chassis & Fast Tracking Turret Research",
	},
	{
		Type = Ship,
		ThingToBuild = "Bst_missilecorvette",
		RequiredResearch = "BSTCorvetteDrive",
		RequiredShipSubSystems = "",
		DisplayPriority = 50,
		DisplayedName = "Missile Corvette",
		Description = "<b>Description:</b> Subverted Turanic missile corvette. \n\n<b>Strong Vs:</b> Corvettes \n\n<b>Prerequisites:</b> Corvette Drive",
	},
	{
		Type = Ship,
		ThingToBuild = "Bst_CruiseMissile",
		RequiredResearch = "BSTCorvetteDrive",
		RequiredShipSubSystems = "",
		DisplayPriority = 51,
		DisplayedName = "Cruise Missile",
		Description = "<b>Description:</b> Missile capable of subverting parts. \n\n<b>Strong Vs:</b>Frigates and Capitals \n\n<b>Prerequisites:</b> Corvette Drive",
	},
	{
		Type = Ship,
		ThingToBuild = "Bst_ionarrayfrigate",
		RequiredResearch = "BSTIonCannons",
		RequiredShipSubSystems = "",
		DisplayPriority = 53,
		DisplayedName = "Ion Array Frigate",
		Description = "<b>Description:</b> Subverted derelict ship of the Turanic arsenal featuring a Ion Array Cannon as it's only weapon. \n\n<b>Strong Vs:</b> Undecided \n\n<b>Prerequisites:</b> Capital Ship Chassis & Ion Cannon technology",
	},
	{
		Type = Ship,
		ThingToBuild = "Bst_fieldfrigate",
		RequiredResearch = "BstDefenseFieldFrigateShield",
		RequiredShipSubSystems = "",
		DisplayPriority = 54,
		DisplayedName = "Defense Field Generator Frigate",
		Description = "<b>Description:</b> Subverted Tiifal provides a defense field to cover a small fleet, based on the defense-fighters technology. The ship itself is unarmed.  \n\n<b>Strong Vs:</b> None \n\n<b>Weak Vs:</b> Most \n\n<b>Prerequisites:</b> Capital Ship Chassis & Defense Field technology",
	},
	{
		Type = Ship,
		ThingToBuild = "Bst_multibeamfrigate",
		RequiredResearch = "BSTIonCannons",
		RequiredShipSubSystems = "",
		DisplayPriority = 55,
		DisplayedName = "Multibeam Frigate",
		Description = "Subverted Somtaaw Anti Strikecraft Frigate which Requires Capital Ship Chassis & Ion Cannon Technology",
	},
	{
		Type = Ship,
		ThingToBuild = "bst_tdn_standardfrigate",
		RequiredResearch = "BSTCapitalShipChassis",
		RequiredShipSubSystems = "",
		DisplayPriority = 56,
		DisplayedName = "Taiidan Assault Frigate",
		Description = "<b>Description:</b> Subverted Taiidan Assault frigate with 4 anti fighter guns and 2 forward facing anti corvette plasma launchers, can also deal with frigates and capitals in numbers.  \n\n<b>Strong Vs:</b> Frigates, Capital ships \n\n<b>Weak Vs:</b> Bombers, Destroyers & Battlecruisers \n\n<b>Prerequisites:</b> Capital Ship drive & Capital Ship Chassis",
	},
	{
		Type = Ship,
		ThingToBuild = "bst_tdn_advancesupportfrigate",
		RequiredResearch = "BstCapitalShipDrive",
		RequiredShipSubSystems = "",
		DisplayPriority = 57,
		DisplayedName = "Taiidan Support Frigate",
		Description = "<b>Description:</b> Subverted Support frigate designed to speed up repair speeds.  \n\n<b>Strong Vs:</b> \n\n<b>Weak Vs:</b> Bombers, Destroyers & Battlecruisers \n\n<b>Prerequisites:</b> Capital Ship Drive",
	},
	{
		Type = Ship,
		ThingToBuild = "Bst_ioncannonfrigate",
		RequiredResearch = "BSTIonCannons",
		RequiredShipSubSystems = "",
		DisplayPriority = 58,
		DisplayedName = "Taiidan Ion Frigate",
		Description = "<b>Description:</b> Subverted Sajuuk-Cor class ion frigate with one single forward-facing ion beam. A lethal weapon against capital ships.  \n\n<b>Strong Vs:</b> Frigates, Capital ships \n\n<b>Weak Vs:</b> Bombers, Destroyers & Battlecruisers \n\n<b>Prerequisites:</b> Capital Ship Chassis & Ion Cannon Technology",
	},
	{
		Type = Ship,
		ThingToBuild = "Bst_ionarrayfrigate",
		RequiredResearch = "BSTIonCannons",
		RequiredShipSubSystems = "",
		DisplayPriority = 59,
		DisplayedName = "Turanic Ion Frigate",
		Description = "<b>Description:</b> Subverted FireLance class ion frigate with one single forward-facing ion beam. A lethal weapon against capital ships.  \n\n<b>Strong Vs:</b> Frigates, Capital ships \n\n<b>Weak Vs:</b> Bombers, Destroyers & Battlecruisers \n\n<b>Prerequisites:</b> Capital Ship Chassis & Ion Cannon technology",
	},
--	{
--		Type=Ship,
--		ThingToBuild="Bst_NomadMoon",
--		RequiredResearch="BSTNomadControl",
--		RequiredShipSubSystems="",
--		DisplayPriority=110,
--		DisplayedName="Nomad Moon",
--		Description="<b>Description:</b> Subverted Republic Taiidan Battle Station armed with powerful rapid fire ion beams.  \n\n<b>Strong Vs:</b> None \n\n<b>Prerequisites:</b> Nomad Control Research"
--	},
--	{
--		Type=Ship,
--		ThingToBuild="bst_prt_mothership",
--		RequiredResearch="BSThyperspaceTech",
--		RequiredShipSubSystems="",
--		DisplayPriority=111,
--		DisplayedName="Shipyard",
--		Description="<b>Description:</b> Subverted Turanic Mothership that serves as a shipyard for the beast team and can build all ships in the beast fleet.  \n\n<b>Strong Vs:</b> None \n\n<b>Prerequisites:</b> Capital Ship Drive & HyperSpace Tech"
--	},
	{
		Type = Ship,
		ThingToBuild = "Bst_Carrier",
		RequiredResearch = "BstSuperHeavyChassis",
		RequiredShipSubSystems = "",
		DisplayPriority = 112,
		DisplayedName = "Taiidan Carrier",
		Description = "<b>Description:</b> Subverted Taiidan Saarkin-Cho Carrier. Features a sheer amount of fighter-class and corvette-class docking bays and is capable of reinforcing the fleet with the Phased Disassembler Array of its integrated shipyard.  \n\n<b>Strong Vs:</b> Fighters \n\n<b>Weak Vs:</b> All \n\n<b>Prerequisites:</b> Super Capital Ship Drive & Super heavy Chassis",
	},
--	{
--		Type = Ship,
--		ThingToBuild = "Bst_carrier",
--		RequiredResearch = "BstSuperHeavyChassis",
--		RequiredShipSubSystems = "",
--		DisplayPriority = 115,
--		DisplayedName = "Kushan Carrier",
--		Description = "<b>Description:</b> Subverted Kushan Cal-Shto class carrier, easily defend themselves against smaller strike forces, a preferable choice for your forward resourcing operations.  \n\n<b>Strong Vs:</b> Strike Craft \n\n<b>Prerequisites:</b> Super Capital Ship Drive & Super heavy Chassis",
--	},	
	{
		Type = Ship,
		ThingToBuild = "Bst_Smt_destroyer",
		RequiredResearch = "BstSuperCapitalShipDrive & BSTIonCannons",
		RequiredShipSubSystems = "",
		DisplayPriority = 117,
		DisplayedName = "Somtaaw Destroyer",
		Description = "<b>Description:</b> Subverted Somtaaw Destroyer armed with standard flak turrets, ion cannons and a missile launcher.  \n\n<b>Strong Vs:</b> Most \n\n<b>Weak Vs:</b> Battlecruisers \n\n<b>Prerequisites:</b> SuperCapitalShipDrive & IonCannons",
	},	
	{
		Type = Ship,
		ThingToBuild = "Bst_MissileDestroyer",
		RequiredResearch = "BstGuidedMissiles",
		RequiredShipSubSystems = "",
		DisplayPriority = 118,
		DisplayedName = "Kushan Missile Destroyer",
		Description = "<b>Description:</b> Subverted Kushan Missile Destroyer equipped with rapid fire missiles also has missile volley ability for use against Frigates and up. \n\n<b>Strong Vs:</b> Most \n\n<b>Weak Vs:</b> Battlecruisers & Attack Bombers \n\n<b>Prerequisites:</b> SuperCapitalShipDrive & Guided Missiles",	
	},
	{		
	 	Type = Ship,
		ThingToBuild = "Bst_heavycruiser",
		RequiredResearch = "BSTHeavyGuns",
		RequiredShipSubSystems = "",
		DisplayPriority = 120,
		DisplayedName = "Taiidan Heavy Cruiser",
		Description = "<b>Description:</b> Subverted Qwaar-Jet-class Heavy Cruiser. Standard equipment includes two multi-phased ion cannons, six anti-fighter flak turrets and the most armor in the fleet.  \n\n<b>Strong Vs:</b> Most \n\n<b>Weak Vs:</b> Bombers \n\n<b>Prerequisites:</b> Super Heavy Chassis & Heavy Guns",
	},
}

