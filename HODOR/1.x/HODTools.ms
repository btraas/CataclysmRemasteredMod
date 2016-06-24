--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
-- Shared Helpers
--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
fn extractVar srcStr varName =
(
	varFind = varName+"["
	
	varHead = (findstring srcStr varFind)+varFind.count
	varLeft = substring srcStr varHead ((srcStr.count-varHead)+1)
	varTail = (findstring varLeft "]")-1
	
	substring srcStr varHead varTail
)

fn loadOrUseBMP path: called: =
(
	local bmp = undefined
	
	if (doesFileExist path) then
	(
		if (bmps = getclassinstances Bitmaptex).count != 0 do
		(
			for b in bmps where b.filename == path do bmp = b
		);
			
		if (undefined == bmp) then
		(
			bmp = BitmapTexture filename:path name:called
		)
	)
	
	bmp
)

fn matchName testName withMatch =
(
	matchPattern testName pattern:withMatch ignoreCase:false
)

fn groupByMatch objGroup withMatch = 
(
	for o in objGroup where (matchName o.name withMatch) collect o
)

fn objsOrArray fallbackArray =
(
	if selection.count < 1 then (objects as array) else fallbackArray
)

fn colorApply cc apply = 
(
	cc.lightnessMode = 1
	cc.enableR = cc.enableG = cc.enableB = true
	cc.gainR = (apply.r/255)*100
	cc.gainG = (apply.g/255)*100
	cc.gainB = (apply.b/255)*100
	cc
)

--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
-- Dockpaths
--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
fn scanForDock maybe =
(
	if (matchName maybe.name "DOCK[*") then
	(
		maybe
	) else (
		if maybe.parent != undefined then
		(
			scanForDock maybe.parent
		) else (
			undefined
		)
	)
)

fn gatherDocks scanArray =
(
	foundDocks = #()
	
	for s in scanArray do
	(
		testDock = scanForDock s
		
		if testDock != undefined then (appendIfUnique foundDocks testDock)
	)
	
	foundDocks
)

fn nukeDockLines dock =
(
	for s in dock.children where
	(
		(matchName s.name "SEG[*") and (classof s == point)
	) do (
		s.axistripod = false
		s.cross = false
		s.centermarker = true
		s.drawontop = false
		s.constantscreensize = true
		s.size = 16
		
		for l in s.children where
		(
			matchName l.name "DOCKLINE[*]_HEAD[*"
		) do (
			delete l
		)
	)
)

fn spawnDockLines dock =
(
	dockSegs = groupByMatch dock.children "SEG[*"
	
	local subLen = dockSegs.count
	
	for s in dockSegs do
	(
		if (classof s == point) then
		(
			s.axistripod = true
			s.cross = false
			s.centermarker = false
			s.drawontop = false
			s.constantscreensize = true
			s.size = 16
		)
	)
	
	for i = 1 to (subLen-1) do
	(
		objFrom = dockSegs[i]
		objTo = dockSegs[i+1]
		
		if ((classof objFrom == point) and (classof objTo == point)) then
		(
			useTail = Point pos:objTo.pos cross:true constantscreensize:false size:0.0001
			useHead = Tape length:100 pos:objFrom.pos target:(useTail)
			useTail.parent = objTo
			useHead.parent = objFrom
			
			dockID = extractVar dock.name "DOCK"
			
			strBuild = stringstream ""
			format "DOCKLINE[%]_TAIL[%]" dockID i to:strBuild
			useTail.name = strBuild as string
			
			strBuild = stringstream ""
			format "DOCKLINE[%]_HEAD[%]" dockID i to:strBuild
			useHead.name = strBuild as string
		)
	)
)

fn visualizeDocks doSpawn =
(
	local holdSel = getCurrentSelection()
	
	local workGroup = objsOrArray holdSel 
	local dockGroup = gatherDocks workGroup

	for dock in dockGroup do
	(
		if (doSpawn == 1) then
		(
			spawnDockLines dock
		) else (
			nukeDockLines dock
		)
	)
	
	select holdSel
)

fn convertSegs =
(
	scanObjs = objects as array
	segObjs = groupByMatch scanObjs "SEG[*"
	
	for seg in segObjs do
	(
		if (classof seg != point) then
		(
			pntSeg = point transform:seg.transform name:seg.name pivot:seg.pivot
			pntSeg.parent = seg.parent
			
			for c in seg.children do c.parent = pntSeg
			
			delete seg
			seg = pntSeg
		)
		
		seg.axistripod = false
		seg.cross = false
		seg.centermarker = true
		seg.drawontop = false
		seg.constantscreensize = true
		seg.size = 16
	)
)

fn nukeDocks =
(
	allObjs = objects as array
	lineObjs = groupByMatch allObjs "DOCKLINE[*]_HEAD[*"
	
	for l in lineObjs do
	(
		if (l != undefined) then
		(
			delete l
		)
	)
		
	allObjs = objects as array
	segObjs = groupByMatch allObjs "SEG[*"
	
	for seg in segObjs do
	(
		if (classof seg != Dummy) then
		(
			segNode = Dummy transform:seg.transform name:seg.name pivot:seg.pivot
			segNode.parent = seg.parent
		
			for c in seg.children do c.parent = segNode
			
			delete seg
			seg = segNode
		)
	)
)


--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
-- Navlights
--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
fn visualizeNavs show =
(
	local holdSel = getCurrentSelection()
	
	scanObjs = objsOrArray holdSel
	navObjs = groupByMatch scanObjs "NAVL[*"
	
	for nav in navObjs do
	(
		if (show == 0) then
		(
			if (classof nav != point) then
			(
				navPnt = point transform:nav.transform name:nav.name pivot:nav.pivot
				navPnt.parent = nav.parent
		
				navPnt.axistripod = false
				navPnt.cross = false
				navPnt.centermarker = true
				navPnt.drawontop = false
				navPnt.constantscreensize = true
				navPnt.size = 16
				
				for c in nav.children do c.parent = navPnt
					
				if (holdSel.count > 0) then
				(
					navIdx = findItem holdSel nav
					
					if navIdx != 0 then
					(
						holdSel = deleteItem holdSel navIdx
						holdSel = append holdSel navPnt
					)
				)
				
				delete nav
				nav = navPnt
			)
		) else (
			if (classof nav != sphere) then
			(
				navSize = (extractVar nav.name "Sz") as float
				navCol = filterstring (extractVar nav.name "Col") ", "
				navRGB = color ((navCol[1] as float)*255) ((navCol[2] as float)*255) ((navCol[3] as float)*255)
				
				navSph = Sphere()
				navSph.name = nav.name
				navSph.transform = nav.transform
				navSph.parent = nav.parent
				navSph.radius = navSize
				navSph.wirecolor = navRGB
				
				for c in nav.children do c.parent = navSph
					
				if (holdSel.count > 0) then
				(
					navIdx = findItem holdSel nav
					
					if navIdx != 0 then
					(
						holdSel = deleteItem holdSel navIdx
						holdSel = append holdSel navSph
					)
				)
				
				delete nav
				nav = navSph
			)
		)
	)
	
	select holdSel
)

fn nukeNavs =
(
	navObjs = groupByMatch (objects as array) "NAVL[*"
	
	for nav in navObjs do
	(
		if (classof nav != Dummy) then
		(
			navNode = Dummy transform:nav.transform name:nav.name pivot:nav.pivot
			navNode.parent = nav.parent
		
			for c in nav.children do c.parent = navNode
			
			delete nav
			nav = navNode
		)
	)
)


--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
-- General Materials
--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
fn findOrMakeGradient called: tint: =
(
	local grad = undefined
	
	if (grads = getclassinstances Gradient).count != 0 do
	(
		for g in grads where g.name == called do grad = g
	);
			
	if (undefined == grad) then
	(
		grad = Gradient name:called
	)
	
	grad.color1 = tint
	grad.color2 = tint
	grad.color3 = tint
	
	grad
)

fn findOrMakeMult called: tint: =
(
	local rgbm = undefined
	
	if (rgbms = getclassinstances RGB_Multiply).count != 0 do
	(
		for r in rgbms where r.name == called do rgbm = r
	);
			
	if (undefined == rgbm) then
	(
		rgbm = RGB_Multiply name:called
	)
	
	rgbm.map1 = tint
	rgbm.alphaFrom = 1
	
	rgbm
)

fn setupSTATs teamC stripeC badgeC =
(
	local teamObj = findOrMakeGradient called:"RGB_TEAM" tint:teamC
	local stripeObj = findOrMakeGradient called:"RGB_STRIPE" tint:stripeC
	local badgeGrad = findOrMakeGradient called:"RGB_BADGE_TINT" tint:badgeC
	local badgeObj = findOrMakeMult called:"RGB_BADGE" tint:badgeGrad
	
	if (local std = getclassinstances Standardmaterial).count != 0 do
	(
		for m in std do
		(
			if (matchPattern m.name pattern:"MATGLOW[*" ignorecase:off) then
			(
				m.opacityType = 2
				m.opacity = 20
			)
			else if (matchPattern m.name pattern:"MAT[*" ignorecase:off) then
			(
				m.Diffuse = color 255 255 255
				m.Specular = color 128 128 128
				
				if (isKindOf m.diffuseMap Bitmaptex) then
				(
					local wantBump = substitutestring m.diffuseMap.filename "_DIFF." "_NORM."
					local nameBump = substitutestring m.diffuseMap.name "_DIFF]" "_NORM]"
						
					if (local newBump = loadOrUseBMP path:wantBump called:nameBump) != undefined then
					(
						newBump.filtering = 1
						m.bumpMap = newBump
						m.bumpMapEnable = true
					)
					
					local diffM = loadOrUseBMP path:m.diffuseMap.filename called:m.diffuseMap.name
					
					local wantDoff = substitutestring m.diffuseMap.filename "_DIFF." "_DIFX."
					local nameDoff = substitutestring m.diffuseMap.name "_DIFF]" "_DIFX]"
					local doffM = loadOrUseBMP path:wantDoff called:nameDoff
					
					local wantTeam = substitutestring m.diffuseMap.filename "_DIFF." "_TEAM."
					local nameTeam = substitutestring m.diffuseMap.name "_DIFF]" "_TEAM]"
					local teamM = loadOrUseBMP path:wantTeam called:nameTeam
					
					local wantStripe = substitutestring m.diffuseMap.filename "_DIFF." "_STRP."
					local nameStripe = substitutestring m.diffuseMap.name "_DIFF]" "_STRP]"
					local stripeM = loadOrUseBMP path:wantStripe called:nameStripe
					
					--local wantMask = substitutestring m.diffuseMap.filename "_DIFF." "_MASK."
					--local nameMask = substitutestring m.diffuseMap.name "_MASK]" "_MASK]"
					--local maskM = loadOrUseBMP path:wantMask called:nameMask
					
					local maps = #(teamObj, stripeObj, undefined, diffM, diffM, doffM, doffM)
					local masks = #(teamM, stripeM, undefined, undefined, undefined, undefined, undefined)
					local flags = #(false, false, false, true, true, false, false)
					local names = #("team", "stripe", "badge", "diff", "diff", "difx", "difx")
					local blends = #(0, 0, 0, 16, 16, 16, 16)
					local opacs = #(100, 100, 100, 100, 60, 100, 60)
					
					if (diffM != undefined) then
					(
						diffM.filtering = 1
					)
					
					if (doffM != undefined) then
					(
						doffM.filtering = 1
					)
					
					if (teamM != undefined) then
					(
						teamM.preMultAlpha = off
						teamM.filtering = 1
						teamM.monoOutput = 1
						teamM.RGBOutput = 1
						flags[1] = true
					)
					
					if (stripeM != undefined) then
					(
						stripeM.preMultAlpha = off
						stripeM.filtering = 1
						stripeM.monoOutput = 1
						stripeM.RGBOutput = 1
						flags[2] = true
					)
					
					if (matchPattern m.name pattern:"*SHD[badge]*" ignorecase:off) then
					(
						maps[3] = badgeObj
						--flags[3] = true
					)
					
					local holdC = CompositeTexturemap mapList:maps mask:masks layerName:names mapEnabled:flags blendMode:blends opacity:opacs
					holdC.name = substitutestring diffM.name "IMG[" "COMP_D["
					
					m.diffuseMap = holdC
				)
				
				if (isKindOf m.selfillumMap Bitmaptex) then
				(
					local glowM = m.selfillumMap
					local gloxOff = substitutestring m.selfillumMap.filename "_GLOW." "_GLOX."			
					local gloxName = substitutestring m.selfillumMap.name "_GLOW]" "_GLOX]"
					local gloxM = loadOrUseBMP path:gloxOff called:gloxName
					
					local G_maps = #(glowM, gloxM, m.diffuseMap)
					local G_flags = #(true, false, true)
					local G_names = #("glow", "glox", "diff")
					local G_blends = #(0, 0, 5)
					
					if (glowM != undefined) then
					(
						glowM.preMultAlpha = off
						glowM.filtering = 1
						glowM.monoOutput = 1
						glowM.RGBOutput = 0
					)
					
					if (gloxM != undefined) then
					(
						gloxM.preMultAlpha = off
						gloxM.filtering = 1
						gloxM.monoOutput = 1
						gloxM.RGBOutput = 0
					)
					
					local glowC = CompositeTexturemap mapList:G_maps layerName:G_names mapEnabled:G_flags blendMode:G_blends
					glowC.name = substitutestring m.selfillumMap.name "IMG[" "COMP_G["
					m.selfillumMap = glowC	
				)
				
				if (isKindOf m.specularMap Bitmaptex) then
				(
					local specM = m.specularMap
					local spexOff = substitutestring m.specularMap.filename "_SPEC." "_SPEX."			
					local spexName = substitutestring m.specularMap.name "_SPEC]" "_SPEX]"
					local spexM = loadOrUseBMP path:spexOff called:spexName
					
					local S_maps = #(specM, spexM, m.diffuseMap)
					local S_flags = #(true, false, true)
					local S_names = #("spec", "spex", "diff")
					local S_blends = #(0, 0, 5)
					
					if (specM != undefined) then
					(
						specM.preMultAlpha = off
						specM.filtering = 1
						specM.monoOutput = 1
						specM.RGBOutput = 0
					)
					
					if (spexM != undefined) then
					(
						spexM.preMultAlpha = off
						spexM.filtering = 1
						spexM.monoOutput = 1
						spexM.RGBOutput = 0
					)
					
					local specC = CompositeTexturemap mapList:S_maps layerName:S_names mapEnabled:S_flags blendMode:S_blends
					specC.name = substitutestring m.specularMap.name "IMG[" "COMP_S["
					m.specularMap = specC	
				)
			)
		)
	);
	
	1
)

fn removeSTATs =
(
	if (local std = getclassinstances Standardmaterial).count != 0 do
	(
		for m in std do
		(
			if (matchPattern m.name pattern:"MAT[*" ignorecase:off) then
			(
				if (isKindOf m.diffuseMap CompositeTexturemap) then
				(
					local diffM = m.diffuseMap.mapList[4]
					m.diffuseMap = diffM
				)
				
				if (isKindOf m.selfillumMap CompositeTexturemap) then
				(
					local glowM = m.selfillumMap.mapList[1]
					m.selfillumMap = glowM
				)
				
				if (isKindOf m.specularMap CompositeTexturemap) then
				(
					local specM = m.specularMap.mapList[1]
					m.specularMap = specM
				)
			)
		)
	);
	
	1
)


--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
-- Engines
--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
fn visualizeEngines show =
(
	local idx = if (show == true) then 1 else 2
	
	if (local std = getclassinstances Standardmaterial).count != 0 do
	(
		for m in std do
		(
			if (matchPattern m.name pattern:"MATGLOW[*" ignorecase:off) then
			(
				m.opacity = if (show) then 20 else 0
			)
			else if (matchPattern m.name pattern:"*SHD[thruster]*" ignorecase:off) then
			(
				if ((isKindOf m.diffuseMap CompositeTexturemap) and (m.diffuseMap.mapList[6] != undefined)) then
				(
					m.diffuseMap.mapEnabled[4] = show
					m.diffuseMap.mapEnabled[5] = show
					m.diffuseMap.mapEnabled[6] = not show
					m.diffuseMap.mapEnabled[7] = not show
				)
				
				if (isKindOf m.selfillumMap CompositeTexturemap) then
				(
					m.selfillumMap.mapEnabled[1] = show
					m.selfillumMap.mapEnabled[2] = not show
					
					m.selfillumMap.mapEnabled[3] = if (m.selfillumMap.mapEnabled[idx] != undefined) then true else false
				)
				
				if (isKindOf m.specularMap CompositeTexturemap) then
				(
					m.specularMap.mapEnabled[1] = show
					m.specularMap.mapEnabled[2] = not show
					
					m.specularMap.mapEnabled[3] = if (m.specularMap.mapEnabled[idx] != undefined) then true else false
				)
			)
		)
	);
	
	1
)


--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
-- Bump Maps
--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
fn visualizeBumps show =
(
	if (local std = getclassinstances Standardmaterial).count != 0 do
	(
		for m in std do
		(
			if (matchPattern m.name pattern:"MAT[*" ignorecase:off) then
			(
				m.bumpMapEnable = show
			)
		)
	);
	
	1
)


--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
-- Teams
--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
fn visualizeTeams show teamC stripeC =
(
	local teamObj = findOrMakeGradient called:"RGB_TEAM" tint:teamC
	local stripeObj = findOrMakeGradient called:"RGB_STRIPE" tint:stripeC
	
	if (local std = getclassinstances Standardmaterial).count != 0 do
	(
		for m in std do
		(
			if (matchPattern m.name pattern:"MAT[*" ignorecase:off) then
			(
				if (isKindOf m.diffuseMap CompositeTexturemap) then
				(
					if (m.diffuseMap.mapList.count > 1) then
					(
						if (m.diffuseMap.layerName[1] == "team") then
						(
							m.diffuseMap.mapList[1] = teamObj
							m.diffuseMap.mapEnabled[1] = show
							m.diffuseMap.maskEnabled[1] = show
						)
						
						if (m.diffuseMap.layerName[2] == "stripe") then
						(
							m.diffuseMap.mapList[2] = stripeObj
							m.diffuseMap.mapEnabled[2] = show
							m.diffuseMap.maskEnabled[2] = show
						)
					)
				)
			)
		)
	);
	
	1
)


--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
-- Badge
--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
fn visualizeBadge badgeM badgeC =
(
	local badgeGrad = findOrMakeGradient called:"RGB_BADGE_TINT" tint:badgeC
	local badgeObj = findOrMakeMult called:"RGB_BADGE" tint:badgeGrad
	badgeObj.map2 = badgeM
	
	if (badgeM != undefined) then
	(
		local useChannel = 1
		
		local info = getNodeByName "ROOT_INFO" exact:true ignoreCase:false all:false
		
		if (info != undefined) then
		(
			for c in info.children where (matchName c.name "UVSets[*") do
			(
				local maxChannel = (extractVar c.name "UVSets") as Integer
			
				if (maxChannel > 1) then
				(
					useChannel = 2
				)
			)
		)
		
		badgeM.coords.mapChannel = useChannel
		badgeM.preMultAlpha = off
		badgeM.filtering = 1
	)
	
	if (local std = getclassinstances Standardmaterial).count != 0 do
	(
		for m in std do
		(
			if (matchPattern m.name pattern:"*SHD[badge]*" ignorecase:off) then
			(
				if (isKindOf m.diffuseMap CompositeTexturemap) then
				(
					if (m.diffuseMap.mapList.count > 2) then
					(
						if (m.diffuseMap.layerName[3] == "badge") then
						(
							m.diffuseMap.mapEnabled[3] = if (badgeM != undefined) then true else false
						)
					)
				)
			)
		)
	);
	
	1
)

fn visualizeColors teamC stripeC badgeC =
(
	local teamObj = findOrMakeGradient called:"RGB_TEAM" tint:teamC
	local stripeObj = findOrMakeGradient called:"RGB_STRIPE" tint:stripeC
	local badgeGrad = findOrMakeGradient called:"RGB_BADGE_TINT" tint:badgeC
	local badgeObj = findOrMakeMult called:"RGB_BADGE" tint:badgeGrad
	
	1
)


--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
-- First Load
--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
fn setupHOD teamC stripeC badgeC =
(
	visualizeDocks(0)
	convertSegs()
	visualizeNavs(0)
	setupSTATs teamC stripeC badgeC
	1
)


--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
-- Pre-save
--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
fn cleanHOD =
(
	nukeNavs()
	nukeDocks()
	removeSTATs()
	1
)


--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
-- Rollout UI
--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
if ((HODTools_Roll != undefined) and (HODTools_Roll.isdisplayed)) do
	(destroyDialog HODTools_Roll)

rollout HODTools_Roll "HOD Toolbox"
(
	local teamColor = color 0 175 255
	local stripeColor = color 0 78 210
	local badgeColor = color 255 255 255
	
	button btnPostLoad "Just Loaded!" width:150
	label btnDockLab "Dockpaths:" width:70 offset:[-40,6]
	button btnShowDocks "On" width:40 offset:[15,-23]
	button btnHideDocks "Off" width:40 offset:[55,-26]
	label btnNavLab "Navlights:" width:70 offset:[-40,6]
	button btnShowNavs "On" width:40 offset:[15,-23]
	button btnHideNavs "Off" width:40 offset:[55,-26]
	label btnEngineLab "Engines:" width:70 offset:[-40,6]
	button btnEngineOn "On" width:40 offset:[15,-23]
	button btnEngineOff "Off" width:40 offset:[55,-26]
	label btnBumpLab "Normal Maps:" width:70 offset:[-40,6]
	button btnBumpOn "On" width:40 offset:[15,-23]
	button btnBumpOff "Off" width:40 offset:[55,-26]
	label btnTeamLab "Team/Stripe:" width:70 offset:[-40,6]
	button btnTeamOn "On" width:40 offset:[15,-23]
	button btnTeamOff "Off" width:40 offset:[55,-26]
	label btnBadgeLab "Badge:" width:70 offset:[-40,6]
	mapbutton btnBadgeOn "Pick" width:40 offset:[15,-23]
	button btnBadgeOff "Off" width:40 offset:[55,-26]
	colorpicker clrTeamColor "Team" color:teamColor modal:true width:70
	colorpicker clrStripeColor "Stripe" color:stripeColor modal:true width:70 offset:[75,-25]
	colorpicker clrBadgeColor "Badge" color:badgeColor modal:true width:70
	button btnUpdateColors "Apply" width:70 offset:[40,-25]
	button btnPreSave "Pre-save" width:150
	
	on btnPostLoad pressed do
	(
		setupHOD teamColor stripeColor badgeColor
	)
	
	on btnShowDocks pressed do
	(
		visualizeDocks(1)
	)
	
	on btnHideDocks pressed do
	(
		visualizeDocks(0)
	)
	
	on btnShowNavs pressed do
	(
		visualizeNavs(1)
	)
	
	on btnHideNavs pressed do
	(
		visualizeNavs(0)
	)
	
	on btnEngineOn pressed do
	(
		visualizeEngines true
	)
	
	on btnEngineOff pressed do
	(
		visualizeEngines false
	)
	
	on btnBumpOn pressed do
	(
		visualizeBumps(true)
	)
	
	on btnBumpOff pressed do
	(
		visualizeBumps(false)
	)
	
	on btnTeamOn pressed do
	(
		visualizeTeams true teamColor stripeColor
	)
	
	on btnTeamOff pressed do
	(
		visualizeTeams false teamColor stripeColor
	)
	
	on clrTeamColor changed new_col do
	(
		teamColor = new_col
	)
	
	on clrStripeColor changed new_col do
	(
		stripeColor = new_col
	)
	
	on clrBadgeColor changed new_col do
	(
		badgeColor = new_col
	)
	
	on btnUpdateColors pressed do
	(
		visualizeColors teamColor stripeColor badgeColor
	)
	
	on btnBadgeOn picked badgeMap do
	(
		visualizeBadge badgeMap badgeColor
	)
	
	on btnBadgeOff pressed do
	(
		visualizeBadge undefined badgeColor
	)
	
	on btnPreSave pressed do
	(
		cleanHOD()
	)
)

createDialog HODTools_Roll 170 270
