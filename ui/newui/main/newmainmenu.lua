dofilepath("data:ui/newui/Examples/ExampleIncludes.lua")
dofilepath("data:ui/newui/Styles/HWRM_Style/HWRMDefines.lua")
dofilepath("data:ui/newui/Styles/HWRM_Style/ControlConstructors.lua")
dofilepath("data:ui/newui/Background/logo.lua")
dofilepath("data:ui/newui/Main/ExButtons.lua")

LAYOUT_MENU_BUTTONS = 
{
	--min_WH = {	w = 1, wr = "par"},	
	min_WH = {		w = 1, h = 0.055, wr = "par"},
	pad_LT  = { l = BUTTON_TEXT_PAD_HORIZ, t = BUTTON_TEXT_PAD_VERT, lr = "scr", tr = "scr" },
	pad_RB  = { r = BUTTON_TEXT_PAD_HORIZ, b = BUTTON_TEXT_PAD_VERT, rr = "scr", br = "scr" },	
}

LAYOUT_MENU_OUTLINED_BUTTONS = 
{
	--min_WH = {	w = 1, wr = "par"},	
	pad_LT  = { l = BUTTON_TEXT_PAD_HORIZ, t = BUTTON_TEXT_PAD_VERT, lr = "scr", tr = "scr" },
	pad_RB  = { r = BUTTON_TEXT_PAD_HORIZ, b = BUTTON_TEXT_PAD_VERT, rr = "scr", br = "scr" },	
	min_WH = {	w = 1, h = STD_BUTTON_HEIGHT, wr = "par", hr = "scr" },						
}

LAYOUT_EXIT_BUTTON = 
{
	min_WH = {	w = NAVIGATION_BUTTON_WIDTH, wr = "scr"},	
	pad_LT  = { l = BUTTON_TEXT_PAD_HORIZ, t = BUTTON_TEXT_PAD_VERT, lr = "scr", tr = "scr" },
	pad_RB  = { r = BUTTON_TEXT_PAD_HORIZ, b = BUTTON_TEXT_PAD_VERT, rr = "scr", br = "scr" },	
	pivot_XY = { 1.0, 0.0 },					
	pos_XY = {	x=1.0, xr="par"},	
		
}

-- LUA CONFIG FOR THE MAIN MENU UISCREEN

NewMainMenu = {
	stylesheet = "HW2StyleSheet",
	
	RootElementSettings = {
		backgroundColor = {0,0,0,0}, -- black background for letterbox effect -- GBX:pdeupree - Changed alpha to 0 so setting in "Background.lua" shows up.
	},
	Layout = {
		pos_XY = {	x = 0, y = 0, xr = "scr",	yr = "scr"	},	
		size_WH = {	w = 1.0, h = 1.0, wr = "scr", hr = "scr" },							
	},		

	-- Flags
	pixelUVCoords = 1, -- Enter pixel coords for texture coords
	
	--Hotkeys = {
	--	{ "FE_ExitToWindows()",INKE_KeyDown, 0, "Exit to operating system",    { ALTKEY, F4KEY } },
	--},
	;
	{
		type = "Frame",
		name = "Root_Frame",
		
		Layout = {	
				pos_XY = LAYOUT_TOPLEFTSCREEN,		
				size_WH = LAYOUT_FILLSCREEN,
			},	

--		BackgroundGraphic = {
--			size = { 800, 400 },
--			texture = "DATA:UI/NewUI/Background/load_background.mres",
--			textureUV = { 0, 56, 800, 455},
--		},
-- GBX:pdeupree - Uncomment the video here if you want to have a first main menu background video that is different than the rest.
--		BackgroundVideo = {
--			filenameV = "data:animatics/mainmenu.webm",
--			loop = 1,
--			fitScreen = 1,
--			fixedAspectRatio = 1,
--		},

	},
	
	--EXAMPLE_SCREENS, -- BB - Comment this out before shipping				
	--EXAMPLE_UITOOLBUTTONS,		-- Buttons
	
	-------- LOGO -------
	BACKGROUND_LOGO,
	
	----------------------------------- MAIN MENU  -----------------------------------
	-- Panel frame
	{
		type = "RmWindow",
		name = "MainMenu_Panel",
		--WindowTemplate = PANEL_WINDOWSTYLE,
		TitleText = "$5577", -- "GAME MENU",

		Layout = {					
				pos_XY = { x=.685, y = .55,  xr="par", yr = "par" },	
				margin_RB = { r = 32/540, b = 0, rr = "scr", br = "scr" },
				pivot_XY = { 1,  .5 },		
		},	
				
		autosize  = 1,
		autoarrange = 1,
		sizetype = "contain",
		;	
		{
			type = "Frame",
			autosize = 1,		
			autoarrange = 1,
			autoarrangeSpace = 0,
			;
		
		
			-- Button Frame
			{
				type = "Frame",

				borderColor = "FEColorOutline",
				--borderColor = {255,255,255, 0},
				autosize = 1,
				autoarrange = 1,

				size = { 180, 600 },
					
				arrangetype = "vert",
				arrangeSep = {	x=0, y= 4/540, xr="scr", yr="scr"},
				;
				--Level Drop Down List Box	
				--NewMenuButton("btnStartGame",		"$2601",	nil,	0,	LAYOUT_MENU_BUTTONS,	"FEButtonStyle1",	"UI_StartGameWithSelectedLevel(); "),
			    --{
				--	type = "DropDownListBox",			
					--min_WH = {	w = 1, wr = "par"},	
				--	Layout = {
				--		size_WH = {w = .5, h = 24, wr = "par", hr = "px",},	
				--		pivot_XY = { 1.0, 0.0 },					
				--		pos_XY = {	x=1.0, xr="par"},	
				--	},
				--	autosize=1,
				--	name = "listLevels",	
				--},
				-- Spacer (This keeps the width as well)
				{
					type = "Frame",
					size = {200, 20},
				},		
--	NO ROOM!	NewMenuButton("btnTutorial",		"TRAINING",	nil,	0,	LAYOUT_MENU_BUTTONS,	"FEButtonStyleCataMain",	nil),
--				{
--					type = "Frame",
--					size = {200, 4},
--				},	
				NewMenuButton("btnExtra",			"SINGLE PLAYER (INCOMPLETE)",	nil,	0,	LAYOUT_MENU_BUTTONS,	"FEButtonStyleCataMain",	nil),
				{
					type = "Frame",
					size = {200, 4},
				},
				NewMenuButton("btnPlayerVsCPU",		"SKIRMISH VS CPU",	nil,	0,	LAYOUT_MENU_BUTTONS,	"FEButtonStyleCataMain",	nil),
				{
					type = "Frame",
					size = {200, 4},
				},	
				MPButton(),
				NewMenuButton("btnProfile",		"PROFILE",	nil,	0,	LAYOUT_MENU_BUTTONS,	"FEButtonStyleCataMain",	[[UI_SetNextScreen("UserProfile", "NewMainMenu");UI_SetPreviousScreen("UserProfile", "NewMainMenu");UI_ShowScreen("UserProfile", eTransition);]]),
				{
					type = "Frame",
					size = {200, 4},
				},	
				NewMenuButton("btnOptions",		"OPTIONS",	nil,	0,	LAYOUT_MENU_BUTTONS,	"FEButtonStyleCataMain",	"UI_ShowScreen(\"FEGameOptions\", eTransition)"),
				{
					type = "Frame",
					size = {200, 4},
				},	
				NewMenuButton("btnMovies",		"CREDITS",	nil,	0,	LAYOUT_MENU_BUTTONS,	"FEButtonStyleCataMain",	"UI_ShowScreen(\"PlayMoviesScreen\", eTransition)"),
				
			
				-- Spacer (This keeps the width as well)
				{
					type = "Frame",
					size = {200, 4},
				},		

				NewMenuButton("btnExit",		"QUIT",	nil,	0,	LAYOUT_MENU_BUTTONS,	"FEButtonStyleCataMain",	"UI_ExitApp();"),

			},
		
			-- bottom Spacer
			{
				type = "Frame",
				size = {200,4},
			},
		},
	
	},
	
	
	
	
	{ -- Listbox Object to clone
		type = "TextListBoxItem",
		
		buttonStyle = "FEListBoxItemButtonStyle",
		
		name = "m_levelListBoxItem",
		
		visible = 0,
		enabled = 0,
		
		Text = {
			textStyle = "FEListBoxItemTextStyle",			
		},	
	},
		
	-- Comment out this frame if you dont want the build info...
	--{
	--	type = "Frame",
	--	autosize = 1,
	--	position = {2, 600 - 15},
	--	;
		
		-- Build/Version Info
		{
			type = "Frame",
			
			Layout = {
				pos_XY = { x = 0.95, y = 0.95, xr = "scr", yr = "scr" },
				size_WH = { w = 0.0, h = 0.0, wr = "px", hr = "px" },
				pivot_XY = { 1.0, 1.0 },
			},
			
			name = "VersionFrame",
			autosize = 1,
			sizetype = "contain",
			arrangetype = "horiz",
			
			BackgroundGraphic = {
				texture = "DATA:UI\\NewUI\\Elements\\ui_textshadow.tga",
				uvRect = { 4/32, 4/32, 28/32, 28/32 },
				patch_X = { 9, -6, 9, 0 },
				patch_Y = { 9, -6, 9, 0 },
				patch_PadX = { 8, -8 },
				patch_PadY = { 4, -4 },
				patch_Scale = 1,
			};
			
			-- Build Number
			{
				type = "TextLabel",
				name = "lblBuildNumber",
				visible = 1,
				Layout = {
					pos_XY = { x = 0.0, y = 0.0, xr = "px", yr = "px" },
					size_WH = { w = 0.0, h = 0.0, wr = "px", hr = "px" },
					pivot_XY = { 0.0, 0.0 },
				},
				
				autosize = 1,
				sizetype = "contain",
				ignored = 1,
				--Uncomment to hide...
				--visible = 0,
				
				Text = {				
					font = "ListBoxItemFont",
					color = {255,255,255, 255},
				},
			},
			
			-- Version number
			{
				type = "TextLabel",
				name = "lblVersion",
				
				Layout = {
					pos_XY = { x = 0.0, y = 0.0, xr = "px", yr = "px" },
					size_WH = { w = 0.0, h = 0.0, wr = "px", hr = "px" },
					pivot_XY = { 0.0, 0.0 },
				},
				
				autosize = 1,
				sizetype = "contain",
				
				Text = {	
					text = "$1221",
					font = "ButtonFont",
					hAlign = "Right",
					vAlign = "Top",
					color = {119,166,191,255},
					offset = {-2, 0},
				},
			},
		},
		
		-- Builder name
		--{
		--	type = "TextLabel",
		--	name = "lblBuilderName",
		--	visible = 0, 
		--	size = {400, 13},
		--	position = {0,26},
		--	Text = {				
		--		font = "ListBoxItemFont",
		--		color = {255,255,255, 255},
		--	},
		--},
		
		-- Data path
		--{
		--	type = "TextLabel",
		--	name = "lblDataPath",
		--	visible = 0,
		--	size = {400, 13},
		--	position = {0,39},
		--	Text = {				
		--		font = "ListBoxItemFont",
		--		color = {255,255,255, 255},
		--	},
		--},
	--},
	
	
}