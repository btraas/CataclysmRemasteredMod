-- Cold Fusion LUA Decompiler v1.0.0
-- By 4E534B
-- Date: 09-04-2011 Time: 23:30:57
-- On error(s), send source (compiled) file to 4E534B@gmail.com


function DegToRad(angle)
	return (angle * ((2 * 3.141592653589) / 360));
	

end

AttackStyleName=FaceTarget;
Data={howToBreakFormation=StraightAndScatter,
inRangeFactor=0.5,
slideDistanceMultiplier=2,
tooSlowSpeed=3,
tooFastMultiplier=1.4,
facingAngle=0,
moveAttackMaxDistanceMultiplier=2,
tryToMatchHeight=0,
tryToGetAboveTarget=0,
flyToTargetBecauseItsFarOutOfRangeDelay=0,
flyToTargetBecauseItsMovingAwayDelay=0,
stopAndFaceTheTargetDelay=0,
flyToAboveTheTargetDelay=0,
RandomActions={{Type=PickNewTarget,
Weighting=19},
	{Type=NoAction,
Weighting=1},
	{Type=MoveRoundTarget,
minParam=DegToRad(35),
maxParam=DegToRad(90),
Weighting=100}},
BeingAttackedActions={{Type=MoveRoundTarget,
minParam=DegToRad(90),
maxParam=DegToRad(120),
Weighting=100},
	{Type=MoveRoundTarget,
minParam=DegToRad(35),
maxParam=DegToRad(90),
Weighting=100}},
FiringActions={{Type=InterpolateTarget,
Weighting=1,
minParam=3,
maxParam=3}}};

