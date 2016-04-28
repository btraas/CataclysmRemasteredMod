--===========================================================================
--  Purpose : Lua definition file for the homeworld .
--            -contains move to target attack data
--
--  Copyright Relic Entertainment, Inc.  All rights reserved.
--===========================================================================

AttackStyleName = CircleStrafe

Data = 
{
	-- when approaching the target use this method to split the formation and transition in to the attack style
	howToBreakFormation = StraightAndScatter,

	rangeMin = 0.6,
	rangeMax = 0.85,
	heightRatio = 0.5,
	
	faceTarget = 1,

	-- done at the end of every strafing run
	RandomActions = 
	{
		{
			Type = InterpolateTarget,
			Weighting = 15,
		},
		{
			Type = StrafeReRange,
			Weighting = 5,
			minParam = -1.0,
			maxParam = 0.0
		},
		{
			Type = StrafeReHeight,
			Weighting = 5,
			minParam = 0.5,
			maxParam = 0.5
		},
		{
			Type = StrafeReHeight,
			Weighting = 1,
			minParam = 0.0,
			maxParam = 0.0
		},
		{
			Type = StrafeReHeight,
			Weighting = 1,
			minParam = 1.0,
			maxParam = 0.0
		},
		{
			Type = StrafeReSpin,
			Weighting = 1,
		},
		{
			Type = NoAction,
			Weighting = 40,
		},
	},
	BeingAttackedActions = 
	{
	},
	FiringActions = 
	{
	},
}
