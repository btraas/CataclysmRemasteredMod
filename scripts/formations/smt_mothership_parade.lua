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
paradeSlot("Hgn_Smt_Scout",		{-960, -560, 1100},	{0,0,1}, {-1,0,0},	245);
paradeSlot("Hgn_Smt_Acolyte",		{-960, -480, 800},	{0,0,1}, {-1,0,0},	245);
paradeSlot("Hgn_Smt_ACV",		{-960, -360, 500},	{0,0,1}, {-1,0,0},	245);
paradeSlot("Hgn_Smt_SuperAcolyte",		{-960, -240, 200},	{0,0,1}, {-1,0,0},	245);
paradeSlot("Hgn_Smt_Sentinel",		{-960, -120, -100},	{0,0,1}, {-1,0,0},	245);
paradeSlot("Hgn_Smt_Leech",		{-960, 0, -400},	{0,0,1}, {-1,0,0},	245);
paradeSlot("Hgn_Smt_Worker",		{-960, 120, -700},	{0,0,1}, {-1,0,0},	245);

--right
paradeSlot("Hgn_Smt_Mimic",		{960, -800, 900},	{0,0,1}, {1,0,0},      245);
paradeSlot("Hgn_Smt_MCV",		{960, -600, 600},	{0,0,1}, {1,0,0},      245);
paradeSlot("Hgn_Smt_RammingFrigate",	{960, -400, 300},	{0,0,1}, {1,0,0},      245);
paradeSlot("Hgn_Smt_MultibeamFrigate",	{960, -200, 0},	{0,0,1}, {1,0,0},      245);
paradeSlot("Hgn_Smt_HiveFrigate",		{960, 0, -300},	{0,0,1}, {1,0,0},      245);
paradeSlot("Hgn_Smt_Destroyer",		{960, 200, -600},	{0,0,1}, {1,0,0},      600);
paradeSlot("Hgn_Smt_Carrier",		{0, -200, -2000},	{0,0,1}, {1,0,0},      800);

-- up
paradeSlot("Hgn_Smt_Processor",		{-960, -400, -1000},	{0,0,1}, {-1,0,0},     800);

-- REQUIRED "misc" slot
paradeSlot("misc",				{-1000, 0, -4000},	{0,0,1}, {-1,0,0},      0);                -- grows right
