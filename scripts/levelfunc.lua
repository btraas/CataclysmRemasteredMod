if not (RUsRatio) then	RUsRatio = 1	end
if not (PebRatio) then	PebRatio = 7/8	end
if not (NebRatio) then	NebRatio = 1/100	end
if not (RUScale) then	RUScale = 4 * 700 / 575	end
if not (MapScale) then	MapScale = 1 / 3.280839895	end
if not (UniverseScale) then	UniverseScale = 1.2	end
if not (MinSensorsZoomOverride) then	MinSensorsZoomOverride = -1	end
if not (MaxSensorsZoomOverride) then	MaxSensorsZoomOverride = -1	end
if not (AdvancedGameRule) then	AdvancedGameRule = 1	end
if not (RandomSeedValue) then	RandomSeedValue = {763261}	end
if not (ShowTextClouds) then	ShowTextClouds = 0	end

dofilepath("data:scripts/utilfunc.lua")

CountLPs, CountRUs, CountLoops, PebCount = 0, 0, 0, 0
PebNumo, PebDeno = decimal_to_fraction(PebRatio)
debug_objects = 0

--------------------------------------------------------------------------------
-- Map Conversion Data

-- RU conversion table
RUTable =
{
	-- hw1: 11, 25, 40, 100, 400
	-- hwc: 0, 160, 720, 2600, 7920
	-- hw2: 0, 0, 9000, 18000, 40000
	asteroid0 = {"asteroid0",  11, 1,},
	asteroid1 = {"asteroid1",  25, 1,},
	asteroid2 = {"asteroid2",  40, 1,},
	asteroid3 = {"asteroid3", 100, 2,},
	asteroid4 = {"asteroid4", 400, 3,},
	-- hw1: 50, 108, 250, 700, ???
	-- hwc: 50, 108, 250, 700, ???
	dustcloud0 = {"dustcloud0",	  50, 1,},
	dustcloud1 = {"dustcloud1",	 108, 1,},
	dustcloud2 = {"dustcloud2",	 250, 1,},
	dustcloud3 = {"dustcloud3",	 700, 1,},
	dustcloud4 = {"dustcloud3", 1500, 1,},
	-- hw1: 100, 100, 100, 100
	-- hwc: 100, 100, 100, 100
	nebula0 = {"nebula0", 100, 1,},
	nebula1 = {"nebula0", 100, 1,},
	nebula2 = {"nebula0", 100, 1,},
	nebula3 = {"nebula0", 100, 1,},
	nebula4 = {"nebula0", 100, 1,},
	-- hwc: 0, 0
	-- hwc: 6000, 10000
	dcrystal0 = {"hwccrystal_1",  6000, 1,},
	dcrystal1 = {"hwccrystal_2", 10000, 1,},
}

-- cloud types & radii (temporary)
CloudScale =
{
	dustcloud0 = {"dustcloud0",	 100,},
	dustcloud1 = {"dustcloud1",	 200,},
	dustcloud2 = {"dustcloud2",	 600,},
	dustcloud3 = {"dustcloud3",	1200,},
	dustcloud4 = {"dustcloud3",	1800,},
	-- hw1: ?
	-- hwc: ?
	-- hwrm: 85.75
	nebula0 = {"nebula0",	85.75,},
	nebula1 = {"nebula0",	85.75,},
	nebula2 = {"nebula0",	85.75,},
	nebula3 = {"nebula0",	85.75,},
	nebula4 = {"nebula0",	85.75,},
}

PebTypes =
{
	"pebble_0",
	"pebble_1",
	"pebble_2",
}

-- ship conversion table
ShipTable =
{
	-- done
	r1 =
	{
		advancesupportfrigate = "kus_supportfrigate",
		attackbomber = "kus_attackbomber",
		carrier = "kus_carrier",
		cloakedfighter = "kus_cloakedfighter",
		cloakgenerator = "kus_cloakgenerator",
		cryotray = "kus_cryotray",
		dddfrigate = "kus_dronefrigate",
		drone = "kus_drone0",
		gravwellgenerator = "kus_gravwellgenerator",
		headshotasteroid = "kus_headshotasteroid",
		heavycorvette = "kus_heavycorvette",
		heavycruiser = "kus_heavycruiser",
		heavydefender = "kus_defender",
		heavyinterceptor = "kus_interceptor",
		ioncannonfrigate = "kus_ioncannonfrigate",
		lightcorvette = "kus_lightcorvette",
		lightdefender = "kus_lightdefender",
		lightinterceptor = "kus_scout",
		minelayercorvette = "kus_minelayercorvette",
		missiledestroyer = "kus_missiledestroyer",
		mothership = "kus_mothership",
		multiguncorvette = "kus_multiguncorvette",
		probe = "kus_probe",
		proximitysensor = "kus_proximitysensor",
		repaircorvette = "kus_repaircorvette",
		researchship = "kus_assaultfrigate",
		resourcecollector = "kus_resourcecollector",
		resourcecontroller = "kus_resourcecontroller",
		salcapcorvette = "kus_salvagecorvette",
		sensorarray = "kus_sensorarray",
		standarddestroyer = "kus_destroyer",
		standardfrigate = "kus_assaultfrigate",
		targetdrone = "kus_targetdrone",
	},
	-- done
	r2 =
	{
		advancesupportfrigate = "tai_supportfrigate",
		attackbomber = "tai_attackbomber",
		carrier = "tai_carrier",
		cloakgenerator = "tai_cloakgenerator",
		cryotray = "tai_cryotray",
		defensefighter = "tai_defensefighter",
		dfgfrigate = "tai_fieldfrigate",
		gravwellgenerator = "tai_gravwellgenerator",
		headshotasteroid = "tai_headshotasteroid",
		heavycorvette = "tai_heavycorvette",
		heavycruiser = "tai_heavycruiser",
		heavydefender = "tai_defender",
		heavyinterceptor = "tai_interceptor",
		ioncannonfrigate = "tai_ioncannonfrigate",
		lightcorvette = "tai_lightcorvette",
		lightdefender = "tai_lightdefender",
		lightinterceptor = "tai_scout",
		minelayercorvette = "tai_minelayercorvette",
		missiledestroyer = "tai_missiledestroyer",
		mothership = "tai_mothership",
		multiguncorvette = "tai_multiguncorvette",
		probe = "tai_probe",
		proximitysensor = "tai_proximitysensor",
		repaircorvette = "tai_repaircorvette",
		researchship = "tai_assaultfrigate",
		resourcecollector = "tai_resourcecollector",
		resourcecontroller = "tai_resourcecontroller",
		salcapcorvette = "tai_salvagecorvette",
		sensorarray = "tai_sensorarray",
		standarddestroyer = "tai_destroyer",
		standardfrigate = "tai_assaultfrigate",
		targetdrone = "tai_targetdrone",
	},
	-- done
	p1 =
	{
		p1fighter = "tur_fighter",
		p1ionarrayfrigate = "tur_ionarrayfrigate",
		p1missilecorvette = "tur_missilecorvette",
		p1mothership = "tur_p1mothership",
		p1standardcorvette = "tur_standardcorvette",
	},
	-- done
	p2 =
	{
		p2advanceswarmer = "kad_advancedswarmer",
		p2fuelpod = "kad_fuelpod",
		p2mothership = "kad_p2mothership",
		p2multibeamfrigate = "kad_multibeamfrigate",
		p2swarmer = "kad_swarmer",
	},
	p3 =
	{
		p3frigate = "kpr_mover",												-- ???
		p3megaship = "misc_t-matmegaship",
		p3destroyer = "kpr_destroyer",											-- ???
	},
	traders =
	{
		cargobarge = "ben_cargobarge",
		floatingcity = "ben_bentusiexchange",
		ghostship = "der_ghostship",
		junk_lgun = "junk_autogunl",
		junk_sgun = "junk_autoguns",
		junkyarddawg = "junk_junkyarddog",
		junkyardhq = "junk_junkyardoffice",
		miningbase = "meg_gehenna_1",											-- ???
		researchstation = "meg_sajhulkturret",									-- ???
		researchstationbridge = "meg_sajhulknose",								-- ???
		researchstationtower = "meg_sajhulkpanels",								-- ???
	},
	-- mostly done
	derelicts =
	{
		advancesupportfrigate = "der_supportfrigate",
		angelmoon = "meg_angelmoon",
		angelmoon_clean = "meg_angelmoon",
		carrier = "der_carrier",
		crate = "der_crate",
		dddfrigate = "der_dddfrigate",
		fragment = "meg_foundrydebris_chunk4",									-- ???
		fragmentpanel0a = "der_fragmentpanel0a",
		fragmentpanel0b = "der_fragmentpanel0b",
		fragmentpanel0c = "der_fragmentpanel0c",
		fragmentpanel1 = "der_fragmentpanel1",
		fragmentpanel2 = "der_fragmentpanel2",
		fragmentpanel3 = "der_fragmentpanel3",
		fragmentstrut = "der_fragmentstrut",
		heavycorvette = "der_heavycorvette",
		heavycruiser = "der_heavycruiser",
		homeworld = "meg_homeworld",
		ioncannonfrigate = "hgn_ioncannonfrigate",								-- ???
		junk0_antenna = "der_junk0_antenna",
		junk0_fin1 = "der_junk0_fin1",
		junk0_fin2 = "der_junk0_fin2",
		junk0_gunammo = "der_junk0_gunammo",
		junk0_lgun = "hgn_gunplatform",											-- ???
		junk0_panel = "der_junk0_panel",
		junk0_sensors = "der_junk0_sensors",
		junk0_sgun = "hgn_gunturret",											-- ???
		junk1_parta = "der_junk1_parta",
		junk1_partb = "der_junk1_partb",
		junk1_shell = "der_junk1_shell",
		junk1_strut = "der_junk1_strut",
		junk2_panela = "der_junk2_panela",
		junk2_panelb = "der_junk2_panelb",
		junk2_panelc = "der_junk2_panelc",
		junk2_paneld = "der_junk2_paneld",
		junk2_shipwreck = "der_junk2_shipwreck",
		junk3_boiler = "der_junk3_boiler",
		junk3_boilercasing = "der_junk3_boilercasing",
--		lifeboat = "der_lifeboat",		-- crashes the game
		lifeboat = "der_junk0_panel",
		lightcorvette = "der_lightcorvette",
		m13panela = "meg_foundrydebris_chunk1",									-- ???
		m13panelb = "meg_foundrydebris_chunk2",									-- ???
		m13panelc = "meg_foundrydebris_chunk3",									-- ???
		minelayercorvette = "der_minelayercorvette",
		multiguncorvette = "der_multiguncorvette",
		planetoforigin = "meg_kharak",
		planetoforigin_scarred = "meg_kharakburned",
		prisonshipnew = "der_prisonshipnew",
		prisonshipold = "der_prisonshipold",
		repaircorvette = "der_repaircorvette",
		resourcecontroller = "sp_tanker",										-- ???
		salcapcorvette = "meg_salvagecollector",								-- ???
		scaffold = "der_scaffold",
		scaffold_scarred = "der_scaffold_scarred",
		scaffoldfingera_scarred = "der_scaffoldfingera_scarred",
		scaffoldfingerb_scarred = "der_scaffoldfingerb_scarred",
		shipwreck = "der_shipwreck",
		standardfrigate = "meg_misslefrigate",
	},
	race_sect =
	{
		smothership = "hgn_mothership",
		srecon = "hgn_scout",
		sacolyte = "hgn_interceptor",
		smimic = "hgn_attackbomber",
		sacv = "hgn_assaultcorvette",
		smcv = "hgn_pulsarcorvette",
		srammingfrigate = "hgn_marinefrigate",
		smultibeamfrigate = "hgn_ioncannonfrigate",
		shivefrigate = "hgn_assaultfrigate",
		sdestroyer = "hgn_destroyer",
		sdreadnought = "hgn_battlecruiser",
		scarrier = "hgn_carrier",
		sprocessor = "hgn_resourcecontroller",
		sworker = "hgn_resourcecollector",
		sleech = "hgn_ionturret",
		ssentinel = "hgn_gunturret",
	},
	race_beast =
	{
		bmothership = "vgr_mothership",
		brecon = "vgr_scout",
		bacolyte = "vgr_lancefighter",
		binterceptor = "hgn_interceptor",
		bcloakedfighter = "vgr_lancefighter",
		battackbomber = "vgr_bomber",
		bmultiguncorvette = "vgr_assaultcorvette",
		bmissilecorvette = "vgr_missilecorvette",
		bheavycorvette = "vgr_lasercorvette",
		bionarrayfrigate = "vgr_assaultfrigate",
		bmultibeamfrigate = "vgr_heavymissilefrigate",
		bhivefrigate = "vgr_assaultfrigate",
		bdfgfrigate = "vgr_infiltratorfrigate",
		brammingfrigate = "vgr_infiltratorfrigate",
		bmissiledestroyer = "vgr_destroyer",
		bheavycruiserbcarrier = "vgr_battlecruiser",
		bprocessor = "vgr_resourcecontroller",
		bworker = "vgr_resourcecollector",
		bcruisemissile = "vgr_planetkillermissile",
		bsentinel = "vgr_weaponplatform_gun",
	},
	-- done
	race_kushan =
	{
		kcarrier = "kus_carrier",
		kheavyinterceptor = "kus_interceptor",
		kheavydefender = "kus_defender",
		kattackbomber = "kus_attackbomber",
		kheavycorvette = "kus_heavycorvette",
		kmultiguncorvette = "kus_multiguncorvette",
		ksalcapcorvette = "kus_salvagecorvette",
		kioncannonfrigate = "kus_ioncannonfrigate",
		kadvancesupportfrigate = "kus_supportfrigate",
		kstandarddestroyer = "kus_destroyer",
		kheavycruiser = "kus_heavycruiser",
		kproximitysensor = "kus_proximitysensor",
		kgravwellgenerator = "kus_gravwellgenerator",
	},
	-- done
	race_taidan =
	{
		tcarrier = "tai_carrier",
		theavyinterceptor = "tai_interceptor",
		tattackbomber = "tai_attackbomber",
		theavydefender = "tai_defender",
		tmultiguncorvette = "tai_multiguncorvette",
		tminelayercorvette = "tai_minelayercorvette",
		tsalcapcorvette = "tai_salvagecorvette",
		tstandardfrigate = "tai_assaultfrigate",
		tioncannonfrigate = "tai_ioncannonfrigate",
		tadvancesupportfrigate = "tai_supportfrigate",
		tdfgfrigate = "tai_fieldfrigate",
		tstandarddestroyer = "tai_destroyer",
		tmissiledestroyer = "tai_missiledestroyer",
		theavycruiser = "tai_heavycruiser",
		tresourcecollector = "tai_resourcecollector",
		tproximitysensor = "tai_proximitysensor",
		tgravwellgenerator = "tai_gravwellgenerator",
	},
	race_p1 =
	{
		p1mothership = "tur_p1mothership",
		p1outpost = "meg_tanis",												-- ???
		p1fighter = "tur_fighter",
		p1standardcorvette = "tur_standardcorvette",
		p1missilecorvette = "tur_missilecorvette",
		p1ionarrayfrigate = "tur_ionarrayfrigate",
	},
	race_traders =
	{
		trcargobarge = "ben_cargobarge",
		trghostship = "der_ghostship",
		trfloatingcity = "ben_bentusiexchange",
		trjunk_lgun = "junk_autogunl",
		trjunk_sgun = "junk_autoguns",
		trjunkyarddawg = "junk_junkyarddog",
		trjunkyardhq = "junk_junkyardoffice",
		trminingbase = "vgr_prisonstation",										-- ???
		trresearchstation = "vgr_listeningpost",								-- ???
	},
	race_derelict =
	{
		homeworld = "meg_homeworld",
		lavaball = "meg_gehenna_6",												-- ???
		mattworld = "meg_angelmoon",											-- ???
		planetoforigin = "meg_kharak",
		planetoforigin_scarred = "meg_kharakburned",
		galaxy = "meg_tanis",													-- ???
		dcrystal0 = "junk_autogunl",											-- resources
		dcrystal1 = "junk_autogunl",											-- resources
		dplanetoforigin = "meg_kharak",
		ddeadplanet = "meg_kharakburned",										-- ???
		dfirstplanet = "meg_kharak",											-- ???
		ghostship = "der_ghostship",
		decclesiam = "kad_fuelpod",												-- ???
		decclesiaminfected = "kad_fuelpod",										-- ???
		dprisonship = "der_prisonshipnew",
		dprisonshipinfected = "der_prisonshipold",								-- ???
		dnomadfieldemitter = "meg_relic_rugenerator",							-- ???
		dnomadmoon = "meg_angelmoon",											-- ???
		dbiggun = "meg_sajhulkturret",											-- ???
		dbiggununit = "meg_sajhulknose",										-- ???
		djunk1parta = "der_junk1_parta",
		djunk1shell = "der_junk1_shell",
		djunk1strut = "der_junk1_strut",
		djunk2shipwreck = "der_junk2_shipwreck",
		djunk3boiler = "der_junk3_boiler",
		djunk3boilercasing = "der_junk3_boilercasing",
		dbeastdockingbay = "meg_tanisstructure_medium",							-- ???
		dbeastmothership = "meg_foundry",										-- ???
		dacolyte = "kpr_attackdroid",											-- ???
		dionarrayfrigate = "tur_ionarrayfrigate",								-- ???
		dioncannonfrigate = "kus_ioncannonfrigate",								-- ???
		dkushancarrier = "kus_carrier",											-- ???
		drko = "kus_targetdrone",												-- ???
		dcrate = "meg_crate_hw1container",										-- ???
		dbuoy = "kus_targetdrone",												-- ???
		dmessagepod = "kus_targetdrone",										-- ???
		dnisbuoy = "kus_targetdrone",											-- ???
		dcrate = "meg_crate_hw1container",
		dcrystal0 = "meg_crate_hw1container",									-- resources
		dcrystal1 = "meg_crate_hw1container",									-- resources
		dslipgatelarge = "meg_balcoragate",										-- ???
		dslipgatemedium = "meg_balcoragate",									-- ???
		dslipgatesmall = "meg_balcoragate",										-- ???
		dslipgatesmall = "meg_balcoragate",										-- ???
		dslipgatenode = "meg_balcoragate",										-- ???
	},
}

MusicTable =
{
	["-1"] = nil,
	-- hw1 ambient
	["0"] = "data:sound/music/ambient/a02_mission2and4",
	["1"] = "data:sound/music/ambient/a04_mission5",
	["2"] = "data:sound/music/ambient/a05_mission6and12",
	["3"] = "data:sound/music/ambient/a06_mission7and8",
	["4"] = "data:sound/music/ambient/a07_mission9",
	["5"] = "data:sound/music/ambient/a08_mission10",
	["6"] = "data:sound/music/ambient/a09_mission11and15",
	["7"] = "data:sound/music/ambient/a11_mission13",
	["8"] = "data:sound/music/ambient/a12_mission14",
	["9"] = "data:sound/music/ambient/tutorial",
	-- hw1 battle
	["10"] = "data:sound/music/battle/a01_mission1and16",
	["11"] = "data:sound/music/battle/a03_mission3",
	["12"] = "data:sound/music/battle/b01_turanicraiderslong",
	["13"] = "data:sound/music/battle/b02_turanicraidersshort",
	["14"] = "data:sound/music/battle/b03_swarmers",
	["15"] = "data:sound/music/battle/b04_evilempire",
	["16"] = "data:sound/music/battle/nislet01",
	-- hw1 NIS
	["17"] = "data:sound/music/nis/n01_r1opening",
	["18"] = "data:sound/music/nis/n01_r2opening",
	["19"] = "data:sound/music/nis/n02_p1intro",
	["20"] = "data:sound/music/nis/n03_tradersintro",
	["21"] = "data:sound/music/nis/n04_learnofsacking",
	["22"] = "data:sound/music/nis/n05_p2intro",
	["23"] = "data:sound/music/nis/n06_supernova",
	["24"] = "data:sound/music/nis/n07_p3vstraders",
	["25"] = "data:sound/music/nis/n08_awareness",
	["26"] = "data:sound/music/nis/n09_headshot",
	["27"] = "data:sound/music/nis/n10_miningfacility",
	["28"] = "data:sound/music/nis/n10_miningfacility",			-- Yes is gone
	-- hw1 animatic
	["29"] = "data:sound/music/animatic/anim_00_opening",		-- Sierra is gone
	["30"] = "data:sound/music/animatic/anim_00_opening",		-- Relic is gone
	["31"] = "data:sound/music/animatic/anim_00_opening",
	["32"] = "data:sound/music/animatic/anim_01_02",
	["33"] = "data:sound/music/animatic/anim_02_03",
	["34"] = "data:sound/music/animatic/anim_03_04",
	["35"] = "data:sound/music/animatic/anim_04_05",
	["36"] = "data:sound/music/animatic/anim_05_06",
	["37"] = "data:sound/music/animatic/anim_06_07",
	["38"] = "data:sound/music/animatic/anim_07_08",
	["39"] = "data:sound/music/animatic/anim_08_09",
	["40"] = "data:sound/music/animatic/anim_09_10",
	["41"] = "data:sound/music/animatic/anim_10_11",
	["42"] = "data:sound/music/animatic/anim_11_12",
	["43"] = "data:sound/music/animatic/anim_12_13",
	["44"] = "data:sound/music/animatic/anim_13_14",
	["45"] = "data:sound/music/animatic/anim_14_15",
	["46"] = "data:sound/music/animatic/anim_15_16",
	["47"] = "data:sound/music/animatic/anim_ending",
	-- cata
	["48"] = "data:sound/music/battle/battle_04",								-- ???
	["49"] = "data:sound/music/battle/battle_04",								-- ???
}

BackgroundTable =
{
	default = "m02",
	-- hw1
	ez01 = "ez01",
	ez02 = "ez02",
	ez03 = "ez03",	-- doesn't exist, but some maps reference it anyway
	ez04 = "ez04",
	ez05 = "ez05",
	ez06 = "ez06",
	ez07 = "ez07",
	ez08 = "ez08",
	ez09 = "ez09",
	ez10 = "ez10",
	ez11 = "ez11",
	ez12 = "ez12",
	ez13 = "ez13",
	ez14 = "ez14",
	ez15 = "ez15",
	ez16 = "ez16",
	-- cata
	mission01 = "m01",
	mission02 = "m07",
	mission03 = "m07",
	mission04 = "m15",
	mission05 = "m15",
	mission06 = "m13",
	mission07 = "m08",
	mission08 = "m14",
	mission09 = "m09",
	mission10 = "m10",
	mission11 = "m11",
	mission12 = "m06",
	mission13 = "m03",
	mission14 = "m04",
	mission15 = "m05",
	mission16 = "m12",
	mission17 = "m12",
	nis01 = "m01",
	nis02 = "m07",
	nis03 = "m07",
	nis04 = "m15",
	nis05 = "m15",
	nis06 = "m13",
	nis07 = "m08",
	nis08 = "m14",
	nis09 = "m09",
	nis10 = "m10",
}


--------------------------------------------------------------------------------
-- Standard Map Code

if (NumberOfPlayers == 2) then
	DescColor = "FF4800"
elseif (NumberOfPlayers == 3) then
	DescColor = "FF0048"
elseif (NumberOfPlayers == 4) then
	DescColor = "48FF00"
elseif (NumberOfPlayers == 5) then
	DescColor = "00FF48"
elseif (NumberOfPlayers == 6) then
	DescColor = "4800FF"
elseif (NumberOfPlayers == 7) then
	DescColor = "0048FF"
elseif (NumberOfPlayers == 8) then
	DescColor = "FF48FF"
end

levelDesc = [[<c=]] .. DescColor .. [[>]] .. SourceGame .. [[ - ]] .. LevelName .. [[</c>]]
maxPlayers = NumberOfPlayers
player = {}

for k = 0, maxPlayers - 1 do
	player[k] = {id = k, name = "", raceName = "Vaygr", resources = 1500, startPos = 1,}
end

function DetermChunk()
	-- level thumbnail generation stuff
	if (ShowTextClouds == 1) then
		addCamera("pieplatetest", {0,0,0,}, {0,1,0,})		-- 32768
	end

	setWorldBoundsInner({0, 0, 0,}, convert_position(vmultiply(UniverseSize, UniverseScale)))
	for i, iCount in StartPoints do
		AddStartPoints(i, iCount)
	end
	if (AdvancedGameRule == 1) then
		print("hwclassicmaps: AdvancedGameRule detected.")
		addPoint("PointOfNoReturn", {0,100000,0,}, {0,0,0,})
		addNebula("DeadMansJump", "MP_Bentusi_Radiation", {0,100000,0,}, {0,0,0,0,}, 0, 10000)
		SpawnPlayerFleet()
	else
		print("hwclassicmaps: AdvancedGameRule not detected.")
	end
	for i, iCount in Derelicts do
		AddSquadrons("", iCount[1], iCount[2], iCount[3], iCount[4], iCount[5], 0, "derelicts")
	end

	-- derelicts and squadrons aren't currently stored in separate tables though they will/should be
	-- until formations are properly supported, only add one of each ship otherwise you will have overlapping ships and lots of lag as they try to spread out
	-- even with formations properly supported, the lag is still going to be considerably higher than it ever was in HW1
	-- alternately, I could just ignore squadrons entirely and only spawn derelicts since AI squadrons just sit there not doing anything unlike in HW1
--	for i, iCount in Squadrons do
--		local sFormation = iCount[]
--		if (sFormation == "null_formation") then
--		elseif (sFormation == "parade_formation") then
--		elseif (sFormation == "delta_formation") then
--		elseif (sFormation == "broad_formation") then
--		elseif (sFormation == "delta3d_formation") then
--		elseif (sFormation == "claw_formation") then
--		elseif (sFormation == "wall_formation") then
--		elseif (sFormation == "sphere_formation") then
--		elseif (sFormation == "picket_formation") then
--		else
--			print("hwclassicmaps: formation type " .. sFormation .. " not recognized.")
--		end
--		for j = 1, iCount[1] do
--			AddSquadrons(iCount[2], iCount[3], iCount[4], iCount[5], iCount[6], iCount[7], 0, iCount[9])
--		end
--	end

	local ResourceBlobs = 0
	for i, iCount in Resources do
		AddResources(iCount[1], iCount[2], iCount[3], iCount[4], iCount[5], iCount[6], iCount[7], iCount[8])
		ResourceBlobs = ResourceBlobs + 1
	end
	for i, iCount in Nebulae do
		AddNebulas(iCount[1], iCount[2], iCount[3], iCount[4], iCount[5], iCount[6], iCount[7], iCount[8])
		ResourceBlobs = ResourceBlobs + 1
	end
	for i, iCount in Crystals do
		AddCrystals(iCount[1], iCount[2], iCount[3])
		ResourceBlobs = ResourceBlobs + 1
	end

	print("hwclassicmaps: CountLPs = " .. CountLPs)
	print("hwclassicmaps: CountRUs = " .. CountRUs)
	print("hwclassicmaps: CountLoops = " .. CountLoops)
	print("hwclassicmaps: ResourceBlobs = " .. ResourceBlobs)
end

function NonDetermChunk()
	local MinSensorsZoom = SensorsZoom[1] * MapScale
	local MaxSensorsZoom = SensorsZoom[2] * MapScale
	if (MinSensorsZoomOverride ~= -1) then
		MinSensorsZoom = max(SensorsZoom[1] * MapScale, MinSensorsZoomOverride)
	end
	if (MaxSensorsZoomOverride ~= -1) then
		MaxSensorsZoom = min(SensorsZoom[2] * MapScale, MaxSensorsZoomOverride)
	end

	setSensorsManagerCameraDistances(MinSensorsZoom, MaxSensorsZoom)
	setGlareIntensity(0)
	setLevelShadowColour(0, 0, 0, 1)
	if (BackgroundTable[LevelBackground]) then
		loadBackground(BackgroundTable[LevelBackground])
		print("hwclassicmaps: background " .. LevelBackground .. " loaded.")
	else
		loadBackground(BackgroundTable["default"])
		print("hwclassicmaps: background " .. LevelBackground .. " not recognized, loading default instead.")
	end
	if (MusicTable[LevelMusic]) then
		setDefaultMusic(MusicTable[LevelMusic])
		print("hwclassicmaps: music " .. LevelMusic .. " loaded.")
	else
		setDefaultMusic(MusicTable["0"])
		print("hwclassicmaps: music " .. LevelMusic .. " not recognized, loading default instead.")
	end
end


--------------------------------------------------------------------------------
-- Custom Functions

--CountLPs, CountRUs = 0, 0
CountFormation = {0,0,0,0,0,0,0,0}

function SpawnPlayerFleet()
	for i = 1, maxPlayers do
		createSOBGroup("HE_Formation" .. i)
	end
	for i, iCount in StartShips do
		-- [Amnt, Name, Type, Coo, Plyr, Ang, Size, Hyper, Race, Form]
		local ShipNumber, ShipName, ShipType, ShipPosition, iPlayer, ShipRotation = iCount[1], iCount[2], iCount[3], iCount[4], iCount[5], iCount[6]
		if (iPlayer < maxPlayers) then
			local iPlayerPlus = iPlayer + 1
			local PlayerStart = StartPoints[iPlayerPlus]
			local SquadNum = CountFormation[iPlayerPlus]
			local SquadName = "HE_Player" .. iPlayerPlus .. "Squadron" .. SquadNum
			local SquadGroup = "HE_Formation" .. iPlayerPlus
			CountFormation[iPlayerPlus] = SquadNum + 1
			if ((ShipPosition[1] == 0) and (ShipPosition[2] == 0) and (ShipPosition[3] == 0)) then
				ShipPosition[1] = PlayerStart[1]
				ShipPosition[2] = PlayerStart[2]
				ShipPosition[3] = PlayerStart[3]
				ShipRotation[3] = PlayerStart[4]
			end
			if ((ShipPosition[1] == PlayerStart[1]) and (ShipPosition[2] == PlayerStart[2]) and (ShipPosition[3] == PlayerStart[3])) then
				local Angle = PlayerStart[4] + 180
				local Radius = 5000
				local AdjX = cos(Angle) * Radius
				local OppY = sin(Angle) * Radius
				-- do these positions need to be converted?
				ShipPosition = {ShipPosition[1] + AdjX, ShipPosition[2] + OppY, ShipPosition[3],}
			end
			for j = 1, ShipNumber do
				-- sName, sType, tPosition, iPlayer, tRotation, iNum, bHyper, sRace
				AddSquadrons(SquadName .. "_" .. j, ShipType, ShipPosition, iPlayer, ShipRotation, iCount[7], 1, iCount[9])
				addToSOBGroup(SquadName .. "_" .. j, SquadGroup)
			end
		end
	end
end

function AddStartPoints(i, tCoords)
	local StartCoo = convert_position(tCoords)
	local StartRot = {0,tCoords[4] - 90,0}
	print_objects("addPoint(\"StartPos" .. (i - 1) .. "\", " .. vstr(StartCoo) .. ", " .. vstr(StartRot) .. ")")
	addPoint("StartPos" .. (i - 1), StartCoo, {0, tCoords[4] - 90, 0,})
	-- map thumbnail stuff
	if (ShowTextClouds == 1) then
		addCloud("cloud_text_" .. i, "cloud_text_" .. i, StartCoo, {1, 1, 1, 1}, 0, 4096)
	end
end

function AddSquadrons(sName, sType, tPosition, iPlayer, tRotation, iNumber, bHyper, sRace)
	iNumber = 10
	local RUType = ShipTable[sRace][sType]
	if ((RUType ~= "") and (RUType ~= nil) and (iPlayer < maxPlayers)) then
		local new_coords = convert_position(tPosition)
		local new_rotation = convert_rotation(tRotation)
		print_objects("addSquadron(\"" .. sName .. "\", \"" .. RUType .. "\", " .. vstr(new_coords) .. ", " .. iPlayer .. ", " .. vstr(new_rotation) .. ", " .. iNumber .. ", " .. bHyper .. ")")
		-- addSquadron(<sSquadronName>, <sSquadronType>, <tPosition>, <iPlayerIndex>, <tRotation>, <iNumberShips>, <bHyperspace>)
		addSquadron(sName, RUType, new_coords, iPlayer, new_rotation, iNumber, bHyper)
	else
		print("hwclassicmaps: AddSquadrons: ship type " .. sType .. " not recognized. Skipping.")
	end
end

function AddCrystals(iAmount, sType, tPosition)
	local RUType = RUTable[sType][1]
	local RUValue = RUTable[sType][2] * RUScale
	local RULatch = RUTable[sType][3]
	if (iAmount > 1) then
		for j = 1, iAmount do
			local r, u, v = 10000, srandom3(RandomSeedValue, 180), srandom3(RandomSeedValue, 360)
			local cooX = r * cos(u)
			local cooY = r * sin(v) * sin(u)
			local cooZ = r * cos(v) * sin(u)
			local tCoordinates = convert_position({tPosition[1] + cooX, tPosition[2] + cooY, tPosition[3] + cooZ})
			print_objects("addSalvage(\"" .. RUType .. "\", " .. vstr(tCoordinates) .. ", " .. RUValue .. ", 0, 0, 0, 0)")
			addSalvage(RUType, tCoordinates, RUValue, 0, 0, 0, 0)
		end
	else
		local tCoordinates = convert_position(tPosition)
		print_objects("addSalvage(\"" .. RUType .. "\", " .. vstr(tCoordinates) .. ", " .. RUValue .. ", 0, 0, 0, 0)")
		addSalvage(RUType, tCoordinates, RUValue, 0, 0, 0, 0)
	end
	CountLoops = CountLoops + iAmount
	CountLPs = CountLPs + iAmount * RULatch
	CountRUs = CountRUs + iAmount * RUValue
end

function AddNebulas(tPosition, sLayout, sDistribution, iNumStrands, fSizX, fSizY, fSizZ, iNumChunks)
	iNumStrands = ceil(iNumStrands * NebRatio)
	iNumChunks = ceil(iNumChunks * NebRatio)
	local RUValue = 100/NebRatio * RUScale
	for i = 1, iNumStrands do
		local tChunkTable = {}
		local oldU = 0
		local oldV = 0
		local NewX = 0
		local NewY = 0
		local NewZ = 0
		local iTmpChunks = floor(iNumChunks/iNumStrands)		-- maybe do a max number of chunks per strand?
--		local iTmpChunks = 0
--		if (i == iNumStrands) then
--			iTmpChunks = iNumChunks
--		else
--			iTmpChunks = srandom(RandomSeedValue, 0, iNumChunks)
--			iNumChunks = iNumChunks - iTmpChunks
--		end
		for j = 1, iTmpChunks do
			if (j == 1) then
--				local radius = sqrt(srandom(RandomSeedValue)) * 0.5
				local radius = srandom(RandomSeedValue) * 0.5
				oldU = srandom(RandomSeedValue) * 180
				oldV = srandom(RandomSeedValue) * 360
				local CooX = radius * sin(oldV) * sin(oldU)
				local CooY = radius * cos(oldV) * sin(oldU)
				local CooZ = radius * cos(oldU)
				NewX = CooX
				NewY = CooY
				NewZ = CooZ
--				NewX = srandom(RandomSeedValue) - 0.5
--				NewY = srandom(RandomSeedValue) - 0.5
--				NewZ = srandom(RandomSeedValue) - 0.5
				tChunkTable[j] = {NewX, NewY, NewZ}
			else
				repeat
					local radius = (1 - srandom(RandomSeedValue) * srandom(RandomSeedValue)) * 0.1
					oldU = oldU + srandom(RandomSeedValue) * srandom(RandomSeedValue) *  90 * srandomSign(RandomSeedValue)
					oldV = oldV + srandom(RandomSeedValue) * srandom(RandomSeedValue) * 180 * srandomSign(RandomSeedValue)
					local CooX = radius * sin(oldV) * sin(oldU)
					local CooY = radius * cos(oldV) * sin(oldU)
					local CooZ = radius * cos(oldU)
					NewX = tChunkTable[j-1][1] + CooX
					NewY = tChunkTable[j-1][2] + CooY
					NewZ = tChunkTable[j-1][3] + CooZ
					tChunkTable[j] = {NewX, NewY, NewZ}
				until ((abs(NewX) <= 0.5) and (abs(NewY) <= 0.5) and (abs(NewZ) <= 0.5))		-- maybe check versus a sphere instead
				local old_table = convert_position({tChunkTable[j-1][1] * fSizX, tChunkTable[j-1][2] * fSizY, tChunkTable[j-1][3] * fSizZ})
				local new_table = convert_position({  tChunkTable[j][1] * fSizX,   tChunkTable[j][2] * fSizY,   tChunkTable[j][3] * fSizZ})
				local rotate_val = srandom(RandomSeedValue) * 360
				print_objects("addNebulaWithResources(\"NebulaGroup0\", \"Nebula0\", " .. vstr(new_table) .. ", " .. RUValue .. ", {37.000000, 17.000000, 48.000000, 163.000000}, " .. rotate_val .. ", 1000, 0)")
				addNebulaWithResources("NebulaGroup0", "Nebula0", new_table, RUValue, {37.000000, 17.000000, 48.000000, 163.000000}, rotate_val, 1000, 0)
				addTendrils(old_table, new_table)
			end
		end
	end
	CountLoops = CountLoops + iNumStrands
	CountLPs = CountLPs + iNumChunks
	CountRUs = CountRUs + iNumChunks * RUValue
end

function AddResources(tPosition, sLayout, sDistribution, iNumResources, fA, fB, fRotY, fRotZ)
	local Relative, iModulos = 0, 0
	for k, iCount in Distributions[sDistribution] do
		if (RUTable[k]) then
			Relative = Relative + iCount
		else
			Distributions[sDistribution][k] = 0
			print("hwclassicmaps: AddResources: resource type " .. k .. " not recognized.")
		end
	end
	if (Relative > 0) then
		for k, iCount in Distributions[sDistribution] do
			if (iCount > 0) then
				local kRes = RUTable[k]
				local RUType = kRes[1]
				local RUValue = kRes[2] * RUScale
				local RULatch = kRes[3]
				local Amount = iNumResources * iCount / Relative
				if (RUsRatio > 0) then
					RUValue = RUValue / RUsRatio
					Amount = Amount * RUsRatio
				end
				if (PebRatio > 0) then
					RUValue = RUValue / (1-PebRatio)
				end
				RUValue = round(RUValue)	-- can be wildly inconsistent
				Amount = round(Amount)
				iModulos = iModulos + mod(iCount * iNumResources, Relative)
				for j = 1, Amount do
					local cooX, cooY, cooZ = 0, 0, 0
					if (sLayout == "cylinder") then
						local r, w, v = sqrt(srandom(RandomSeedValue)) * fA, srandom3(RandomSeedValue, -fB, fB), srandom(RandomSeedValue) * 360
						cooX = w / 2
						cooY = r * sin(v)
						cooZ = r * cos(v)
					elseif (sLayout == "sphere") then
						local r, u, v = sqrt(srandom(RandomSeedValue)) * fA, srandom(RandomSeedValue) * 180, srandom(RandomSeedValue) * 360
						cooX = r * cos(u)
						cooY = r * sin(v) * sin(u)
						cooZ = r * cos(v) * sin(u)
					elseif (sLayout == "rectangle") then
						local l, w, h = srandom3(RandomSeedValue, -fA, fA), srandom3(RandomSeedValue, -fB, fB), srandom3(RandomSeedValue, -fRotY, fRotY)
						cooX = l
						cooY = w
						cooZ = h
						fRotY = 0
					-- should never happen
					elseif (sLayout == "nebula") then
						print("hwclassicmaps: AddResources: A nebula got into my resources! Bad nebula!!")
					end
--					print_objects("-- sLayout = " .. sLayout .. ", cooX = " .. cooX .. ", cooY = " .. cooY .. ", cooZ = " .. cooZ .. ", j = " .. j)
					local yCooX = cooX * cos(fRotY) + cooZ * sin(fRotY)
					local yCooY = cooY * 1
					local yCooZ = cooX * -1 * sin(fRotY) + cooZ * cos(fRotY)
					local zCooX = yCooX * cos(fRotZ) - yCooY * sin(fRotZ)
					local zCooY = yCooX * sin(fRotZ) + yCooY * cos(fRotZ)
					local zCooZ = yCooZ * 1
					local tCoordinates = convert_position({tPosition[1] + zCooX, tPosition[2] + zCooY, tPosition[3] + zCooZ})
					if ((PebRatio > 0) and (PebCount < PebNumo)) then
						local temp_peb = ceil(srandom(RandomSeedValue) * srandom(RandomSeedValue) * getn(PebTypes))
						print_objects("addPebble(\"" .. PebTypes[temp_peb] .. "\", " .. vstr(tCoordinates) .. ", 0, 0, 0)")
						addPebble(PebTypes[temp_peb], tCoordinates, 0, 0, 0)
					else
						if ((k == "dustcloud0") or (k == "dustcloud1") or (k == "dustcloud2") or (k == "dustcloud3") or (k == "dustcloud4")) then
							print_objects("addDustCloudWithResources(\"CloudNameToIgnore\", \"" .. RUType .. "\", " .. RUValue .. ", " .. vstr(tCoordinates) .. ", {1.0, 1.0, 1.0, 0.7}, 0, " .. CloudScale[k][2] .. ", 1)")
							addDustCloudWithResources("CloudNameToIgnore", RUType, tCoordinates, RUValue, {1.0, 1.0, 1.0, 0.7}, srandom(RandomSeedValue) * 360, CloudScale[k][2], 1)
						else
							print_objects("addAsteroid(\"" .. RUType .. "\", " .. vstr(tCoordinates) .. ", " .. RUValue .. ", 0, 0, 0, 0)")
							addAsteroid(RUType, tCoordinates, RUValue, 0, srandom(RandomSeedValue) * 360, 0, 0)
						end
--						print_objects("hwclassicmaps: AddResources: added RUType = " .. RUType .. " at " .. vstr(tCoordinates))
					end
					PebCount = PebCount + 1
					if (PebCount == PebDeno) then
						PebCount = 0
					end
				end
--				print_objects("hwclassicmaps: AddResources: RUType = " .. RUType .. ", Amount = " .. Amount .. ", RUValue = " .. RUValue)
				CountLoops = CountLoops + Amount
				CountLPs = CountLPs + Amount * RULatch
				CountRUs = CountRUs + Amount * RUValue
			end
		end
		if (iModulos > 0) then
--			print_objects("hwclassicmaps: AddResources: iNumResources = " .. iNumResources)
--			print_objects("hwclassicmaps: AddResources: iModulos = " .. iModulos)
			AddResources(tPosition, sLayout, sDistribution, iModulos, fA, fB, fRotY, fRotZ)
		end
	end
end

function convert_position(tPosition)
	return {tPosition[1] * MapScale * -1, tPosition[3] * MapScale, tPosition[2] * MapScale}
end

function convert_rotation(tRotation)
	return {tRotation[1], tRotation[3] - 90, tRotation[2]}
end

function print_objects(in_string)
	if (debug_objects == 1) then
		print(in_string)
	end
end
