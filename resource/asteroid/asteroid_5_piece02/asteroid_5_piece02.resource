--===========================================================================
--  Purpose : Lua definition file for Homeworld Resource.
--            Contains basic resource members.
--
--  Copyright Relic Entertainment, Inc.  All rights reserved.
--===========================================================================
NewResourceTypeAsteroid_5_piece02 = StartAsteroidConfig()
NewResourceTypeAsteroid_5_piece02.displayedName="$2508"
NewResourceTypeAsteroid_5_piece02.sobDescription="$2509"
NewResourceTypeAsteroid_5_piece02.TOIcon="InvertedTriangle"
NewResourceTypeAsteroid_5_piece02.TOScale=1
NewResourceTypeAsteroid_5_piece02.TODistanceFade0=14000
NewResourceTypeAsteroid_5_piece02.TODistanceDisappear0=12000
NewResourceTypeAsteroid_5_piece02.TODistanceFade1=5500
NewResourceTypeAsteroid_5_piece02.TODistanceDisappear1=5000
NewResourceTypeAsteroid_5_piece02.TODistanceFade2=12000
NewResourceTypeAsteroid_5_piece02.TODistanceDisappear2=35000
NewResourceTypeAsteroid_5_piece02.TOGroupScale=1
NewResourceTypeAsteroid_5_piece02.TOGroupMergeSize=0.01
NewResourceTypeAsteroid_5_piece02.maxhealth=7500
NewResourceTypeAsteroid_5_piece02.regentime=0
NewResourceTypeAsteroid_5_piece02.nlips=0.000025
NewResourceTypeAsteroid_5_piece02.nlipsRange=150000
NewResourceTypeAsteroid_5_piece02.nlipsFar=0.0000025
NewResourceTypeAsteroid_5_piece02.nlipsFarRange=150000
NewResourceTypeAsteroid_5_piece02.SMRepresentation="HardDot"
NewResourceTypeAsteroid_5_piece02.meshRenderLimit=30000
NewResourceTypeAsteroid_5_piece02.dotRenderLimit=30000
NewResourceTypeAsteroid_5_piece02.visibleInSecondary=1
NewResourceTypeAsteroid_5_piece02.minLOD=0.25
--NewResourceTypeAsteroid_5_piece02.upLOD=8000
NewResourceTypeAsteroid_5_piece02.upLOD=20000
--NewResourceTypeAsteroid_5_piece02.downLOD=8010
NewResourceTypeAsteroid_5_piece02.downLOD=20010
NewResourceTypeAsteroid_5_piece02.minimumZoomFactor=0.68
NewResourceTypeAsteroid_5_piece02.selectionSizeMin=0
NewResourceTypeAsteroid_5_piece02.selectionSizeMax=0
NewResourceTypeAsteroid_5_piece02.selectionPriority=50
NewResourceTypeAsteroid_5_piece02.relativeMoveFactor=0.5
NewResourceTypeAsteroid_5_piece02.useEngagementRanges=0
NewResourceTypeAsteroid_5_piece02.pixelSize=6
NewResourceTypeAsteroid_5_piece02.pixelColour={1.0, 0.349, 0.199, 1.0}
NewResourceTypeAsteroid_5_piece02.pixelColourDepleted={0.5, 0.4, 0.3, 1.0}
NewResourceTypeAsteroid_5_piece02.resourceValue=0
NewResourceTypeAsteroid_5_piece02.blobRadius=1000
NewResourceTypeAsteroid_5_piece02.maxVelocity=10000
NewResourceTypeAsteroid_5_piece02.maxAngularVelocity=0.1
NewResourceTypeAsteroid_5_piece02.linearFriction=0.5
NewResourceTypeAsteroid_5_piece02.angularFriction=0.5
NewResourceTypeAsteroid_5_piece02.mass=13.2
NewResourceTypeAsteroid_5_piece02.Ixx=100
NewResourceTypeAsteroid_5_piece02.Iyy=100
NewResourceTypeAsteroid_5_piece02.Izz=100
NewResourceTypeAsteroid_5_piece02.DockFamily="Resource"
NewResourceTypeAsteroid_5_piece02.AvoidanceFamily="SmallRock"
NewResourceTypeAsteroid_5_piece02.AttackFamily="Resource"
NewResourceTypeAsteroid_5_piece02.ArmourFamily="ResourceArmour"
NewResourceTypeAsteroid_5_piece02.CollisionFamily="Big"
NewResourceTypeAsteroid_5_piece02.DisplayFamily="Resource"
setCollisionDamageToModifier(NewResourceTypeAsteroid_5_piece02, "Ship", 0.8)
setCollisionDamageFromModifier(NewResourceTypeAsteroid_5_piece02, "Ship", 0.2)
NewResourceTypeAsteroid_5_piece02.collisionDamageModifier = 0.5

SpawnAsteroidOnDeath(NewResourceTypeAsteroid_5_piece02, "Asteroid_4_piece02", 1, 0,0,0,30, 0,0,0,90, 0,0,0,40, 15,0,0,15)
SpawnAsteroidOnDeath(NewResourceTypeAsteroid_5_piece02, "Asteroid_4_piece03", 1, 0,0,0,30, 0,0,0,90, 0,0,0,40, 15,0,0,15)
resourceAttackMode(NewResourceTypeAsteroid_5_piece02, RegularAttack)
NewResourceTypeAsteroid_5_piece02.sobDieTime=1.5