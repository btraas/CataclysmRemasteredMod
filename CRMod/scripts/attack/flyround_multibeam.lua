-- LuaDC version 0.9.19
-- 5/23/2004 7:23:37 PM
-- LuaDC by Age2uN
-- on error send source file (compiled lua) and this outputfile to Age2uN@gmx.net
--
AttackStyleName = FlyRound
Data = 
{ 
    howToBreakFormation = StraightAndScatter, 
    axisRotation = 15, 
    maxAxisRotation = 60, 
    circleSegmentAngle = 25, 
    angleVariation = 0.2, 
    circleHeight = -10, 
    distanceFromTarget = 2500, 
    distanceVariation = 0.1, 
    percentChanceOfCutting = 25, 
    minSegmentsToCut = 1, 
    maxSegmentsToCut = 3, 
    RandomActions = 
        { 
        { 
            Type = PickNewTarget, 
            Weighting = 1, }, 
        { 
            Type = NoAction, 
            Weighting = 9, },  
		},
    BeingAttackedActions = {}, 
    FiringActions = {}, }
