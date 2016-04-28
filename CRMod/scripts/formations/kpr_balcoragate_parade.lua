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


--right

paradeSlot("kpr_capital_sleeper", {600, -1200, 2000},	{0,0,1}, {1,0,0},      600);
--paradeSlot("kpr_capital_keeper", {400, -1200, 2000},	{0,0,1}, {1,0,0},       400 );
--paradeSlot("kpr_capital_dreadnaught", {1200, -1200, 2000},	{0,0,1}, {1,0,0},       800 );
paradeSlot("kpr_capital_reaver", {1200, -1200, 2000},	{0,0,1}, {1,0,0},       800 );
--paradeSlot("kpr_capital_sajuuk", {1200, -1200, 2000},	{0,0,1}, {1,0,0},       800 );


-- REQUIRED "misc" slot
paradeSlot("misc",                      {5208, 0, -4878},         {0,0,1}, {-1,0,0},      0);                -- grows right

