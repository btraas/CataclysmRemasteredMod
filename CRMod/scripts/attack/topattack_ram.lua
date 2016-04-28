--===========================================================================
--  Purpose : Lua definition file for the homeworld .
--            -contains data for the top attack
--
--  Copyright Relic Entertainment, Inc.  All rights reserved.
--===========================================================================

AttackStyleName = AttackRun

Data = 
{
	-- when approaching the target use this method to split the formation and transition in to the attack style
	howToBreakFormation = StraightAndScatter,
	
	-- Maximum distance to get from the target when breaking away.
	maxBreakDistance = 900.0,
	-- break off the attack run when this distance from the target
	distanceFromTargetToBreak = 10.0,
	safeDistanceFromTargetToDoActions = 1500.0,
	
	-- data for picking the position in space to fly to when we break off the attack run
	-- how to orient the choice of break point, options are Attacker,Target and TargetAttackPoint
	coordSysToUse = Target,
	horizontalMin = 0.3,
	horizontalMax = 0.6,
	horizontalFlip = 1,
	verticalMin = 0.65,
	verticalMax = 0.9,
	verticalFlip = 0,
	
	-- done at the end of every run
	RandomActions = 
	{
		{
			Type = PickNewTarget,
			Weighting = 1,
		},
		{
			Type = NoAction,
			Weighting = 9,
		},
	},
	BeingAttackedActions = 
	{
		{
			Type = PickNewTarget,
			Weighting = 6,
		},
		{
			Type = FlightManeuver,
			Weighting = 1,
			FlightManeuverName = "RollCW",
		},
		{
			Type = FlightManeuver,
			Weighting = 1,
			FlightManeuverName = "RollCCW",
		},
		{
			Type = FlightManeuver,
			Weighting = 1,
			FlightManeuverName = "BarrelRoll",
		},
	},
	FiringActions = 
	{
		{
			Type = NoAction,
			Weighting = 13,
		},
		{
			Type = FlightManeuver,
			Weighting = 1,
			FlightManeuverName = "RollCW_slow",
		},
		{
			Type = FlightManeuver,
			Weighting = 1,
			FlightManeuverName = "RollCCW_slow",
		},
	},
}
