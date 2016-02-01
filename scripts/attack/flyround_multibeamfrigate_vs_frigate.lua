AttackStyleName = FlyRound

Data = 
{
	-- when approaching the target use this method to split the formation and transition in to the attack style
	howToBreakFormation = BreakImmediately,
	maxBreakDistance = 2000,
	distanceFromTargetToBreak = 1200,
	safeDistanceFromTargetToDoActions = 1300,
	--	Axis used for circling will be rotated by between -/+ this amount each step of the circle
	axisRotation = 40,
	--	Axis will never be more than this many degrees from vertical
	maxAxisRotation = 180,
	--	Angle between points on the circle
	circleSegmentAngle = 15,
	--	Multiply CircleSegmentAngle by from 1-AngleVariation to 1+AngleVariation
	angleVariation = 0.5,
	--	Ships will fly at this distance from the target's surface
	distanceFromTarget = 500,
	--	Multiply DistanceFromTarget by from 1-DistanceVariation to 1+DistanceVariation
	distanceVariation = 0.4,
	--	Percentage chance that after completing a segment of the circle a ship will cut across the circle
	percentChanceOfCutting = 5,
	--	When cutting across the circle skip at least this many segments
	minSegmentsToCut = 1,
	--	When cutting across the circle skip up to this many segments
	maxSegmentsToCut = 3,
	-- done at the end of every strafing run
	coordSysToUse = Attacker,
	horizontalMin = -1,
	horizontalMax = 1,
	horizontalFlip = 1,
	verticalMin = -1,
	verticalMax = 1,
	verticalFlip = 1,
	RandomActions = 
	{
		{
			Type = PickNewTarget,
			Weighting = 5,
		},
		{
			Type = NoAction,
			Weighting = 5,
		},
	},
  BeingAttackedActions = {
		{
			Type = PickNewTarget,
			Weighting = 1,
		},
		{
			Type = FlightManeuver,
			Weighting = 5,
			FlightManeuverName = "HalfRollCCW",
		},
		{
			Type = FlightManeuver,
			Weighting = 5,
			FlightManeuverName = "HalfRollCW",
		},
	},
	FiringActions = {
		{
			Type = FlightManeuver,
			Weighting = 5,
			FlightManeuverName = "HalfRollCCW",
		},
		{
			Type = FlightManeuver,
			Weighting = 5,
			FlightManeuverName = "HalfRollCW",
		},
	},
}