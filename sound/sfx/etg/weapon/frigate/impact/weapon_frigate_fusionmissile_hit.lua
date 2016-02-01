-- LuaDC version 0.9.19
-- 5/23/2004 7:30:40 PM
-- LuaDC by Age2uN
-- on error send source file (compiled lua) and this outputfile to Age2uN@gmx.net
--
version = 4
volume = 0.65
maxPolyphony = 3
envelope = 
    { 
    { 
        distance = 0, 
        volume = 0.85, 
        reverb = 0, 
        duration = 0, 
        equalizer = 
            { 1, 1, 1, 1, 1, 1, 1, 1, }, }, 
    { 
        distance = 1000, 
        volume = 0.65, 
        reverb = 0, 
        duration = 0, 
        equalizer = 
            { 1, 1, 1, 1, 0.55, 0.55, 0.61, 0.5, }, }, 
    { 
        distance = 1600, 
        volume = 0.35, 
        reverb = 0, 
        duration = 0, 
        equalizer = 
            { 1, 1, 1, 1, 0.55, 0.55, 0.61, 0.5, }, }, 
    { 
        distance = 2600, 
        volume = 0.15, 
        reverb = 0, 
        duration = 0, 
        equalizer = 
            { 1, 1, 1, 1, 0.32, 0.2, 0.25, 0.19, }, }, 
    { 
        distance = 5000, 
        volume = 0, 
        reverb = 0, 
        duration = 0, 
        equalizer = 
            { 1, 1, 1, 0.72, 0.25, 0, 0, 0, }, }, 
    }
randSampContainer = 0
