-- LuaDC version 0.9.19
-- 5/23/2004 7:30:42 PM
-- LuaDC by Age2uN
-- on error send source file (compiled lua) and this outputfile to Age2uN@gmx.net
--
version = 4
volume = 0.7
volumeRand = 1
frequency = 42000
frequencyRand = 44100
maxPolyphony = 4
envelope = 
    { 
    { 
        distance = 0, 
        volume = 0.425, 
        reverb = 0, 
        duration = 0, 
        equalizer = 
            { 1, 1, 1, 1, 1, 1, 1, 1, }, }, 
    { 
        distance = 375, 
        volume = 0.415, 
        reverb = 0, 
        duration = 0, 
        equalizer = 
            { 1, 1, 1, 1, 1, 0.89, 0.8, 0.61, }, }, 
    { 
        distance = 750, 
        volume = 0.265, 
        reverb = 0, 
        duration = 0, 
        equalizer = 
            { 1, 1, 1, 0.81, 0.61, 0.55, 0.47, 0.56, }, }, 
    { 
        distance = 1125, 
        volume = 0.115, 
        reverb = 0, 
        duration = 0, 
        equalizer = 
            { 1, 1, 1, 0, 0, 0, 0, 0, }, }, 
    { 
        distance = 6000, 
        volume = 0, 
        reverb = 0, 
        duration = 0, 
        equalizer = 
            { 1, 1, 1, 0, 0, 0, 0, 0, }, }, 
    }
randSampContainer = 0
