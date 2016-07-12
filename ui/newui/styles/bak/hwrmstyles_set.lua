dofilepath("data:ui/newui/Taskbar/TaskbarDefines.lua")
dofilepath("data:ui/newui/Styles/HWRM_Style/HWRMDefines.lua")
dofilepath("data:ui/newui/styles/vanillastyles.lua")

HW2StyleSheet.FEButtonStyleCataMain = 
	{
		type 				= "Button",
		size 				= {206, 30}, -- does nothing??
		
		marginWidth = 26,
		--autosize  = 1,
		--stateIconOfs = { 0.0, 32/256 },
		--stateIconCells = { 0, 1, 2, 3, 4, 5, 6, 7 },
		
		--outerBorderWidth = DEBUG_DRAWBORDER,		
		--borderColor = {255,0,0,255},
		
	--	Layout = {
	--		
	--				pad_LT  = { l = 8, t = 8, lr = "px", tr = "px" },
	--				pad_RB  = { r = 8, b = 8, rr = "px", br = "px" },
	--	},

			
		--IconBase 
		BackgroundGraphic = {
			size = {206, 30},
			texture = "DATA:UI\\NewUI\\Styles\\cataclysm_main_button.tga",
			--uvRect = { 224/256, 0/256, 256/256, 32/256 },
			--patch_X = { 12, -8, 12, 0 },
			--patch_Y = { 12, -8, 12, 0 },
			--patch_Scale = 1,		
			
		--	Surface = {
		--		surface = "ui_multistate";
		--		{ prop = "state0", float3 = { 0.0, 0.0, 1.0 } },
		--		{ prop = "state1", float3 = { 0.0, 0.0, 0.0 } },
		--		{ prop = "state2", float3 = { 0.0, 0.0, 0.0 } },
		--		{ prop = "decal", float3 = { 0.0, 0.0, 0.0 } },
	--		},
		},
		
		textColor					= COLOR_YELLOW_SOLID, --= COLOR_BUTTON_TEXT_DEFAULT,
		overTextColor				= COLOR_YELLOW_SOLID, --= COLOR_BUTTON_TEXT_HOVER,
		pressedTextColor			= COLOR_YELLOW_SOLID, --= COLOR_BUTTON_TEXT_PRESSED,
		disabledTextColor			= COLOR_GRAY_SOLID, --= COLOR_BUTTON_TEXT_DISABLED,

		-- NOTE: if you dont want a sound to play onEnter, use FEButtonStyle1NoEnterSound
		soundOnEnter 		= "SFX_ButtonEnter",
		soundOnClicked 		= "SFX_ButtonClick",
		
		OverGraphic = {
			size = {206, 30},
			texture = "data:ui/newui/styles/cataclysm_main_button_hover.tga",
			
		},
		
		
		Text = 
		{
			textStyle = "RM_FEButtonTextStyle",
			--dropShadow = 1,
		},
	};
	
HW2StyleSheet.FEButtonStyleCataLarge = 
	{
		type 				= "Button",
		size 				= {300, 30}, -- does nothing??
		
		marginWidth = 26,
		--autosize  = 1,
		--stateIconOfs = { 0.0, 32/256 },
		--stateIconCells = { 0, 1, 2, 3, 4, 5, 6, 7 },
		
		--outerBorderWidth = DEBUG_DRAWBORDER,		
		--borderColor = {255,0,0,255},
		
	--	Layout = {
	--		
	--				pad_LT  = { l = 8, t = 8, lr = "px", tr = "px" },
	--				pad_RB  = { r = 8, b = 8, rr = "px", br = "px" },
	--	},

			
		--IconBase 
		BackgroundGraphic = {
			size = {300, 30},
			texture = "DATA:UI\\NewUI\\Styles\\cataclysm_button_large.tga",
			--uvRect = { 224/256, 0/256, 256/256, 32/256 },
			--patch_X = { 12, -8, 12, 0 },
			--patch_Y = { 12, -8, 12, 0 },
			--patch_Scale = 1,		
			
		--	Surface = {
		--		surface = "ui_multistate";
		--		{ prop = "state0", float3 = { 0.0, 0.0, 1.0 } },
		--		{ prop = "state1", float3 = { 0.0, 0.0, 0.0 } },
		--		{ prop = "state2", float3 = { 0.0, 0.0, 0.0 } },
		--		{ prop = "decal", float3 = { 0.0, 0.0, 0.0 } },
	--		},
		},
		
		textColor					= COLOR_YELLOW_SOLID, --= COLOR_BUTTON_TEXT_DEFAULT,
		overTextColor				= COLOR_YELLOW_SOLID, --= COLOR_BUTTON_TEXT_HOVER,
		pressedTextColor			= COLOR_YELLOW_SOLID, --= COLOR_BUTTON_TEXT_PRESSED,
		disabledTextColor			= COLOR_GRAY_SOLID, --= COLOR_BUTTON_TEXT_DISABLED,

		-- NOTE: if you dont want a sound to play onEnter, use FEButtonStyle1NoEnterSound
		soundOnEnter 		= "SFX_ButtonEnter",
		soundOnClicked 		= "SFX_ButtonClick",
		
		OverGraphic = {
			size = {300, 30},
			texture = "data:ui/newui/styles/cataclysm_button_large_hover.tga",
			
		},
		
		
		Text = 
		{
			textStyle = "RM_FEButtonTextStyle",
			--dropShadow = 1,
		},
	};
HW2StyleSheet.FEButtonStyleCataLargeBlack = 
	{
		type 				= "Button",
		size 				= {300, 30}, -- does nothing??
		
		marginWidth = 26,
		--autosize  = 1,
		--stateIconOfs = { 0.0, 32/256 },
		--stateIconCells = { 0, 1, 2, 3, 4, 5, 6, 7 },
		
		--outerBorderWidth = DEBUG_DRAWBORDER,		
		--borderColor = {255,0,0,255},
		
	--	Layout = {
	--		
	--				pad_LT  = { l = 8, t = 8, lr = "px", tr = "px" },
	--				pad_RB  = { r = 8, b = 8, rr = "px", br = "px" },
	--	},

			
		--IconBase 
		BackgroundGraphic = {
			size = {300, 30},
			texture = "DATA:UI\\NewUI\\Styles\\cataclysm_button_large_black.tga",
			--uvRect = { 224/256, 0/256, 256/256, 32/256 },
			--patch_X = { 12, -8, 12, 0 },
			--patch_Y = { 12, -8, 12, 0 },
			--patch_Scale = 1,		
			
		--	Surface = {
		--		surface = "ui_multistate";
		--		{ prop = "state0", float3 = { 0.0, 0.0, 1.0 } },
		--		{ prop = "state1", float3 = { 0.0, 0.0, 0.0 } },
		--		{ prop = "state2", float3 = { 0.0, 0.0, 0.0 } },
		--		{ prop = "decal", float3 = { 0.0, 0.0, 0.0 } },
	--		},
		},
		
		textColor					= COLOR_YELLOW_SOLID, --= COLOR_BUTTON_TEXT_DEFAULT,
		overTextColor				= COLOR_YELLOW_SOLID, --= COLOR_BUTTON_TEXT_HOVER,
		pressedTextColor			= COLOR_YELLOW_SOLID, --= COLOR_BUTTON_TEXT_PRESSED,
		disabledTextColor			= COLOR_GRAY_SOLID, --= COLOR_BUTTON_TEXT_DISABLED,

		-- NOTE: if you dont want a sound to play onEnter, use FEButtonStyle1NoEnterSound
		soundOnEnter 		= "SFX_ButtonEnter",
		soundOnClicked 		= "SFX_ButtonClick",
		
		OverGraphic = {
			size = {300, 30},
			texture = "data:ui/newui/styles/cataclysm_button_large_hover_black.tga",
			
		},
		
		
		Text = 
		{
			textStyle = "RM_FEButtonTextStyle",
			--dropShadow = 1,
		},
	};	
	
	
HW2StyleSheet.FEButtonStyleCataSmall = 
	{
		type 				= "Button",
		size 				= {92, 30}, -- does nothing??
		
		marginWidth = 26,
		--autosize  = 1,
		--stateIconOfs = { 0.0, 32/256 },
		--stateIconCells = { 0, 1, 2, 3, 4, 5, 6, 7 },
		
		--outerBorderWidth = DEBUG_DRAWBORDER,		
		--borderColor = {255,0,0,255},
		
	--	Layout = {
	--		
	--				pad_LT  = { l = 8, t = 8, lr = "px", tr = "px" },
	--				pad_RB  = { r = 8, b = 8, rr = "px", br = "px" },
	--	},

			
		--IconBase 
		BackgroundGraphic = {
			size = {92, 30},
			texture = "DATA:UI\\NewUI\\Styles\\cataclysm_button_small.tga",
			--uvRect = { 224/256, 0/256, 256/256, 32/256 },
			--patch_X = { 12, -8, 12, 0 },
			--patch_Y = { 12, -8, 12, 0 },
			--patch_Scale = 1,		
			
		--	Surface = {
		--		surface = "ui_multistate";
		--		{ prop = "state0", float3 = { 0.0, 0.0, 1.0 } },
		--		{ prop = "state1", float3 = { 0.0, 0.0, 0.0 } },
		--		{ prop = "state2", float3 = { 0.0, 0.0, 0.0 } },
		--		{ prop = "decal", float3 = { 0.0, 0.0, 0.0 } },
	--		},
		},
		
		textColor					= COLOR_YELLOW_SOLID, --= COLOR_BUTTON_TEXT_DEFAULT,
		overTextColor				= COLOR_YELLOW_SOLID, --= COLOR_BUTTON_TEXT_HOVER,
		pressedTextColor			= COLOR_YELLOW_SOLID, --= COLOR_BUTTON_TEXT_PRESSED,
		disabledTextColor			= COLOR_GRAY_SOLID, --= COLOR_BUTTON_TEXT_DISABLED,

		-- NOTE: if you dont want a sound to play onEnter, use FEButtonStyle1NoEnterSound
		soundOnEnter 		= "SFX_ButtonEnter",
		soundOnClicked 		= "SFX_ButtonClick",
		
		OverGraphic = {
			size = {92, 30},
			texture = "data:ui/newui/styles/cataclysm_button_small_hover.tga",
			
		},
		
		
		Text = 
		{
			textStyle = "RM_FEButtonTextStyle",
			--dropShadow = 1,
		},
	};	
HW2StyleSheet.FEButtonStyleCataMed = 
	{
		type 				= "Button",
		size 				= {118, 30}, -- does nothing??
		
		marginWidth = 26,
		--autosize  = 1,
		--stateIconOfs = { 0.0, 32/256 },
		--stateIconCells = { 0, 1, 2, 3, 4, 5, 6, 7 },
		
		--outerBorderWidth = DEBUG_DRAWBORDER,		
		--borderColor = {255,0,0,255},
		
	--	Layout = {
	--		
	--				pad_LT  = { l = 8, t = 8, lr = "px", tr = "px" },
	--				pad_RB  = { r = 8, b = 8, rr = "px", br = "px" },
	--	},

			
		--IconBase 
		BackgroundGraphic = {
			size = {118, 30},
			texture = "DATA:UI\\NewUI\\Styles\\cataclysm_button_med.tga",
			--uvRect = { 224/256, 0/256, 256/256, 32/256 },
			--patch_X = { 12, -8, 12, 0 },
			--patch_Y = { 12, -8, 12, 0 },
			--patch_Scale = 1,		
			
		--	Surface = {
		--		surface = "ui_multistate";
		--		{ prop = "state0", float3 = { 0.0, 0.0, 1.0 } },
		--		{ prop = "state1", float3 = { 0.0, 0.0, 0.0 } },
		--		{ prop = "state2", float3 = { 0.0, 0.0, 0.0 } },
		--		{ prop = "decal", float3 = { 0.0, 0.0, 0.0 } },
	--		},
		},
		
		textColor					= COLOR_YELLOW_SOLID, --= COLOR_BUTTON_TEXT_DEFAULT,
		overTextColor				= COLOR_YELLOW_SOLID, --= COLOR_BUTTON_TEXT_HOVER,
		pressedTextColor			= COLOR_YELLOW_SOLID, --= COLOR_BUTTON_TEXT_PRESSED,
		disabledTextColor			= COLOR_GRAY_SOLID, --= COLOR_BUTTON_TEXT_DISABLED,

		-- NOTE: if you dont want a sound to play onEnter, use FEButtonStyle1NoEnterSound
		soundOnEnter 		= "SFX_ButtonEnter",
		soundOnClicked 		= "SFX_ButtonClick",
		
		OverGraphic = {
			size = {118, 30},
			texture = "data:ui/newui/styles/cataclysm_button_med_hover.tga",
			
		},
		
		
		Text = 
		{
			textStyle = "RM_FEButtonTextStyle",
			--dropShadow = 1,
		},
	};	
HW2StyleSheet.FEButtonStyleCataMedBlack = 
	{
		type 				= "Button",
		size 				= {118, 30}, -- does nothing??
		
		marginWidth = 26,
		
		--IconBase 
		BackgroundGraphic = {
			size = {118, 30},
			texture = "DATA:UI\\NewUI\\Styles\\cataclysm_button_med_black.tga",
			
		},
		
		textColor					= COLOR_YELLOW_SOLID, --= COLOR_BUTTON_TEXT_DEFAULT,
		overTextColor				= COLOR_YELLOW_SOLID, --= COLOR_BUTTON_TEXT_HOVER,
		pressedTextColor			= COLOR_YELLOW_SOLID, --= COLOR_BUTTON_TEXT_PRESSED,
		disabledTextColor			= COLOR_GRAY_SOLID, --= COLOR_BUTTON_TEXT_DISABLED,

		-- NOTE: if you dont want a sound to play onEnter, use FEButtonStyle1NoEnterSound
		soundOnEnter 		= "SFX_ButtonEnter",
		soundOnClicked 		= "SFX_ButtonClick",
		
		OverGraphic = {
			size = {118, 30},
			texture = "data:ui/newui/styles/cataclysm_button_med_hover_black.tga",
			
		},
		
		
		Text = 
		{
			textStyle = "RM_FEButtonTextStyle",
			--dropShadow = 1,
		},
	};	

HW2StyleSheet.defaultButtonStyle = HW2StyleSheet.FEButtonCataMedBlack;
	
HW2StyleSheet.FEButtonStyle1 = HW2StyleSheet.FEButtonCataMedBlack; 
HW2StyleSheet.FEButtonStyle1_Chipped = HW2StyleSheet.FEButtonCataMedBlack; 
HW2StyleSheet.FEButtonStyle1_Alert_Chipped =  HW2StyleSheet.FEButtonCataMedBlack; 
HW2StyleSheet.FEButtonStyle1_Outlined = HW2StyleSheet.FEButtonCataMedBlack; 
HW2StyleSheet.FEButtonStyle1_Outlined_Chipped = HW2StyleSheet.FEButtonCataMedBlack; 
HW2StyleSheet.FEButtonStyle1_Alert_Outlined_Chipped = HW2StyleSheet.FEButtonCataMedBlack; 