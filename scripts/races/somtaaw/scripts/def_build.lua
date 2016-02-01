
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
	-- SOMTAAW
	----------------------------------------------------
	
	-- Modules
	{
		Type = SubSystem,
		ThingToBuild = "Ksh_Sec_C_Module_Research",
		RequiredResearch = "",
		RequiredShipSubSystems = "",
		DisplayPriority = 1,
		DisplayedName = "$7010",
		Description = "$7011",
	},
	{
		Type = SubSystem,
		ThingToBuild = "Ksh_Sec_C_Module_AdvancedResearch",
		RequiredResearch = "",
		RequiredFleetSubSystems = "Research",
		DisplayPriority = 2,
		DisplayedName = "$7012",
		Description = "$7013",
	},
	{
		Type = SubSystem,
		ThingToBuild = "Ksh_Sec_C_Module_Hyperspace",
		RequiredResearch = "",
		RequiredFleetSubSystems = "Research",
		DisplayPriority = 3,
		DisplayedName = "$7014",
		Description = "$7015",
	},
	{
		Type = SubSystem,
		ThingToBuild = "Ksh_Sec_C_Module_GravGenerator",
		RequiredResearch = "",
		RequiredFleetSubSystems = "Research",
		DisplayPriority = 4,
		DisplayedName = "Gravity Well Generator",
		Description = "Hyperspace inhibitor module",
	},
	{
		Type = SubSystem,
		ThingToBuild = "Ksh_Sec_C_Module_CloakGenerator",
		RequiredResearch = "",
		RequiredFleetSubSystems = "Research",
		DisplayPriority = 5,
		DisplayedName = "$7018",
		Description = "$7019",
	},
	{
		Type = SubSystem,
		ThingToBuild = "Ksh_Sec_C_Module_PlatformControl",
		RequiredResearch = "",
		RequiredShipSubSystems = "",
		DisplayPriority = 7,
		DisplayedName = "$7008",
		Description = "$7009",
	},
	{
		Type = SubSystem,
		ThingToBuild = "Ksh_Sec_C_Module_FireControl",
		RequiredResearch = "",
		RequiredFleetSubSystems = "AdvancedResearch",
		DisplayPriority = 9,
		DisplayedName = "$7020",
		Description = "$7021",
	},
	{
		Type = SubSystem,
		ThingToBuild = "Ksh_Sec_C_Production_Fighter",
		RequiredResearch = "",
		RequiredShipSubSystems = "",
		DisplayPriority = 0,
		DisplayedName = "$7000",
		Description = "$7001",
	},
	{
		Type = SubSystem,
		ThingToBuild = "Ksh_Sec_C_Production_Corvette",
		RequiredResearch = "",
		RequiredFleetSubSystems = "Research",
		DisplayPriority = 0,
		DisplayedName = "$7002",
		Description = "$7003",
  	},
	{
		Type = SubSystem,
		ThingToBuild = "Ksh_Sec_C_Production_Frigate",
		RequiredResearch = "",
		RequiredFleetSubSystems = "Research",
		DisplayPriority = 0,
		DisplayedName = "$7004",
		Description = "$7005",
	},
	{
		Type = SubSystem,
		ThingToBuild = "Ksh_Sec_MS_Module_Research",
		RequiredResearch = "",
		RequiredShipSubSystems = "",
		DisplayPriority = 1,
		DisplayedName = "Engineering Module",
		Description = "$7011",
	},
	{
		Type = SubSystem,
		ThingToBuild = "Ksh_Sec_MS_Module_AdvancedResearch",
		RequiredResearch = "",
		RequiredFleetSubSystems = "Research",
		DisplayPriority = 2,
		DisplayedName = "Advanced Engineering Module",
		Description = "$7013",
	},
	{
		Type = SubSystem,
		ThingToBuild = "Ksh_Sec_MS_Module_ArmorResearch",
		RequiredResearch = "",
		RequiredFleetSubSystems = "Research",
		DisplayPriority = 3,
		DisplayedName = "Armor Module",
		Description = "$7013",
	},
	{
		Type = SubSystem,
		ThingToBuild = "Ksh_Sec_MS_Module_WeaponsResearch",
		RequiredResearch = "",
		RequiredFleetSubSystems = "Research",
		DisplayPriority = 4,
		DisplayedName = "Weapons Module",
		Description = "$7013",
	},
	{
		Type = SubSystem,
		ThingToBuild = "Ksh_Sec_MS_Module_Hyperspace",
		RequiredResearch = "",
		RequiredFleetSubSystems = "Research",
		DisplayPriority = 5,
		DisplayedName = "$7014",
		Description = "$7015",
	},
	{
		Type = SubSystem,
		ThingToBuild = "ksh_sec_ms_gravgenerator",
		RequiredResearch = "",
		RequiredFleetSubSystems = "Research",
		DisplayPriority = 6,
		DisplayedName = "Gravity Well Generator",
		Description = "Hyperspace inhibitor module",
	},
	{
		Type = SubSystem,
		ThingToBuild = "ksh_sec_ms_gravgenerator1",
		RequiredResearch = "",
		RequiredFleetSubSystems = "Research",
		DisplayPriority = 6,
		DisplayedName = "Gravity Well Generator",
		Description = "Hyperspace inhibitor module",
	},
	{
		Type = SubSystem,
		ThingToBuild = "Ksh_Sec_MS_Module_CloakGenerator",
		RequiredResearch = "",
		RequiredFleetSubSystems = "Research",
		DisplayPriority = 7,
		DisplayedName = "$7018",
		Description = "$7019",
	},
	{
		Type = SubSystem,
		ThingToBuild = "Ksh_Sec_MS_Module_PlatformControl",
		RequiredResearch = "",
		RequiredShipSubSystems = "",
		DisplayPriority = 8,
		DisplayedName = "$7008",
		Description = "$7009",
	},
	{
		Type = SubSystem,
		ThingToBuild = "Ksh_Sec_Ms_Module_FireControl",
		RequiredResearch = "",
		RequiredFleetSubSystems = "AdvancedResearch",
		DisplayPriority = 9,
		DisplayedName = "$7020",
		Description = "$7021",
	},
	{
		Type=SubSystem,
		ThingToBuild="Smt_MS_Production_CapShip",
		RequiredResearch="",
		RequiredFleetSubSystems="FrigateProduction",
		DisplayPriority=0,
		DisplayedName="$7006",
		Description="$7007"
	},
	{
		Type=SubSystem,
		ThingToBuild="Smt_MS_Production_CapShip1",
		RequiredResearch="",
		RequiredFleetSubSystems="FrigateProduction",
		DisplayPriority=0,
		DisplayedName="$7006",
		Description="$7007"
	},	
	{
		Type = SubSystem,
		ThingToBuild = "Ksh_Sec_MS_Production_Micro",
		RequiredResearch = "",
		RequiredFleetSubSystems = "AdvancedResearch",
		DisplayPriority = 1,
		DisplayedName = "Microship Facility",
		Description = "<b>Description:</b> Enables Somtaaw Microship Production.  \n\n<b>Prerequisites:</b> Advanced Research Module",
	},
	{
		Type = SubSystem,
		ThingToBuild = "Ksh_sec_ms_Production_Frigate",
		RequiredResearch = "",
		RequiredFleetSubSystems = "Research",
		DisplayPriority = 0,
		DisplayedName = "$7004",
		Description = "$7005",
	},
	{
		Type = SubSystem,
		ThingToBuild = "Ksh_Sec_MS_Production_Corvette",
		RequiredResearch = "",
		RequiredFleetSubSystems = "Research",
		DisplayPriority = 0,
		DisplayedName = "$7002",
		Description = "$7003",
	},
	{
		Type = SubSystem,
		ThingToBuild = "Ksh_Sec_MS_Production_Fighter",
		RequiredResearch = "",
		RequiredShipSubSystems = "",
		DisplayPriority = 0,
		DisplayedName = "$7000",
		Description = "$7001",
	},
	{
		Type = SubSystem,
		ThingToBuild = "Ksh_Sec_MS_BigGun",
		RequiredResearch = "SMTSiegeTechResearch",
		RequiredFleetSubSystems = "",
		DisplayPriority = 11,
		DisplayedName = "Kinetic Siege Cannon",
		Description = "Long Range High Power Tactical Weapon",
	},
	{
		Type = SubSystem,
		ThingToBuild = "ksh_sec_ms_lowerdecks",
		RequiredResearch = "",
		RequiredShipSubSystems = "",
		DisplayPriority = 12,
		DisplayedName = "Lower Decks",
		Description = "Required subsystem for secondary ore hold, also provides an 25% increase in speed.",
	},
	{
		Type = SubSystem,
		ThingToBuild = "ksh_sec_ms_orecanisterhuge",
		RequiredResearch = "",
		RequiredShipSubSystems = "",
		DisplayPriority = 13,
		DisplayedName = "Primary Ore Hold",
		Description = "Increases total hold size by 75%",
	},
	{
		Type = SubSystem,
		ThingToBuild = "ksh_sec_ms_orecanisterlarge",
		RequiredResearch = "",
		RequiredShipSubSystems = "lowerdecks",
		DisplayPriority = 14,
		DisplayedName = "Secondary Ore Hold",
		Description = "Increases total hold size by 50%",
	},
	{
		Type = SubSystem,
		ThingToBuild = "ksh_sec_dreadnought_cannon",
		RequiredResearch = "",
		RequiredShipSubSystems = "",
		DisplayPriority = 10,
		DisplayedName = "Main Cannon",
		Description = "",
	},
	{

		Type = Ship,
		ThingToBuild = "Hgn_Smt_Clee_San",
		RequiredResearch = "",
		RequiredShipSubSystems = "",
		DisplayPriority = 11,
		DisplayedName = "Clee-San Research Ship",
		Description = "<b>Description:</b> Enables research & allows for the construction of additional research modules.  \n\n<b>Strong Vs:</b> None \n\n<b>Weak Vs:</b> All \n\n<b>Prerequisites:</b> None",
	},
	{
		Type = Ship,
		ThingToBuild = "Hgn_Smt_Worker",
		RequiredResearch = "",
		RequiredShipSubSystems = "",
		DisplayPriority = 12,
		DisplayedName = "Worker",
		Description = "$7067",
	},
	{
		Type = Ship,
		ThingToBuild = "Hgn_Smt_Processor",
		RequiredResearch = "",
		RequiredShipSubSystems = "",
		DisplayPriority = 13,
		DisplayedName = "Ore Processor",
		Description = "<b>Description:</b> Massive resource drop point with four docking ports.  Its four frigate strength flak turrets are make the ship capable to defend itself during limited engagements.  \n\n<b>Strong Vs:</b> Fighters & Corvettes \n\n<b>Weak Vs:</b> Frigates & Capital Ships \n\n<b>Prerequisites:</b> None",
	},
	{
		Type = Ship,
		ThingToBuild = "Hgn_Smt_scout",
		RequiredResearch = "",
		RequiredShipSubSystems = "",
		DisplayPriority = 2,
		DisplayedName = "Recon Scout",
		Description = "<b>Description:</b> Light & Quick  \n\n<b>Strong Vs:</b> Fighters & Corvettes \n\n<b>Weak Vs:</b> Flak Frigates, Multibeam Frigates, Battlecruisers \n\n<b>Prerequisites:</b> None",
	},
--	{
--		Type = Ship,
--		ThingToBuild = "Hgn_Smt_Acolyte",
--		RequiredResearch = "SMTFighterDrive",
--		RequiredShipSubSystems = "",
--		DisplayPriority = 4,
--		DisplayedName = "Acolyte",
--		Description = "<b>Description:</b> Interceptor comparable to contemporary versions, has the added ability of firing two high yeild missiles, must reload via docking.  \n\n<b>Strong Vs:</b> Fighters & Corvettes \n\n<b>Weak Vs:</b> Flak Frigates, Multibeam Frigates, Battlecruisers \n\n<b>Prerequisites:</b> Fighter Drive",
--	},
	{
		Type = Ship,
		ThingToBuild = "Hgn_Smt_AcolyteE",
		RequiredResearch = "SMTFighterDrive",
		RequiredShipSubSystems = "",
		DisplayPriority = 5,
		DisplayedName = "Acolyte",
		Description = "<b>Description:</b> Interceptor comparable to contemporary versions, has the added ability of firing two high yeild missiles, must reload via docking.  \n\n<b>Strong Vs:</b> Fighters & Corvettes \n\n<b>Weak Vs:</b> Flak Frigates, Multibeam Frigates, Battlecruisers \n\n<b>Prerequisites:</b> Fighter Drive",
	},
	{
		Type = Ship,
		ThingToBuild = "Hgn_Smt_SuperAcolyte",
		RequiredResearch = "smtPlasmaBombLauncher",
		RequiredShipSubSystems = "",
		DisplayPriority = 13,
		DisplayedName = "Super Acolyte",
		Description = "<b>Description:</b> Used as an Attack Bomber utilizing superior Bentusi Techology give Super Acolytes strong abilities versus Sub-Systems and unescorted Capital Ships. \n\n<b>Strong Vs:</b> Frigates, Subsystems & Capital Ships \n\n<b>Weak Vs:</b> Flak Frigates, Destroyers & Battlecruisers \n\n<b>Prerequisites:</b> Super AC Tech",
	},
	{
		Type = Ship,
		ThingToBuild = "Hgn_Smt_mimic",
		RequiredResearch = "SMTFighterDrive",
		RequiredShipSubSystems = "",
		DisplayPriority = 6,
		DisplayedName = "Mimic",
		Description = "<b>Description:</b>  \n\n<b>Strong Vs:</b> ADD \n\n<b>Weak Vs:</b> ADD \n\n<b>Prerequisites:</b> Fighter Production",	},
	{
		Type = Ship,
		ThingToBuild = "Hgn_Smt_mcv",
		RequiredResearch = "SMTFighterDrive & SMTCorvetteDrive",
		RequiredShipSubSystems = "",
		DisplayPriority = 7,
		DisplayedName = "MCV",
		Description = "<b>Description:</b>  \n\n<b>Strong Vs:</b> ADD \n\n<b>Weak Vs:</b> ADD \n\n<b>Prerequisites:</b> Fighter Production",	},
	{
		Type = Ship,
		ThingToBuild = "Hgn_Smt_leech",
		RequiredResearch = "SMTFighterDrive",
		RequiredShipSubSystems = "",
		DisplayPriority = 7,
		DisplayedName = "Leech",
		Description = "<b>Description:</b>  \n\n<b>Strong Vs:</b> Capital ships \n\n<b>Weak Vs:</b> Fighters & Corvettes \n\n<b>Prerequisites:</b> Fighter Production",
	},
	{
		Type = Ship,
		ThingToBuild = "Hgn_Smt_Sentinel",
		RequiredResearch = "SMTFighterDrive",
		RequiredShipSubSystems = "",
		DisplayPriority = 10,
		DisplayedName = "Sentinel",
		Description = "<b>Description:</b> ADD  \n\n<b>Strong Vs:</b> Fighters & Corvettes \n\n<b>Weak Vs:</b> Flak Frigates, Multibeam Frigates, Battlecruisers \n\n<b>Prerequisites:</b> Fighter Production",
	},
--	{
--		Type = Ship,
--		ThingToBuild = "Hgn_Smt_ACV",
--		RequiredResearch = "SMTCorvetteDrive",
--		RequiredShipSubSystems = "",
--		DisplayPriority = 20,
--		DisplayedName = "ACV",
--		Description = "<b>Description:</b>  \n\n<b>Strong Vs:</b> Corvettes \n\n<b>Weak Vs:</b> Flak Frigates, Multibeam Frigates, Battlecruisers \n\n<b>Prerequisites:</b> Linking Tech",
--	},
	{
		Type = Ship,
		ThingToBuild = "Hgn_Smt_ACVE",
		RequiredResearch = "SMTCorvetteDrive",
		RequiredShipSubSystems = "",
		DisplayPriority = 21,
		DisplayedName = "ACV",
		Description = "<b>Description:</b>  \n\n<b>Strong Vs:</b> Corvettes \n\n<b>Weak Vs:</b> Flak Frigates, Multibeam Frigates, Battlecruisers \n\n<b>Prerequisites:</b> Linking Tech",
	},
	{
		Type = Ship,
		ThingToBuild = "Hgn_Smt_multibeamfrigate",
		RequiredResearch = "SMTIonCannons",
		RequiredShipSubSystems = "",
		DisplayPriority = 70,
		DisplayedName = "Multi-beam Frigate",
		Description = "Strong Kiith Sect anti-fighter - anti-corvette frigate. Frigate Drive & Adv Ion Cannon",
	},
	{
		Type = Ship,
		ThingToBuild = "Hgn_Smt_RammingFrigate",
		RequiredResearch = "SMTCapitalShipDrive",
		RequiredShipSubSystems = "",
		DisplayPriority = 71,
		DisplayedName = "Ramming Frigate",
		Description = "<b>Description:</b> Used to remove enemy ships from uneven battles, they give a small fleet a chance in a heavy fight.  \n\n<b>Strong Vs:</b> Frigates & Capital ships \n\n<b>Weak Vs:</b> Fighters & Corvettes \n\n<b>Prerequisites:</b> Frigate Drive",
	},
	{
		Type = Ship,
		ThingToBuild = "Hgn_Smt_hivefrigate",
		RequiredResearch = "SMTDroneTechnology",
		RequiredShipSubSystems = "",
		DisplayPriority = 72,
		DisplayedName = "Hive Frigate",
		Description = "<b>Description:</b> Capable of launching drones to engage enemy fighters & corvettes.  \n\n<b>Strong Vs:</b> None \n\n<b>Weak Vs:</b> All \n\n<b>Prerequisites:</b> Frigate Drive & Micro Ship Construction",
	},
	{
		Type = Ship,
		ThingToBuild = "Hgn_Smt_Carrier",
		RequiredResearch = "SMTSuperCapitalShipDrive",
		RequiredShipSubSystems = "",
		DisplayPriority = 116,
		DisplayedName = "Carrier",
		Description = "$7055",
	},
	{
		Type = Ship,
		ThingToBuild = "Hgn_Smt_MS",
		RequiredResearch = "SMThyperspaceTech",
		RequiredShipSubSystems = "",
		DisplayPriority = 117,
		DisplayedName = "Kuun Lan",
		Description = "Sister Ship to the Faal Corum, Requires Hyperspace technology. This vessel is more advanced than the Fal Corum, and build the powerful siege cannon and build up to cruiser class vessels..",
	},
	{
		Type = Ship,
		ThingToBuild = "Hgn_Smt_destroyer",
		RequiredResearch = "SMTSuperCapitalShipDrive & SMTIonCannons & SMTGuidedMissiles",
		RequiredShipSubSystems = "",
		DisplayPriority = 120,
		DisplayedName = "Destroyer",
		Description = "<b>Description:</b> Destroyer armed with standard flak turrets, ion cannons and a missile launcher.  \n\n<b>Strong Vs:</b> Most \n\n<b>Weak Vs:</b> Battlecruisers \n\n<b>Prerequisites:</b> SuperCapitalShipDrive & ADVIonCannons & GuidedMissiles",
	},
	{
		Type = Ship,
		ThingToBuild = "Hgn_Smt_dreadnought",
		RequiredResearch = "SmtEnergyCannonTechnology",
		RequiredShipSubSystems = "",
		DisplayPriority = 123,
		DisplayedName = "Dreadnought",
		Description = "<b>Description:</b> Four anti-flak turrets, 2 Full Range Ion Cannon turrets & strong hull plating make this another excellent ship to head up your assault fleet. \n\n<b>Strong Vs:</b> Most \n\n<b>Weak Vs:</b> Battlecruisers \n\n<b>Prerequisites:</b> Adv Destroyer Drive & EnergyCannonTechnology",
	},
	
}

