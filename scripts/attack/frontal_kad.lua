
AttackStyleName=FaceTarget;
Data={howToBreakFormation=StraightAndScatter,
inRangeFactor=0.85,
slideDistanceMultiplier=1.5,
tooSlowSpeed=3,
tooFastMultiplier=1.4,
facingAngle=0,
moveAttackMaxDistanceMultiplier=1.2,
tryToMatchHeight=0,
tryToGetAboveTarget=0,
flyToTargetBecauseItsFarOutOfRangeDelay=0,
flyToTargetBecauseItsMovingAwayDelay=1,
stopAndFaceTheTargetDelay=0,
flyToAboveTheTargetDelay=0,
    RandomActions = {
     }, 
    BeingAttackedActions = {
    }, 
    FiringActions = { 
     {
      Type = FlightManeuver,
      Weighting = 100,
      FlightManeuverName = "HW1KadRollCW",
    },
    {
      Type = FlightManeuver,
      Weighting = 100,
      FlightManeuverName = "HW1KadRollCCW",
    }}};

