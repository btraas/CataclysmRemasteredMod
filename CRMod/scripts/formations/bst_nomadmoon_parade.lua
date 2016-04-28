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
paradeSlot("Hgn_Bst_Recon",		{-2500, -560, 1600},	 {0,0,1}, {-1,0,0},      245);
paradeSlot("Hgn_Bst_Acolyte",		{-2400, -480, 1400},	 {0,0,1}, {-1,0,0},      245);
paradeSlot("Hgn_Bst_ACV",			{-2300, -400, 1200},	 {0,0,1}, {-1,0,0},      245);
paradeSlot("Hgn_Bst_Interceptor",		{-2200, -320, 1000},	 {0,0,1}, {-1,0,0},      245);
paradeSlot("Hgn_Bst_AttackBomber",		{-2100, -240, 800},		{0,0,1}, {-1,0,0},      245);
paradeSlot("Hgn_Bst_CloakedFighter",	{-2000, -160, 600},		{0,0,1}, {-1,0,0},      245);
paradeSlot("Hgn_Bst_HeavyCorvette",		{-1900, -80, 400},		{0,0,1}, {-1,0,0},      245);
paradeSlot("Hgn_Bst_MultigunCorvette",	{-1800, 0, 200},		{0,0,1}, {-1,0,0},      245);
paradeSlot("Hgn_Bst_MissileCorvette",	{-1840, 80, 0},		{0,0,1}, {-1,0,0},      245);
paradeSlot("Hgn_Bst_Sentinel",		{-1920, 160, -200},		{0,0,1}, {-1,0,0},      245);
paradeSlot("Hgn_Bst_Worker",		{-2000, 240, -400},		{0,0,1}, {-1,0,0},      245);

paradeSlot("Hgn_Bst_Tdn_Carrier",		{0, -200, -2000},		{0,0,1}, {-1,0,0},      800);
paradeSlot("Hgn_Bst_Ksh_Carrier",		{-1000, -560, -3200},	{0,0,1}, {-1,0,0},      800);
paradeSlot("Hgn_Bst_Carrier3",		{-1000, -560, -3200},	{0,0,1}, {-1,0,0},      800);

--right
paradeSlot("Hgn_Bst_CruiseMissile",		{0, -200, 1600},		{0,0,1}, {1,0,0},      245);
paradeSlot("Hgn_Bst_Smt_HiveFrigate",	{1080, 0, 1200},		{0,0,1}, {1,0,0},      245);
paradeSlot("Hgn_Bst_MultiBeamFrigate",	{1160, 200, 800},		{0,0,1}, {1,0,0},      245);
paradeSlot("Hgn_bst_tdn_standardfrigate",	{1240, 400, 400},		{0,0,1}, {1,0,0},      245);
paradeSlot("Hgn_Bst_DFGFrigate",		{1320, 600, 0},		{0,0,1}, {1,0,0},      245);
paradeSlot("Hgn_Bst_RammingFrigate",	{1400, 800, -400},		{0,0,1}, {1,0,0},      245);
paradeSlot("hgn_bst_tdn_advancesupportfrigate",	{1480, 1000, -800},		{0,0,1}, {1,0,0},      245);
paradeSlot("Hgn_Bst_IAF",			{1560, 1200, -1200},	{0,0,1}, {1,0,0},      500);
paradeSlot("hgn_bst_ksh_ioncannonfrigate",	{1640, 1400, -1600},		{0,0,1}, {1,0,0},      245);
paradeSlot("hgn_bst_tdn_ioncannonfrigate",	{1720, 1600, -2000},		{0,0,1}, {1,0,0},      245);

paradeSlot("Hgn_Bst_MissileDestroyer",	{2080, 0, 0},		{0,0,1}, {1,0,0},      600);
paradeSlot("Hgn_Bst_Smt_Destroyer",	{2240, 200, -800},		{0,0,1}, {1,0,0},      600);
paradeSlot("Hgn_Bst_Tdn_HeavyCruiser",	{2400, 400, -1600},		{0,0,1}, {1,0,0},      800);

-- up
--paradeSlot("Hgn_Bst_Tdn_HeavyCruiser",	{960, -400, -1000},		{0,0,1}, {1,0,0},      800);
paradeSlot("Hgn_Bst_Processor",		{-960, -400, -1000},		{0,0,1}, {-1,0,0},     800);

-- REQUIRED "misc" slot
paradeSlot("misc",                      {5208, 0, -4878},         {0,0,1}, {-1,0,0},      0);                -- grows right
