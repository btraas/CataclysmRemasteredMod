-- LuaDC version 0.9.19
-- 5/23/2004 7:29:12 PM
-- LuaDC by Age2uN
-- on error send source file (compiled lua) and this outputfile to Age2uN@gmx.net
--
version = 4
volume = 0.95
volumeRand = 1
frequency = 40000
frequencyRand = 44100
maxPolyphony = 4
envelope = 
    { 
    { 
        distance = 0, 
        volume = 0.8, 
        reverb = 0, 
        duration = 0, 
        equalizer = 
            { 1, 1, 1, 1, 1, 1, 1, 1, }, }, 
    { 
        distance = 499.5, 
        volume = 0.85, 
        reverb = 0, 
        duration = 0, 
        equalizer = 
            { 1, 1, 1, 1, 1, 1, 1, 1, }, }, 
    { 
        distance = 1099.5, 
        volume = 0.55, 
        reverb = 0, 
        duration = 0, 
        equalizer = 
            { 1, 1, 1, 1, 0.69, 0.59, 0.57, 0.55, }, }, 
    { 
        distance = 1737, 
        volume = 0.4, 
        reverb = 0, 
        duration = 0, 
        equalizer = 
            { 1, 1, 1, 1, 0.52, 0.41, 0.19, 0.06, }, }, 
    { 
        distance = 3763, 
        volume = 0, 
        reverb = 0, 
        duration = 0, 
        equalizer = 
            { 1, 1, 1, 1, 0, 0, 0, 0, }, }, 
    }
randSampContainer = 0
