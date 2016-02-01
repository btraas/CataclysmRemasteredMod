--===========================================================================
--  Purpose : Lua definition file for Homeworld Resource.
--            Contains basic resource members.
--
--  Copyright Relic Entertainment, Inc.  All rights reserved.
--===========================================================================
NewResourceTypeAsteroid_5_piece03 = StartAsteroidConfig()
NewResourceTypeAsteroid_5_piece03.displayedName="$2508"
NewResourceTypeAsteroid_5_piece03.sobDescription="$2509"
NewResourceTypeAsteroid_5_piece03.TOIcon="InvertedTriangle"
NewResourceTypeAsteroid_5_piece03.TOScale=1
NewResourceTypeAsteroid_5_piece03.TODistanceFade0=14000
NewResourceTypeAsteroid_5_piece03.TODistanceDisappear0=12000
NewResourceTypeAsteroid_5_piece03.TODistanceFade1=5500
NewResourceTypeAsteroid_5_piece03.TODistanceDisappear1=5000
NewResourceTypeAsteroid_5_piece03.TODistanceFade2=12000
NewResourceTypeAsteroid_5_piece03.TODistanceDisappear2=35000
NewResourceTypeAsteroid_5_piece03.TOGroupScale=1
NewResourceTypeAsteroid_5_piece03.TOGroupMergeSize=0.01
NewResourceTypeAsteroid_5_piece03.maxhealth=7500
NewResourceTypeAsteroid_5_piece03.regentime=0
NewResourceTypeAsteroid_5_piece03.nlips=0.000025
NewResourceTypeAsteroid_5_piece03.nlipsRange=150000
NewResourceTypeAsteroid_5_piece03.nlipsFar=0.0000025
NewResourceTypeAsteroid_5_piece03.nlipsFarRange=150000
NewResourceTypeAsteroid_5_piece03.SMRepresentation="HardDot"
NewResourceTypeAsteroid_5_piece03.meshRenderLimit=30000
NewResourceTypeAsteroid_5_piece03.dotRenderLimit=30000
NewResourceTypeAsteroid_5_piece03.visibleInSecondary=1
NewResourceTypeAsteroid_5_piece03.minLOD=0.25
--NewResourceTypeAsteroid_5_piece03.upLOD=8000
NewResourceTypeAsteroid_5_piece03.upLOD=20000
--NewResourceTypeAsteroid_5_piece03.downLOD=8010
NewResourceTypeAsteroid_5_piece03.downLOD=20010
NewResourceTypeAsteroid_5_piece03.minimumZoomFactor=0.68
NewResourceTypeAsteroid_5_piece03.selectionSizeMin=0
NewResourceTypeAsteroid_5_piece03.selectionSizeMax=0
NewResourceTypeAsteroid_5_piece03.selectionPriority=50
NewResourceTypeAsteroid_5_piece03.relativeMoveFactor=0.5
NewResourceTypeAsteroid_5_piece03.useEngagementRanges=0
NewResourceTypeAsteroid_5_piece03.pixelSize=6
NewResourceTypeAsteroid_5_piece03.pixelColour={1.0, 0.349, 0.199, 1.0}
NewResourceTypeAsteroid_5_piece03.pixelColourDepleted={0.5, 0.4, 0.3, 1.0}
NewResourceTypeAsteroid_5_piece03.resourceValue=0
NewResourceTypeAsteroid_5_piece03.blobRadius=1000
NewResourceTypeAsteroid_5_piece03.maxVelocity=10000
NewResourceTypeAsteroid_5_piece03.maxAngularVelocity=0.1
NewResourceTypeAsteroid_5_piece03.linearFriction=0.5
NewResourceTypeAsteroid_5_piece03.angularFriction=0.5
NewResourceTypeAsteroid_5_piece03.mass=13.2
NewResourceTypeAsteroid_5_piece03.Ixx=100
NewResourceTypeAsteroid_5_piece03.Iyy=100
NewResourceTypeAsteroid_5_piece03.Izz=100
NewResourceTypeAsteroid_5_piece03.DockFamily="Resource"
NewResourceTypeAsteroid_5_piece03.AvoidanceFamily="SmallRock"
NewResourceTypeAsteroid_5_piece03.AttackFamily="Resource"
NewResourceTypeAsteroid_5_piece03.ArmourFamily="ResourceArmour"
NewResourceTypeAsteroid_5_piece03.CollisionFamily="Big"
NewResourceTypeAsteroid_5_piece03.DisplayFamily="Resource"
setCollisionDamageToModifier(NewResourceTypeAsteroid_5_piece03, "Ship", 0.8)
setCollisionDamageFromModifier(NewResourceTypeAsteroid_5_piece03, "Ship", 0.2)
NewResourceTypeAsteroid_5_piece03.collisionDamageModifier = 0.5

SpawnAsteroidOnDeath(NewResourceTypeAsteroid_5_piece03, "Asteroid_4_piece01", 1, 0,0,0,30, 0,0,0,90, 0,0,0,40, 15,0,0,15)
SpawnAsteroidOnDeath(NewResourceTypeAsteroid_5_piece03, "Asteroid_4_piece03", 1, 0,0,0,30, 0,0,0,90, 0,0,0,40, 15,0,0,15)
resourceAttackMode(NewResourceTypeAsteroid_5_piece03, RegularAttack)
NewResourceTypeAsteroid_5_piece03.sobDieTime=1.5