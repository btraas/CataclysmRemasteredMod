dofilepath("data:ui/newui/Styles/HWRM_Style/HWRMDefines.lua")
dofilepath("data:ui/newui/Styles/HWRM_Style/ControlConstructors.lua")

GameFilterScreen = {
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1, 
	
	Layout = {						
		pos_XY = {	x=0.0, y=0.0, xr="px", yr="px",},					
		size_WH = {w = 1, h = 1, wr = "scr", hr = "scr",},
	},


	RootElementSettings = {
		backgroundColor = COLOR_FULLSCREEN_DARKEN,
	},
	;
		
	{
		type = "Frame",

		Layout = {
			pivot_XY = { 0.5, 0.5 },					
			pos_XY = {	x=0.5, y=0.5, xr="par", yr="par",},			
						
		},	

		
		autosize=1,
		arrangetype = "vert",
		arrangeSep = {	x=0, y=PANEL_SPACING_VERT, xr="scr", yr="scr",},	

		backgroundColor = "FEColorDialog",
		;

		-- Dialog frame 
		{
			type = "RmWindow",
			WindowTemplate = PANEL_WINDOWSTYLE,
			name = "dialogWindow",
			TitleText = "$3050",  --GAME FILTERS
			-- SubtitleText = "$3051", --SET GAME LIST FILTERS//

			autosize=1,
			;

				-- Contents frame
			{
				type = "Frame",
				arrangetype = "vert",
				
				Layout = {						
					pos_XY = {	x=0.0, y=0.0, xr="px", yr="px",},					
					size_WH = {w = .5, h = 1, wr = "scr", hr = "px",},
				},
				autosize=1,
				arrangeSep = {	x=0, y=PANEL_SPACING_VERT/2, xr="scr", yr="scr",},
				;
				Option_LabeledTextInput("ServerNameFilter", "$3052",  "txtInputNameFilter", "$3053" ),
				Option_LabeledTextInput("MapNameFilter", "$3054",  "txtInputMapFilter", "$3055" ),
				Option_LabeledTextInput("ModeFilter", "$3046",  "txtInputModeFilter", "$3047" ),
				Option_LabeledTextInput("PlayerFilter", "$3048",  "txtInputMaxPlayersFilter", "$3049" ),
				--Option_LabeledTextInput("PingFilter", "$3056",  "txtInputPingFilter", "$3057" ),
				NewCheckBoxButton("PasswordFilter",		"$4970", "$4971", nil,  nil, 1 ),
			},	
		},
	
			
		------------------------------------------------------------------------------------
		-- BOTTOM NAVIGATION FRAME
		------------------------------------------------------------------------------------
		-- Button frame
		{
			type = "RmWindow",
			name = "frmRootbottombigfrm",

			WindowTemplate = PANEL_NAVIGATIONFRAME,


			;
			
			NewMenuButton("btnBack",		"$2613",	"$2613",	0,	BTN_FOOTER_STD_LAYOUT,	"FEButtonStyleCataMedBlack",	[[UI_SetScreenVisible("GameFilterScreen", 0);]]),
			NewMenuButton("btnClear",		"$3060",	"$3058",	0,	BTN_FOOTER_STD_LAYOUT,	"FEButtonStyleCataMedBlack",	nil),
			NewMenuButton("btnAccept",		"$2612",	"$2612",	0,	BTN_FOOTER_YES_LAYOUT,	"FEButtonStyleCataMedBlack",	nil),
			
		},
	},
}

	
