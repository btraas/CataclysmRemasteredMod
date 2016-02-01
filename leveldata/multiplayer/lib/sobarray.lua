function SobArrayLibInit()
    SobArrayStatus={}
end

function SobArray_Create(SobArray)
    SobArrayStatus[SobArray..1]=0
    
end

function SobArrayTimerRule(SobArray) --watches empty sobgroups and decrements empty ones
    local i=1
    while ( SobArrayStatus[SobArray..i] ~= 0 ) do
        SobGroup_Create(SobArray .. i)
        if ( SobGroup_Empty (SobArray .. i) == 1 ) then
            --this sobgroup is empty.  Decrement if need be
            print("reading")
            if ( true ) then--SobArrayStatus[SobArray..i] > 1 ) then
                print("read.  writing again")
                --SobArrayStatus[SobArray..i] = SobArrayStatus[SobArray..i] - 1
                print("written")
            end
        else
            --this sobgroup is in use. reset timer.
            --SobArrayStatus[SobArray..i] = 61
        end
    end
    
end

function TimerRule(SobGroup)
    
end

function SobArray_Add(SobArray, SobToAdd)
    local i=1
    while ( SobArrayStatus[SobArray..i] ~= 0 ) do
        SobGroup_Create(SobArray .. i)
        if ( SobArrayStatus[SobArray..i] <= 1 ) then
            --reuse this index
            SobGroup_SobGroupAdd (SobArray..i, SobToAdd)
            SobArrayStatus[SobArray..i]=61 --set the timer for sobgroup reuse
            --print("old sobgroup reused "..i)
            newSobIndex = i;
            return i
        end
        --there must be a valid sob at this index.  move down.
        i=i+1
            
    end
    --we're now at the first blank sobgroup.  create one at this index.
    SobGroup_Create(SobArray..i)
    SobGroup_SobGroupAdd (SobArray..i, SobToAdd)
    SobArrayStatus[SobArray..i]=61 --set the timer for sobgroup reuse
    SobArrayStatus[SobArray..(i+1)]=0
    newSobIndex = i;
    return i
end

function SobArray_Remove(SobArray,index)
    SobGroup_Create(SobArray .. index) --create a sobgroup to avoid errors for out of bounds indices
    --set the index to be reused
    SobArrayStatus[SobArray..index]=1
    return 1
end

function SobArray_Set(SobArray,SobToAdd,index)
    SobGroup_Create(SobArray .. index) --create a sobgroup to avoid errors for out of bounds indices
    --TODO: empty Sob
    
    SobGroup_SobGroupAdd (SobArray..index, SobToAdd)
    --set the index
    SobArrayStatus[SobArray..index]=61
    return 1
end

function SobArray_Get(SobArray,SobToAdd,index)
    SobGroup_Create(SobArray .. index) --create a sobgroup to avoid errors for out of bounds indices
    return SobArray..index
end

function SobArray_GetAll(SobArray)
    i=0
    SobGroup_Create(SobArray.."All")
    while ( SobArrayStatus[SobArray..i] ~= 0 ) do
        SobGroup_Create(SobArray .. i)
        SobGroup_SobGroupAdd (SobArray.."All", SobArray..i)
        i = i+1
    end
    return SobArray.."All"
end

function SobArray_Find(SobArray, SobToFind)
    i=0
    while ( SobArrayStatus[SobArray..i] ~= 0 ) do
        SobGroup_Create(SobArray .. i)
        --sobgroup_
        i = i+1
    end
    --we didn't find it.  Return 0
    return 0
end

function SobArray_List(SobArray)
    i=0
    while ( SobArrayStatus[SobArray..i] ~= 0 ) do
        print(SobArray..i..":")
        print("     Ships: "..SobGroup_Count(SobArray .. i))
        i=i+1
    end
end