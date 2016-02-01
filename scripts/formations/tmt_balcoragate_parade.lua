--===========================================================================
--  Purpose : Lua definition file for homeworld 2.
--            -Hgn MotherShip Parade formation
--
--  Copyright Relic Entertainment, Inc.  All rights reserved.
--===========================================================================

-- format   slot-name   vector-offset    vector-heading  vector-direction of growth     size-of-growth (set to 0 if want default)
-- offset determines offset from center of formation
-- heading determines heading, use { 0,0,1 } for forward
-- direction of growth determines how new formations will grow out
-- size of growth determines how spaced out additional formations are.  Set to 0 for default
-- one slot MUST be called "misc", leftovers will get put here


-- left

paradeSlot("Hgn_Tdn_HeavyDefender", {-800, -480, 2480},	 {0,0,1}, {-1,0,0},      400);
paradeSlot("Hgn_Tdn_LightInterceptor", {-800, -480, 2280},	 {0,0,1}, {-1,0,0},      400);
paradeSlot("Hgn_Tdn_LightInterceptor_Single", {-800, -480, 2280},	 {0,0,1}, {-1,0,0},      400);
paradeSlot("Hgn_Tdn_HeavyInterceptor", {-800, -480, 2120},	 {0,0,1}, {-1,0,0},      400);
paradeSlot("Hgn_Tdn_HeavyInterceptor_Single", {-800, -480, 2120},	 {0,0,1}, {-1,0,0},      400);
paradeSlot("Hgn_Tdn_AttackBomber", {-800, -480, 1920},	 {0,0,1}, {-1,0,0},      400);
paradeSlot("Hgn_Tdn_AttackBomber_Single", {-800, -480, 1920},	 {0,0,1}, {-1,0,0},      400);
paradeSlot("Hgn_Tdn_DefenseFighter", {-800, -480, 1720},	 {0,0,1}, {-1,0,0},      400);
paradeSlot("Hgn_Tdn_DefenseFighter_Single", {-800, -480, 1720},	 {0,0,1}, {-1,0,0},      400);
paradeSlot("Hgn_Tdn_ResourceCollector", 	{-2000, 0, 400},	 {0,0,1}, {-1,0,0},      0);
paradeSlot("Hgn_Tdn_ResourceController", {-1600, 0, 1200},	 {0,0,1}, {-1,0,0},      0);
paradeSlot("Hgn_Tdn_ResearchShip", {-2200, 0, 1120},	 {0,0,1}, {-1,0,0},      0);
paradeSlot("Hgn_Tdn_SensorArray", {-2000, 0, -200},	 {0,0,1}, {-1,0,0},      0);

--right

paradeSlot("hgn_tmt_carrier", {600, -1200, 2000},	{0,0,1}, {1,0,0},      600);
paradeSlot("hgn_tmt_standardestroyer", {400, -1000, 2000},	{0,0,1}, {1,0,0},       400 );
paradeSlot("hgn_tmt_missiledestroyer", {400, -1200, 2000},	{0,0,1}, {1,0,0},       400 );
paradeSlot("hgn_kpr_capital_dreadnaught", {1200, -1200, 2000},	{0,0,1}, {1,0,0},       800 );
paradeSlot("hgn_kpr_capital_reaver", {1200, -1200, 2000},	{0,0,1}, {1,0,0},       800 );
paradeSlot("hgn_tmt_megaship", {1200, -1200, 2000},	{0,0,1}, {1,0,0},       800 );
paradeSlot("Hgn_Tdn_DfgFrigate", {-960, -640, 800},	{0,0,1}, {1,0,0},       0 );
paradeSlot("Hgn_Tdn_AdvanceSupportFrigate", {-960, -640, 1100},	{0,0,1}, {1,0,0},       0 );
paradeSlot("Hgn_Tdn_AdvanceSupportFrigate_Single", {-960, -640, 1100},	{0,0,1}, {1,0,0},       0 );
paradeSlot("Hgn_Tdn_IonCannonFrigate", {-960, -640, 1400},	{0,0,1}, {1,0,0},       0 );
paradeSlot("Hgn_Tdn_StandardFrigate", {-960, -640, 1700},	{0,0,1}, {1,0,0},       0 );
paradeSlot("Hgn_Tdn_RepairCorvette", {-960, -360, 1120},	{0,0,1}, {1,0,0},       70 );
paradeSlot("Hgn_Tdn_RepairCorvette_Single", {-960, -360, 1120},	{0,0,1}, {1,0,0},       70 );
paradeSlot("Hgn_Tdn_SalCapCorvette", {-960, -360, 920},	{0,0,1}, {1,0,0},       70 );
paradeSlot("Hgn_Tdn_SalCapCorvette_Single", {-960, -360, 920},	{0,0,1}, {1,0,0},       70 );
paradeSlot("Hgn_Tdn_LightCorvette", {-560,-640,2200},	{0,0,1}, {1,0,0},	0 );
paradeSlot("Hgn_Tdn_LightCorvette_Single", {-560,-640,2200},	{0,0,1}, {1,0,0},	0 );
paradeSlot("Hgn_Tdn_HeavyCorvette", {-560,-640,2000},	{0,0,1}, {1,0,0},	0 );
paradeSlot("Hgn_Tdn_HeavyCorvette_Single", {-560,-640,2000},	{0,0,1}, {1,0,0},	0 );
paradeSlot("Hgn_Tdn_MultigunCorvette", {-560,-640,1800},	{0,0,1}, {1,0,0},	0 );
paradeSlot("Hgn_Tdn_MultigunCorvette_Single", {-560,-640,1800},	{0,0,1}, {1,0,0},	0 );
paradeSlot("Hgn_Tdn_Minelayer", {-560,-640,1600},	{0,0,1}, {1,0,0},	0 );
paradeSlot("Hgn_Tdn_ResearchStation", {-2000, 0, -4000},	{0,0,1}, {1,0,0},       800 );

paradeSlot("Vgr_CommandCorvette", {-1836, 170, 178},	 {0,0,1}, {-1,0,0},      0);
paradeSlot("Vgr_LanceFighter", {-1538, -0, 1480},	 {0,0,1}, {-1,0,0},      400);
paradeSlot("Vgr_LaserCorvette", 	{-1360, 0, 989},	 {0,0,1}, {-1,0,0},      0);
paradeSlot("Vgr_MinelayerCorvette", {-2125, 305, -292},	 {0,0,1}, {-1,0,0},      0);
paradeSlot("Vgr_MissileCorvette", {-1572, 87, 578},	 {0,0,1}, {-1,0,0},      0);
paradeSlot("Vgr_Probe", 	{-737, 0, -3097},	 {0,0,1}, {-1,0,0},      0);
paradeSlot("Vgr_Probe_ECM", {-981, 0, -2674},	 {0,0,1}, {-1,0,0},      0);
paradeSlot("Vgr_Probe_Prox", {-580, 0, -3518},	 {0,0,1}, {-1,0,0},      0);
paradeSlot("Vgr_HyperSpace_Platform", {-1162, 183, -2233},	{0,0,1}, {-1,0,0},      0);


-- right
paradeSlot("Vgr_BattleCruiser", {2078, 392, -2041},	{0,0,1}, {1,0,0},       400 );
paradeSlot("Vgr_HeavyMissileFrigate", {1136, -74, 1869},	{0,0,1}, {1,0,0},       0 );
paradeSlot("Vgr_InfiltratorFrigate", {1532, -5, 1184},	{0,0,1}, {1,0,0},       0 );
paradeSlot("Vgr_ShipYard", 	{1121, -424, -5023},	{0,0,1}, {1,0,0},       0 );
paradeSlot("Vgr_TransportFrigate", 	{1862, 111, 434}, {0,0,1}, {1,0,0},       0 );



-- up
paradeSlot("Vgr_Carrier", {0, -371, 2782},	{0,0,1}, {0,1,0},      1000);
paradeSlot("Vgr_WeaponPlatform_gun", 	{-213, -306, 1685},	{0,0,1}, {0,1,0},      0);
paradeSlot("Vgr_WeaponPlatform_missile", 	{243, -306, 1689},	{0,0,1}, {0,1,0},      0);


-- REQUIRED "misc" slot
paradeSlot("misc",                      {5208, 0, -4878},         {0,0,1}, {-1,0,0},      0);                -- grows right

