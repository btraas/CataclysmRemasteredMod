-- LuaDC version 0.9.19
-- 5/23/2004 7:30:40 PM
-- LuaDC by Age2uN
-- on error send source file (compiled lua) and this outputfile to Age2uN@gmx.net
--
version = 4
volume = 0.8
volumeRand = 1
frequency = 40000
frequencyRand = 44100
envelope = 
    { 
    { 
        distance = 0, 
        volume = 0.785, 
        reverb = 0, 
        duration = 0, 
        equalizer = 
            { 1, 1, 1, 1, 1, 1, 1, 1, }, }, 
    { 
        distance = 150, 
        volume = 0.535, 
        reverb = 0, 
        duration = 0, 
        equalizer = 
            { 1, 1, 1, 1, 0.55, 0.55, 0.61, 0.5, }, }, 
    { 
        distance = 250, 
        volume = 0.26, 
        reverb = 0, 
        duration = 0, 
        equalizer = 
            { 1, 1, 1, 1, 0.55, 0.55, 0.61, 0.5, }, }, 
    { 
        distance = 533.333313, 
        volume = 0.1, 
        reverb = 0, 
        duration = 0, 
        equalizer = 
            { 1, 1, 1, 1, 0.32, 0.2, 0.25, 0.19, }, }, 
    { 
        distance = 1189.2, 
        volume = 0, 
        reverb = 0, 
        duration = 0, 
        equalizer = 
            { 1, 1, 1, 0.72, 0.25, 0, 0, 0, }, }, 
    }
randSampContainer = 0
