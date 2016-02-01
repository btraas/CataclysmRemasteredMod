-- Cold Fusion LUA Decompiler v1.0.0
-- By 4E534B
-- Date: 09-04-2011 Time: 23:30:57
-- On error(s), send source (compiled) file to 4E534B@gmail.com


function DegToRad(angle)
	return (angle * ((2 * 3.141592653589) / 360));
	

end

AttackStyleName=FaceTarget;
Data={howToBreakFormation=StraightAndScatter,
inRangeFactor=0.67,
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
RandomActions={{Type=MoveRoundTarget,
minParam=DegToRad(5),
maxParam=DegToRad(45),
Weighting=200}},
BeingAttackedActions={{Type=MoveRoundTarget,
minParam=DegToRad(15),
maxParam=DegToRad(90),
Weighting=200}},
FiringActions={{Type=InterpolateTarget,
Weighting=1,
minParam=3,
maxParam=3}}};

