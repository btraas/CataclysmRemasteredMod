-- LuaDC version 0.9.19
-- 5/23/2004 7:32:16 PM
-- LuaDC by Age2uN
-- on error send source file (compiled lua) and this outputfile to Age2uN@gmx.net
--
DIALOGWIDTH = 284
MOREINFOWIDTH = (DIALOGWIDTH + -7)
MOREINFOHEIGHT = 100
rank = 
{ 
    size = 
        { 258, 240, DIALOGWIDTH, 125, }, 
    stylesheet = "HW2StyleSheet", 
    pixelUVCoords = 1,    
; 
{ 
    type = "Frame", 
    name = "m_frmDialogRoot", 
    size = 
        { DIALOGWIDTH, 125, }, 
    backgroundColor = "FEColorDialog", 
    autosize = 1, 
    marginHeight = 1, 
; 
{ 
    type = "Frame", 
    position = 
        { 4, 4, }, 
    size = 
        { (DIALOGWIDTH + -8), 95, }, 
    style = "FEPopupBackgroundStyle", 
}, 
{ 
    type = "Frame", 
    position = 
        { 2, 2, }, 
    size = 
        { (DIALOGWIDTH + -4), 57, }, 
; 
{ 
    type = "Frame", 
    size = 
        { (DIALOGWIDTH + -4), 59, }, 
    borderWidth = 2, 
    borderColor = "FEColorPopupOutline", }, 
}, 
{ 
    type = "Frame", 
    position = 
        { 1, 0, }, 
    autosize = 1, 
    autoarrange = 1, 
    autoarrangeWidth = (DIALOGWIDTH + -2), 
    autoarrangeSpace = 2, 
; 
{ 
    type = "Frame", 
    size = 
        { (DIALOGWIDTH + -5), 54, }, 
; 
{
			type = "Frame",
			name = "ensign",
			position = {4, 22},
			size = {70,70},
			BackgroundGraphic = {
				texture = "data:ui\\newui\\ingameicons\\ensign.tga",
				textureUV = {0,0,128,128},
				color = OUTLINECOLOR,
			},						
		},		
{
			type = "Frame",
			name = "lieutenant",
			position = {4, 22},
			size = {70,70},
			BackgroundGraphic = {
				texture = "data:ui\\newui\\ingameicons\\lieutenant.tga",
				textureUV = {0,0,128,128},
				color = OUTLINECOLOR,
			},						
		},	
{
			type = "Frame",
			name = "commander",
			position = {4, 22},
			size = {70,70},
			BackgroundGraphic = {
				texture = "data:ui\\newui\\ingameicons\\commander.tga",
				textureUV = {0,0,128,128},
				color = OUTLINECOLOR,
			},						
		},	
{
			type = "Frame",
			name = "captain",
			position = {4, 22},
			size = {70,70},
			BackgroundGraphic = {
				texture = "data:ui\\newui\\ingameicons\\captain.tga",
				textureUV = {0,0,128,128},
				color = OUTLINECOLOR,
			},						
		},	
{
			type = "Frame",
			name = "commodore",
			position = {4, 22},
			size = {70,70},
			BackgroundGraphic = {
				texture = "data:ui\\newui\\ingameicons\\commodore.tga",
				textureUV = {0,0,128,128},
				color = OUTLINECOLOR,
			},						
		},		
{
			type = "Frame",
			name = "admiral",
			position = {4, 22},
			size = {70,70},
			BackgroundGraphic = {
				texture = "data:ui\\newui\\ingameicons\\admiral.tga",
				textureUV = {0,0,128,128},
				color = OUTLINECOLOR,
			},						
		},	
{
			type = "Frame",
			name = "fleetadmiral",
			position = {4, 22},
			size = {70,70},
			BackgroundGraphic = {
				texture = "data:ui\\newui\\ingameicons\\fleetadmiral.tga",
				textureUV = {0,0,128,128},
				color = OUTLINECOLOR,
			},						
		},																
{ 
    type = "TextLabel", 
    name = "lblTitle", 
    position = 
        { 4, 0, }, 
    size = 
        { (DIALOGWIDTH + -10), 15, }, 
    Text = 
    { 
        textStyle = "FEHeading3", 
        vAlign = "Middle", 
        text = "MILITARY RANK", }, 
}, 
{ 
    type = "TextLabel", 
    name = "lblSubTitle", 
    position = 
        { 4, 11, }, 
    size = 
        { (DIALOGWIDTH + -10), 13, }, 
    Text = 
    { 
        textStyle = "FEHeading4", }, }, 
}, 
{ 
    type = "Frame", 
    outerBorderWidth = 1,     
    autosize = 1, 
    borderColor = "FEColorPopupOutline", 
    autoarrange = 1, 
; 
{ 
    type = "Frame", 
    borderWidth = 1, 
    borderColor = "FEColorPopupOutline", 
    autosize = 1, 
    --autoarrange = 1, 
; 
{ 
    type = "TextLabel", 
    name = "lblDescription1",  
    position = 
        { 4, 2, },    
    size = 
        { (DIALOGWIDTH + -10), 12, }, 
    Text = 
    { 
    textStyle = "FEHeading4", }, }, 
{ 
    type = "TextLabel", 
    name = "lblDescription2",     
    position = 
        { 4, 12, },    
    size = 
        { (DIALOGWIDTH + -10), 12, }, 
    Text = 
    { 
    textStyle = "FEHeading4", }, }, 
{ 
    type = "TextLabel", 
    name = "lblDescription3",     
    position = 
        { 4, 22, },    
    size = 
        { (DIALOGWIDTH + -10), 12, }, 
    Text = 
    { 
    textStyle = "FEHeading4", }, },                         
}, 

{ 
    type = "Frame", 
    name = "m_frmButtons", 
    size = 
        { (DIALOGWIDTH + -6), 17, }, 
    borderWidth = 1, 
    borderColor = "FEColorPopupOutline", 
; 
{ 
    type = "TextButton", 
    position = 
        { 2, 2, }, 
    width = ((DIALOGWIDTH + -6) + -4), 
    name = "btnOk", 
    buttonStyle = "FEButtonStyle2", 
    Text = 
    { 
        textStyle = "FEButtonTextStyle", 
        text = "$3614", }, 
    onMouseClicked = "UI_HideScreen('rank')", }, 
}, 
}, 
}, 
}, 
}
