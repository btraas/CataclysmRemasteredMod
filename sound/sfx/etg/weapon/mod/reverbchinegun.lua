-- LuaDC version 0.9.20
-- 2/25/2009 1:56:39 PM
-- LuaDC by Age2uN
-- on error send source file (compiled lua) and this outputfile to Age2uN@gmx.net
--
version = 4
volume = 0.8
volumeRand = 1
frequency = 30000
frequencyRand = 44100
envelope = 
    { 
    { 
        distance = 0, 
        volume = 0.2,  --0.785
        reverb = 0, 
        duration = 0, 
        equalizer = 
            { 1, 1, 1, 1, 0.55, 0.55, 0.6, 0.7, }, }, 
    { 
        distance = 450, 
        volume = 0.16,  --0.535
        reverb = 0, 
        duration = 0, 
        equalizer = 
            { 1, 1, 1, 1, 0.55, 0.55, 0.61, 0.5, }, }, 
    { 
        distance = 750, 
        volume = 0.104, 
        reverb = 0, 
        duration = 0, 
        equalizer = 
            { 1, 1, 1, 1, 0.55, 0.55, 0.61, 0.5, }, }, 
    { 
        distance = 1600,  --1533
        volume = 0.08, 
        reverb = 0, 
        duration = 0, 
        equalizer = 
            { 1, 1, 1, 1, 0.32, 0.2, 0.25, 0.19, }, }, 
    { 
        distance = 3200,  --2992
        volume = 0, 
        reverb = 0, 
        duration = 0, 
        equalizer = 
            { 1, 1, 1, 0.72, 0.25, 0, 0, 0, }, }, 
    }
randSampContainer = 0
