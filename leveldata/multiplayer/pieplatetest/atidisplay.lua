-- this script uses ATI text to display data to the screen
-- unfortunately the method I used has issues with binding keyboard keys (see below)
-- I tried using normal UI screens, but there's no way to show wide text (e.g. player names)

-- ATI Parameter indices for bounty display (must also exist in ati.lua)
THB_LevelRaces		= 0
THB_Parameters		= 1
THB_Rectangle_Low = {0.01, 0.1 - 0.03, 1.0 - 0.02, 0.02}
THB_Rectangle_Hgh = {0.01, 0.9 - 0.03, 1.0 - 0.02, 0.02}


function ATI_init()
	ATI_LoadTemplates([[data:leveldata\multiplayer\pieplatetest\atitemplates.lua]])
	ATI_CreateParameters(THB_Parameters)
	ATI_Clear()
	ATI_AddString(THB_LevelRaces, THB_level_race_text)
	ATI_Display2D("THB_Template", THB_Rectangle_Low, 0)
	ATI_AddString(THB_LevelRaces, THB_level_name)
	ATI_Display2D("THB_Template", THB_Rectangle_Hgh, 0)
	Rule_Remove("ATI_init")
end
