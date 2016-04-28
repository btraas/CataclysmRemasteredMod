fx = {
style = "STYLE_BEAM",
properties = {
property_16 = {
name = "LineDistance",
type = "VARTYPE_FLOAT",
value = 7500, -- was 1750
},
property_24 = {name = "BirthSpawn_Fx", type = "VARTYPE_STRING", value = ""}, --wait why the hell did I do this
property_15 = {
name = "WidthEpsilon",
type = "VARTYPE_FLOAT",
value = 0,
},
property_09 = {
name = "Texture_U_Offset",
type = "VARTYPE_ARRAY_TIMEFLOAT",
value = {
0,
0,
1,
0, --10 was too slow, 0.1 was no movement
},
},
property_04 = {
name = "SelfIlluminated",
type = "VARTYPE_BOOL",
value = 1,
},
property_03 = {
name = "Texture",
type = "VARTYPE_STRING",
value = "DATA:ART/FX/trail/trail_ribbon2_bluefade.tga",
},
property_06 = {
name = "Length",
type = "VARTYPE_ARRAY_TIMEFLOAT",
value = {
0,
50,
0.25,
150,
1,
150,
},
},
property_05 = {
name = "Offset",
type = "VARTYPE_ARRAY_TIMEVECTOR3",
value = {
entry_00 = {
0,
0,
0,
-25,
},
entry_01 = {
0.4,
0,
0,
-150,
},
entry_02 = {
1,
0,
0,
-150,
},
},
},
property_08 = {
name = "Segments",
type = "VARTYPE_ARRAY_TIMEFLOAT",
value = {
0,
1,
1,
10, --was 10, then 2 has nothing to do with number of times the damn thing repeats
},
},
property_07 = {
name = "Noise",
type = "VARTYPE_ARRAY_TIMEFLOAT", --THIS MAKES FUCKING LIGHTNING HAPPEN. WHAT THE HELL
value = {
0,
0,
1,
0,
},
},
property_02 = {
name = "Blending",
type = "VARTYPE_INT",
value = 4,
},
property_01 = {
name = "Loop",
type = "VARTYPE_BOOL",
value = 0,
},
property_13 = {
name = "Arc",
type = "VARTYPE_ARRAY_TIMEVECTOR3",
value = {
entry_00 = {
0,
0,
0,
0,
},
entry_01 = {
1,
0,
0,
0,
},
},
},
property_14 = {
name = "LengthEpsilon",
type = "VARTYPE_FLOAT",
value = 0,
},
property_11 = {
name = "Width",
type = "VARTYPE_ARRAY_TIMEFLOAT",
value = {
0,
6,
1,
6,
},
},
property_12 = {
name = "Colour",
type = "VARTYPE_ARRAY_TIMECOLOUR",
value = {
entry_00 = {
0,
0,
0,
0,
1,
},
entry_01 = {
0.02537,
1,  --all 3 were 0.528
1,
1,
0.5,
},
entry_02 = {
0.85672,
1,  --all 3 were 0.528
1,
1,
0.5,
},
entry_03 = {
1,
1, --all 3 were 0.518
1,
1,
0.5,
},
},
},
property_00 = {
name = "Duration",
type = "VARTYPE_FLOAT",
value = 5,
},
property_10 = {
name = "Texture_U_Repeat",
type = "VARTYPE_ARRAY_TIMEFLOAT",
value = {
0,
1, --was 10
1,
1, --was 10
},
},
},
}
