-- prints a list of levels and level stats
levels_table =
{
{"HW1_Another Chance4.level", [[]],{"","","","","","","","",},},
{"HW1_BATTLESTAR II2.level", [[]],{"","","","","","","","",},},
{"HW1_BATTLESTAR II3.level", [[]],{"","","","","","","","",},},
{"HW1_BATTLESTAR II4.level", [[]],{"","","","","","","","",},},
{"HW1_BATTLESTAR II5.level", [[]],{"","","","","","","","",},},
{"HW1_BATTLESTAR II6.level", [[]],{"","","","","","","","",},},
{"HW1_BiB4.level", [[]],{"","","","","","","","",},},
{"HW1_Blockage(ms)2.level", [[]],{"","","","","","","","",},},
{"HW1_Blockage(ms)3.level", [[]],{"","","","","","","","",},},
{"HW1_Blockage(ms)4.level", [[]],{"","","","","","","","",},},
{"HW1_Chime4.level", [[]],{"","","","","","","","",},},
{"HW1_Coliseum2.level", [[]],{"","","","","","","","",},},
{"HW1_Conflict2.level", [[]],{"","","","","","","","",},},
{"HW1_ControlPirates4.level", [[]],{"","","","","","","","",},},
{"HW1_DeathFromAbove II4.level", [[]],{"","","","","","","","",},},
{"HW1_DeathFromAbove II6.level", [[]],{"","","","","","","","",},},
{"HW1_Flower Power4.level", [[]],{"","","","","","","","",},},
{"HW1_Forbidden Zone4.level", [[]],{"","","","","","","","",},},
{"HW1_Helix2.level", [[]],{"","","","","","","","",},},
{"HW1_Hill B][LLy Land6.level", [[]],{"","","","","","","","",},},
{"HW1_Iam's Way2.level", [[]],{"","","","","","","","",},},
{"HW1_Iam's Way4.level", [[]],{"","","","","","","","",},},
{"HW1_Iam's Way6.level", [[]],{"","","","","","","","",},},
{"HW1_InTheDark2.level", [[]],{"","","","","","","","",},},
{"HW1_InTheDark3.level", [[]],{"","","","","","","","",},},
{"HW1_InTheDark4.level", [[]],{"","","","","","","","",},},
{"HW1_Mystic Map4.level", [[]],{"","","","","","","","",},},
{"HW1_NebulaCore2.level", [[]],{"","","","","","","","",},},
{"HW1_NebulaCore3.level", [[]],{"","","","","","","","",},},
{"HW1_NebulaCore4.level", [[]],{"","","","","","","","",},},
{"HW1_NebulaCore5.level", [[]],{"","","","","","","","",},},
{"HW1_NebulaCore6.level", [[]],{"","","","","","","","",},},
{"HW1_NebulaCore7.level", [[]],{"","","","","","","","",},},
{"HW1_NebulaCore8.level", [[]],{"","","","","","","","",},},
{"HW1_nis_testing2.level", [[]],{"","","","","","","","",},},
{"HW1_Peace And Power4.level", [[]],{"","","","","","","","",},},
{"HW1_PeaceMakers6.level", [[]],{"","","","","","","","",},},
{"HW1_Powerline2.level", [[]],{"","","","","","","","",},},
{"HW1_Powerline3.level", [[]],{"","","","","","","","",},},
{"HW1_Powerline4.level", [[]],{"","","","","","","","",},},
{"HW1_Powerline5.level", [[]],{"","","","","","","","",},},
{"HW1_Powerline6.level", [[]],{"","","","","","","","",},},
{"HW1_Spiral3.level", [[]],{"","","","","","","","",},},
{"HW1_Spiral4.level", [[]],{"","","","","","","","",},},
{"HW1_Sub II2.level", [[]],{"","","","","","","","",},},
{"HW1_Sub II3.level", [[]],{"","","","","","","","",},},
{"HW1_Sub II4.level", [[]],{"","","","","","","","",},},
{"HW1_TwinTowers2.level", [[]],{"","","","","","","","",},},
{"HW1_TwinTowers3.level", [[]],{"","","","","","","","",},},
{"HW1_TwinTowers4.level", [[]],{"","","","","","","","",},},
{"HW1_Twister4.level", [[]],{"","","","","","","","",},},
{"HW1_Warburtons4.level", [[]],{"","","","","","","","",},},
{"HW1_X Marks The Spot4.level", [[]],{"","","","","","","","",},},
{"HW1_YellowBattles6.level", [[]],{"","","","","","","","",},},
{"HW1_YellowBattles8.level", [[]],{"","","","","","","","",},},
{"HW1_YoungStars2.level", [[]],{"","","","","","","","",},},
{"HW1_YoungStars3.level", [[]],{"","","","","","","","",},},
{"HW1_YoungStars4.level", [[]],{"","","","","","","","",},},
{"HW1_YoungStars5.level", [[]],{"","","","","","","","",},},
{"HW1_YoungStars6.level", [[]],{"","","","","","","","",},},
}

function print_level_table()
	print("i\tnewlevfile\tlevname\tplayers\tlevback\tlevmusc\tRUsRatio\tPebRatio")
	for i, iCount in levels_table do
		dofilepath("data:leveldata/multiplayer/homeworldclassic/" .. iCount[1])
		print(i .. "\t" .. iCount[1] .. "\t" .. LevelName .. "\t" .. NumberOfPlayers .. "\t" .. LevelBackground .. "\t" .. LevelMusic .. "\t" .. RUsRatio .. "\t" .. PebRatio)
	end
	print("i\tP1\tP2\tP3\tP4\tP5\tP6\tP7\tP8")
	for i, iCount in levels_table do
		dofilepath("data:leveldata/multiplayer/homeworldclassic/" .. iCount[1])
		print(i .. "\t" .. PlayerRaces[1] .. "\t" .. PlayerRaces[2] .. "\t" .. PlayerRaces[3] .. "\t" .. PlayerRaces[4] .. "\t" .. PlayerRaces[5] .. "\t" .. PlayerRaces[6] .. "\t" .. PlayerRaces[7] .. "\t" .. PlayerRaces[8])
	end
end

-------------------------------copy into level
--dofilepath("data:scripts/levelinfo.lua")
print_level_table()
-------------------------------copy into level


levelDesc = [[LevelInfo Dummy Level]]
maxPlayers = 2
player = {}

for k = 1, maxPlayers do
	player[k] = {id = k - 1, name = "Vaygr", resources = 1500, raceID = 2, startPos = 1,}
end

function DetermChunk()
	addPoint("StartPos0", { 25000,-25000, 0}, {0, 270, 0})
	addPoint("StartPos1", {-25000, 25000, 0}, {0,  90, 0})
end

function NonDetermChunk()
end
