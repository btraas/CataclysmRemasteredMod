-- LuaDC version 0.9.20
-- 1/18/2009 4:40:00 PM
-- LuaDC by Age2uN
-- on error send source file (compiled lua) and this outputfile to Age2uN@gmx.net
--
fx = 
{ 
    style = "STYLE_SPRAY", 
    properties = 
    { 
        property_16 = 
        { 
            name = "Particle_Scale", 
            type = "VARTYPE_ARRAY_TIMEFLOAT", 
            value = 
                { 0, 0.75, 1, 0.75, }, }, 
        property_15 = 
        { 
            name = "Gravwell_Strength", 
            type = "VARTYPE_ARRAY_TIMEFLOAT", 
            value = 
                { 0, 9.81, 1, 9.81, }, }, 
        property_09 = 
        { 
            name = "Emitter_Volume", 
            type = "VARTYPE_ARRAY_TIMEVECTOR3", 
            value = 
            { 
                entry_00 = 
                    { 0, 0, 0, 0, }, 
                entry_01 = 
                    { 1, 0, 0, 0, }, }, }, 
        property_04 = 
        { 
            name = "Emitter_InheritVelocity", 
            type = "VARTYPE_FLOAT", 
            value = 0, }, 
        property_03 = 
        { 
            name = "Emitter_Direction", 
            type = "VARTYPE_INT", 
            value = 0, }, 
        property_06 = 
        { 
            name = "Emitter_Rate", 
            type = "VARTYPE_ARRAY_TIMEFLOAT", 
            value = 
                { 0, 75, 0.33, 0, 1, 0, }, }, --was 28 then 128
        property_05 = 
        { 
            name = "Emitter_Drag", 
            type = "VARTYPE_FLOAT", 
            value = 0.8, }, 
        property_08 = 
        { 
            name = "Emitter_Deviation", 
            type = "VARTYPE_ARRAY_TIMEFLOAT", 
            value = 
                { 0, 125, 0.33875, 56.8, 1, 50, }, }, --was initially 0,180
        property_07 = 
        { 
            name = "Emitter_Rate_LOD%", 
            type = "VARTYPE_ARRAY_TIMEFLOAT", 
            value = 
                { 0, 0, 1, 0, }, }, 
        property_02 = 
        { 
            name = "Emitter_ScaleSpeed", 
            type = "VARTYPE_BOOL", 
            value = 1, },  --was 1
        property_01 = 
        { 
            name = "Emitter_Loop", 
            type = "VARTYPE_BOOL", 
            value = 0, }, 
        property_13 = 
        { 
            name = "Particle_Fx", 
            type = "VARTYPE_STRING", 
            value = "dmg_generic_trail_short", }, --energycannon_sparks
        property_14 = 
        { 
            name = "Particle_Dynamics", 
            type = "VARTYPE_INT", 
            value = 0, }, 
        property_11 = 
        { 
            name = "Particle_Speed", 
            type = "VARTYPE_ARRAY_TIMEFLOAT", 
            value = 
                { 0, 0, 0.17875, 200, 1, 200, }, },   --was 140.8
        property_12 = 
        { 
            name = "Emitter_RotRate", 
            type = "VARTYPE_ARRAY_TIMEFLOAT", 
            value = 
                { 0, 0, 1, 0, }, }, 
        property_00 = 
        { 
            name = "Emitter_Duration", 
            type = "VARTYPE_FLOAT", 
            value = 1, }, 
        property_10 = 
        { 
            name = "Emitter_Offset", 
            type = "VARTYPE_ARRAY_TIMEVECTOR3", 
            value = 
            { 
                entry_00 = 
                    { 0, 0, 0, 0, }, 
                entry_01 = 
                    { 1, 0, 0, 0, }, }, }, }, }
