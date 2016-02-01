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
paradeSlot("Bst_Recon",		{-1500, -560, 1600},	 {0,0,1}, {-1,0,0},      245);
paradeSlot("Bst_Acolyte",		{-1400, -480, 1400},	 {0,0,1}, {-1,0,0},      245);
paradeSlot("Bst_ACV",			{-1300, -400, 1200},	 {0,0,1}, {-1,0,0},      245);
paradeSlot("Bst_Interceptor",		{-1200, -320, 1000},	 {0,0,1}, {-1,0,0},      245);
paradeSlot("Bst_AttackBomber",		{-1100, -240, 800},		{0,0,1}, {-1,0,0},      245);
paradeSlot("Bst_CloakedFighter",	{-1000, -160, 600},		{0,0,1}, {-1,0,0},      245);
paradeSlot("Bst_HeavyCorvette",		{-900, -80, 400},		{0,0,1}, {-1,0,0},      245);
paradeSlot("Bst_MultigunCorvette",	{-800, 0, 200},		{0,0,1}, {-1,0,0},      245);
paradeSlot("Bst_MissileCorvette",	{-840, 80, 0},		{0,0,1}, {-1,0,0},      245);
paradeSlot("Bst_Sentinel",		{-920, 160, -200},		{0,0,1}, {-1,0,0},      245);
paradeSlot("Bst_Worker",		{-1000, 240, -400},		{0,0,1}, {-1,0,0},      245);
paradeSlot("Bst_Prt_Mothership", {-1503, 0, -3404}, {0, 0, 1}, {-1, 0, 0}, 1000);
paradeSlot("bst_nomadmoon", {-1503, 0, -3404}, {0, 0, 1}, {-1, 0, 0}, 1000);
paradeSlot("bst_Carrier",		{0, -200, -2000},		{0,0,1}, {-1,0,0},      800);
--paradeSlot("Hgn_Bst_Ksh_Carrier",		{0, -200, -2000},		{0,0,1}, {-1,0,0},      800);

--right
paradeSlot("Bst_CruiseMissile",		{0, -200, 1600},		{0,0,1}, {1,0,0},      245);
paradeSlot("Bst_Smt_HiveFrigate",	{1080, 0, 1200},		{0,0,1}, {1,0,0},      245);
paradeSlot("Bst_MultiBeamFrigate",	{1160, 200, 800},		{0,0,1}, {1,0,0},      245);
paradeSlot("bst_tdn_standardfrigate",	{1240, 400, 400},		{0,0,1}, {1,0,0},      245);
paradeSlot("bst_fieldfrigate",		{1320, 600, 0},		{0,0,1}, {1,0,0},      245);
paradeSlot("Bst_RammingFrigate",	{1400, 800, -400},		{0,0,1}, {1,0,0},      245);
paradeSlot("bst_tdn_advancesupportfrigate",	{1480, 1000, -800},		{0,0,1}, {1,0,0},      245);
paradeSlot("bst_ionarrayfrigate",			{1560, 1200, -1200},	{0,0,1}, {1,0,0},      500);
paradeSlot("bst_ioncannonfrigate",	{1720, 1600, -2000},		{0,0,1}, {1,0,0},      245);

paradeSlot("Bst_MissileDestroyer",	{1080, 0, 0},		{0,0,1}, {1,0,0},      600);
paradeSlot("Bst_Smt_Destroyer",	{1240, 200, -800},		{0,0,1}, {1,0,0},      600);

-- up
paradeSlot("Bst_HeavyCruiser",	{960, -400, -1000},		{0,0,1}, {1,0,0},      800);
--paradeSlot("Bst_Tdn_HeavyCruiser",	{960, -400, -1000},		{0,0,1}, {1,0,0},      800);
paradeSlot("Bst_Processor",		{-960, -400, -1000},		{0,0,1}, {-1,0,0},     800);

-- REQUIRED "misc" slot
paradeSlot("misc",                      {5208, 0, -4878},         {0,0,1}, {-1,0,0},      0);                -- grows right
