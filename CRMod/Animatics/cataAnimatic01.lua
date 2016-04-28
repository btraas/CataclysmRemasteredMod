MovieScreen =
{
	displayName = "HW Cataclysm Animatic 01",
	helpTip = "Cataclysm Animatic 01",
	
	size = {0, 0, 800, 60},  
	stylesheet = "HW2StyleSheet",

	RootElementSettings = 
	{
		backgroundColor = {0,0,0,0},	
	},

	-- uncomment the following to enable speech playback during the animatic
	--speechFilename = "locale:animatics/A00_speech.lua",

	;

	{
		type = "Movie",

		filenameV = "data:animatics/cataAnimatic01.webm",
--		filenameA = "data:Sound/Music/ANIMATIC/A00_01",

		position = {0,0}, -- 1/6 of the way down and only 2/3 of the screen
		size = {800,600},

                fadeOutStart = 192.7,     -- the time (in seconds) the animatic startes fading to transparent
                fadeOutEnd = 194.7,       -- the time (in seconds) the animatic is fully transparent
		
		abortFadeOutLength = 2.0, -- the time it takes to fade to black the animatic if it received the abort cmd

		name = "MyMovie",
		fixedAspectRatio = 1,
		fitScreen = 1,
		greyScale = 1,
		volumemultiplier = 0.88, -- Example of setting a volume multiplier on a video.
	},
	-- frames on top and bottom of the playing movie	
--	{
--		type = "Frame",
--		position = { 0, 0},
--		size = { 800, 100},
--		name = "topFrame",
--		backgroundColor = { 0, 0, 0, 255 },
--		giveParentMouseInput = 1,
--	},
--	{
--		type = "Frame",
--		position = { 0, 500},
--		size = { 800, 100},
--		name = "bottomFrame",
--		backgroundColor = { 0, 0, 0, 255 },
--		giveParentMouseInput = 1,
--	},
--
--	-- frames to the left and right of the playing movie;
--	-- they are needed when fixed-aspect-ratio is used for the movie
--	{
--		type = "Frame",
--		position = { 0, 0},
--		size = { 0, 600},
--		name = "leftFrame",
--		backgroundColor = { 0, 0, 0, 255 },
--		giveParentMouseInput = 1,
--	},
--	{
--		type = "Frame",
--		position = { 600, 0},
--		size = { 0, 600},
--		name = "rightFrame",
--		giveParentMouseInput = 1,
--		backgroundColor = { 0, 0, 0, 255 },
--	},
}

