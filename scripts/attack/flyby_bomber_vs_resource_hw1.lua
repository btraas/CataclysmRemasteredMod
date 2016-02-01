-- Cold Fusion LUA Decompiler v1.0.0
-- By 4E534B
-- Date: 08-11-2012 Time: 13:08:07
-- On error(s), send source (compiled) file to 4E534B@gmail.com

AttackStyleName=AttackRun;
Data={howToBreakFormation=StraightAndScatter,
maxBreakDistance=1676,
distanceFromTargetToBreak=914,
safeDistanceFromTargetToDoActions=914, --1524
useTargetUp=0,
coordSysToUse=Attacker,
horizontalMin=0,
horizontalMax=1,
horizontalFlip=1,
verticalMin=0,
verticalMax=1,
verticalFlip=1,
RandomActions={{Type=PickNewTarget,
Weighting=1},
	{Type=NoAction,
Weighting=30},
	{Type=FlightManeuver,
Weighting=1,
FlightManeuverName="HW1WingWaggle"}},

BeingAttackedActions={},
FiringActions={{Type=FlightManeuver,
Weighting=10,
FlightManeuverName="HW1BarrelRoll"},

{Type=NoAction,
Weighting=1}}};

