function SobGroup_SplitGroup(SobGroupOut, SobGroupToSplit, NumberToSplit) 
    -- function created by Apollyon470 
    local index = 0 
    local distance = 0 
    local bool = 0 
    local SobNum = 0 
    SobGroup_Create("TempSobGroup") 
    SobGroup_Clear ("TempSobGroup") 
    SobGroup_Create("TempSobGroup1") 
    SobGroup_Clear ("TempSobGroup1") 
    SobGroup_SobGroupAdd ("TempSobGroup", SobGroupToSplit) 
    if ( SobGroup_Empty (SobGroupToSplit) == 1 ) then 
        return 0 
    end 
    if ( NumberToSplit > SobGroup_Count(SobGroupToSplit) ) then 
        NumberToSplit = SobGroup_Count(SobGroupToSplit) 
    end 
    while (index < NumberToSplit ) do 
        bool = 0 -- in the interests of resource saving, we start with a search band of 625 
        interval = 625 
        while (bool == 0) do 
            distance = distance + interval -- something went wrong. Please tell me, or have a go at fixing it yourself. 
            if (interval > 3000000) then 
                bool =1 
                return SobNum 
            end 
            SobGroup_FillProximitySobGroup ("TempSobGroup1", "TempSobGroup", SobGroupToSplit, distance) 
            if (SobGroup_Empty("TempSobGroup1") == 1)then 
                -- get the next interval 
            else 
                if (SobGroup_Count("TempSobGroup1") > 1) then -- too many ships, reduce interval 
                    if (interval == 1) then -- Screw it! chunk 'em all in the same sobgroup 
                        SobGroup_Create(SobGroupOut .. tostring(SobNum)) 
                        SobGroup_Clear (SobGroupOut .. tostring(SobNum)) 
                        SobGroup_SobGroupAdd (SobGroupOut .. tostring(SobNum), "TempSobGroup1") 
                        SobGroup_Create("tempsob") 
                        SobGroup_FillSubstract("tempsob", "TempSobGroup", SobGroupOut .. tostring(SobNum)) 
                        SobGroup_Clear ("TempSobGroup") 
                        SobGroup_SobGroupAdd ("TempSobGroup", "tempsob") 
                        bool = 1 
                    else 
                        distance = distance - interval 
                        interval = interval / 5 
                    end 
                else -- we got one! add it to the list! 
                    SobGroup_Create(SobGroupOut .. tostring(SobNum)) 
                    SobGroup_Clear (SobGroupOut .. tostring(SobNum)) 
                    SobGroup_SobGroupAdd (SobGroupOut .. tostring(SobNum), "TempSobGroup1") 
                    SobGroup_Create("tempsob") 
                    SobGroup_FillSubstract("tempsob", "TempSobGroup", SobGroupOut .. tostring(SobNum)) 
                    SobGroup_Clear ("TempSobGroup") 
                    SobGroup_SobGroupAdd ("TempSobGroup", "tempsob") 
                    bool = 1 
                end 
            end 
        end 
        index = index + SobGroup_Count(SobGroupOut .. tostring(SobNum)) 
        SobNum = SobNum + 1 
    end 
    return SobNum 
end

function SobGroup_SplitGroupReference(SobGroupOut, SobGroupToSplit, ReferenceSobGroup, NumberToSplit)
	-- function created by Apollyon470
	local index = 0
	local distance = 0
	local bool = 0
	local SobNum = 0
	SobGroup_Create("TempSobGroup")
	SobGroup_Clear ("TempSobGroup")
	SobGroup_Create("TempSobGroup1")
	SobGroup_Clear ("TempSobGroup1")
	SobGroup_SobGroupAdd ("TempSobGroup", SobGroupToSplit)
	if ( SobGroup_Empty (SobGroupToSplit) == 1 ) then
		return 0
	end
	if ( NumberToSplit > SobGroup_Count(SobGroupToSplit) ) then
		NumberToSplit = SobGroup_Count(SobGroupToSplit)
	end
	while (index < NumberToSplit ) do
		bool = 0
		-- in the interests of resource saving, we start with a search band of 625
		interval = 625
		while (bool == 0) do
			distance = distance + interval
			-- something went wrong.  Please tell me, or have a go at fixing it yourself.
			if (interval > 3000000) then
				bool =1
				return SobNum
			end
			SobGroup_FillProximitySobGroup ("TempSobGroup1", "TempSobGroup", ReferenceSobGroup, distance)			
			if (SobGroup_Empty("TempSobGroup1") == 1)then
				-- get the next interval
			else
				if (SobGroup_Count("TempSobGroup1") > 1) then
					-- too many ships, reduce interval
					if (interval <= .2) then
						-- Screw it! chunk 'em all in the same sobgroup
						SobGroup_Create(SobGroupOut .. tostring(SobNum))
						SobGroup_Clear (SobGroupOut .. tostring(SobNum))
						SobGroup_SobGroupAdd (SobGroupOut .. tostring(SobNum), "TempSobGroup1")
						SobGroup_Create("tempsob")
						SobGroup_FillSubstract("tempsob", "TempSobGroup", SobGroupOut .. tostring(SobNum))
						SobGroup_Clear ("TempSobGroup")
						SobGroup_SobGroupAdd ("TempSobGroup", "tempsob")
						bool = 1
					else
						distance = distance - interval
						interval = interval / 5
					end
				else
					-- we got one! add it to the list!
					SobGroup_Create(SobGroupOut .. tostring(SobNum))
					SobGroup_Clear (SobGroupOut .. tostring(SobNum))
					SobGroup_SobGroupAdd (SobGroupOut .. tostring(SobNum), "TempSobGroup1")
					SobGroup_Create("tempsob")
					SobGroup_FillSubstract("tempsob", "TempSobGroup", SobGroupOut .. tostring(SobNum))
					SobGroup_Clear ("TempSobGroup")
					SobGroup_SobGroupAdd ("TempSobGroup", "tempsob")
					bool = 1
				end
			end			
		end
		index = index + SobGroup_Count(SobGroupOut .. tostring(SobNum))
		SobNum = SobNum + 1
	end
	return SobNum
end