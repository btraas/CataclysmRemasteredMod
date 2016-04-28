-- LuaDC version 0.9.19
-- 5/23/2004 7:23:37 PM
-- LuaDC by Age2uN
-- on error send source file (compiled lua) and this outputfile to Age2uN@gmx.net
--
AttackStyleName = FlyRound
Data = 
{ 
    howToBreakFormation = StraightAndScatter, 
    axisRotation = 5, 
    maxAxisRotation = 20, 
    circleSegmentAngle = 30, 
    angleVariation = 0.2, 
    circleHeight = -300, 
    distanceFromTarget = 2000, 
    distanceVariation = 0.1, 
    percentChanceOfCutting = 5, 
    minSegmentsToCut = 1, 
    maxSegmentsToCut = 1, 
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
