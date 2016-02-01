--===========================================================================
--  Purpose : Lua definition file for Homeworld Resource.
--            Contains basic resource members.
--
--  Copyright Relic Entertainment, Inc.  All rights reserved.
--===========================================================================
NewResourceTypeAsteroid_5_piece01 = StartAsteroidConfig()
NewResourceTypeAsteroid_5_piece01.displayedName="$2508"
NewResourceTypeAsteroid_5_piece01.sobDescription="$2509"
NewResourceTypeAsteroid_5_piece01.TOIcon="InvertedTriangle"
NewResourceTypeAsteroid_5_piece01.TOScale=1
NewResourceTypeAsteroid_5_piece01.TODistanceFade0=14000
NewResourceTypeAsteroid_5_piece01.TODistanceDisappear0=12000
NewResourceTypeAsteroid_5_piece01.TODistanceFade1=5500
NewResourceTypeAsteroid_5_piece01.TODistanceDisappear1=5000
NewResourceTypeAsteroid_5_piece01.TODistanceFade2=12000
NewResourceTypeAsteroid_5_piece01.TODistanceDisappear2=35000
NewResourceTypeAsteroid_5_piece01.TOGroupScale=1
NewResourceTypeAsteroid_5_piece01.TOGroupMergeSize=0.01
NewResourceTypeAsteroid_5_piece01.maxhealth=7500
NewResourceTypeAsteroid_5_piece01.regentime=0
NewResourceTypeAsteroid_5_piece01.nlips=0.000025
NewResourceTypeAsteroid_5_piece01.nlipsRange=150000
NewResourceTypeAsteroid_5_piece01.nlipsFar=0.0000025
NewResourceTypeAsteroid_5_piece01.nlipsFarRange=150000
NewResourceTypeAsteroid_5_piece01.SMRepresentation="HardDot"
NewResourceTypeAsteroid_5_piece01.meshRenderLimit=30000
NewResourceTypeAsteroid_5_piece01.dotRenderLimit=30000
NewResourceTypeAsteroid_5_piece01.visibleInSecondary=1
NewResourceTypeAsteroid_5_piece01.minLOD=0.25
--NewResourceTypeAsteroid_5_piece01.upLOD=8000
NewResourceTypeAsteroid_5_piece01.upLOD=20000
--NewResourceTypeAsteroid_5_piece01.downLOD=8010
NewResourceTypeAsteroid_5_piece01.downLOD=20010
NewResourceTypeAsteroid_5_piece01.minimumZoomFactor=0.68
NewResourceTypeAsteroid_5_piece01.selectionSizeMin=0
NewResourceTypeAsteroid_5_piece01.selectionSizeMax=0
NewResourceTypeAsteroid_5_piece01.selectionPriority=50
NewResourceTypeAsteroid_5_piece01.relativeMoveFactor=0.5
NewResourceTypeAsteroid_5_piece01.useEngagementRanges=0
NewResourceTypeAsteroid_5_piece01.pixelSize=6
NewResourceTypeAsteroid_5_piece01.pixelColour={1.0, 0.349, 0.199, 1.0}
NewResourceTypeAsteroid_5_piece01.pixelColourDepleted={0.5, 0.4, 0.3, 1.0}
NewResourceTypeAsteroid_5_piece01.resourceValue=0
NewResourceTypeAsteroid_5_piece01.blobRadius=1000
NewResourceTypeAsteroid_5_piece01.maxVelocity=10000
NewResourceTypeAsteroid_5_piece01.maxAngularVelocity=0.1
NewResourceTypeAsteroid_5_piece01.linearFriction=0.5
NewResourceTypeAsteroid_5_piece01.angularFriction=0.5
NewResourceTypeAsteroid_5_piece01.mass=13.2
NewResourceTypeAsteroid_5_piece01.Ixx=100
NewResourceTypeAsteroid_5_piece01.Iyy=100
NewResourceTypeAsteroid_5_piece01.Izz=100
NewResourceTypeAsteroid_5_piece01.DockFamily="Resource"
NewResourceTypeAsteroid_5_piece01.AvoidanceFamily="SmallRock"
NewResourceTypeAsteroid_5_piece01.AttackFamily="Resource"
NewResourceTypeAsteroid_5_piece01.ArmourFamily="ResourceArmour"
NewResourceTypeAsteroid_5_piece01.CollisionFamily="Big"
NewResourceTypeAsteroid_5_piece01.DisplayFamily="Resource"
setCollisionDamageToModifier(NewResourceTypeAsteroid_5_piece01, "Ship", 0.8)
setCollisionDamageFromModifier(NewResourceTypeAsteroid_5_piece01, "Ship", 0.2)
NewResourceTypeAsteroid_5_piece01.collisionDamageModifier = 0.5

SpawnAsteroidOnDeath(NewResourceTypeAsteroid_5_piece01, "Asteroid_4_piece01", 1, 0,0,0,30, 0,0,0,90, 0,0,0,40, 15,0,0,15)
SpawnAsteroidOnDeath(NewResourceTypeAsteroid_5_piece01, "Asteroid_4_piece02", 1, 0,0,0,30, 0,0,0,90, 0,0,0,40, 15,0,0,15)
resourceAttackMode(NewResourceTypeAsteroid_5_piece01, RegularAttack)
NewResourceTypeAsteroid_5_piece01.sobDieTime=1.5