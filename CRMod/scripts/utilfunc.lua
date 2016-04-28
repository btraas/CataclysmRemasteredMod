--------------------------------------------------------------------------------
-- Random number functions.
--

-- Randomly returns either 1 or -1.
function randomSign()
	if (random() > 0.5) then
		return 1
	else
		return -1
	end
end

-- Randomly returns either 1 or 0.
function randomBit()
	if (random() > 0.5) then
		return 1
	else
		return 0
	end
end

-- Works just like random(), but can accept zero as an argument.
function random2(fVal1, fVal2)
	if (fVal2) then
		if ((fVal2 - fVal1) == 0) then
			return fVal2
		else
			return random(fVal1, fVal2)
		end
	elseif (fVal1) then
		if (fVal1 == 0) then
			return 0
		else
			return random(fVal1)
		end
	else
		return random()
	end
end

-- Works just like random(), but can accept zero as an argument and always returns a float value, not an integer.
function random3(fVal1, fVal2)
	if (fVal2) then
		return fVal1 + random() * (fVal2 - fVal1)
	elseif (fVal1) then
		return random() * fVal1
	else
		return random()
	end
end

-- For each argument, returns a random float value between 0 and the argument.
function randomSet(...)
	local v = {}
	for i = 1, getn(arg) do
		v[i] = random3(arg[i])
	end
	if arg[5] then
		return v[1], v[2], v[3], v[4], v[5]
	elseif arg[4] then
		return v[1], v[2], v[3], v[4]
	elseif arg[3] then
		return v[1], v[2], v[3]
	elseif arg[2] then
		return v[1], v[2]
	elseif arg[1] then
		return v[1]
	end
end

-- For every two arguments, returns a random float value between the former argument and the latter argument.
function randomSet2(...)
	local v = {}
	for i = 2, getn(arg), 2 do
		v[i/2] = random3(arg[i-1], arg[i])
	end
	if arg[10] then
		return v[1], v[2], v[3], v[4], v[5]
	elseif arg[8] then
		return v[1], v[2], v[3], v[4]
	elseif arg[6] then
		return v[1], v[2], v[3]
	elseif arg[4] then
		return v[1], v[2]
	elseif arg[2] then
		return v[1]
	end
end

-- Global variables used for the seeded random functions, below.
seedobja = 1103515.245
seedobjc = 12345
seedobjm = 4294967.295 --0x100000000

-- Creates a new seed for seeded functions such as srandom().
function newseed(seednum)
	return {seednum}
end

-- Works like random(), except you provide your own seed as the first argument.
-- The results are that maps appear the same each time you run the game, but desyncs may possibly be avoided.
function srandom(seedobj, fVal1, fVal2)
	seedobj[1] = mod(seedobj[1] * seedobja + seedobjc, seedobjm)
	local temp_rand = seedobj[1] / (seedobjm - 1)
	if (fVal2) then
		return floor(fVal1 + 0.5 + temp_rand * (fVal2 - fVal1))
	elseif (fVal1) then
		return floor(temp_rand * fVal1) + 1
	else
		return temp_rand
	end
end

-- Randomly returns either 1 or -1. Seeded.
function srandomSign(seedobj)
	if (srandom(seedobj) > 0.5) then
		return 1
	else
		return -1
	end
end

-- Randomly returns either 1 or 0. Seeded.
function srandomBit(seedobj)
	if (srandom(seedobj) > 0.5) then
		return 1
	else
		return 0
	end
end

-- Works just like random(), but can accept zero as an argument. Seeded.
function srandom2(seedobj, fVal1, fVal2)
	if (fVal2) then
		if ((fVal2 - fVal1) == 0) then
			return fVal2
		else
			return srandom(seedobj, fVal1, fVal2)
		end
	elseif (fVal1) then
		if (fVal1 == 0) then
			return 0
		else
			return srandom(seedobj, fVal1)
		end
	else
		return srandom(seedobj)
	end
end

-- Works just like random(), but can accept zero as an argument and always returns a float value, not an integer. Seeded.
function srandom3(seedobj, fVal1, fVal2)
	if (fVal2) then
		return fVal1 + srandom(seedobj) * (fVal2 - fVal1)
	elseif (fVal1) then
		return srandom(seedobj) * fVal1
	else
		return srandom(seedobj)
	end
end

-- For each argument, returns a random float value between 0 and the argument. Seeded.
function srandomSet(seedobj, ...)
	local v = {}
	for i = 1, getn(arg) do
		v[i] = srandom3(seedobj, arg[i])
	end
	if arg[5] then
		return v[1], v[2], v[3], v[4], v[5]
	elseif arg[4] then
		return v[1], v[2], v[3], v[4]
	elseif arg[3] then
		return v[1], v[2], v[3]
	elseif arg[2] then
		return v[1], v[2]
	elseif arg[1] then
		return v[1]
	end
end

-- For every two arguments, returns a random float value between the former argument and the latter argument. Seeded.
function srandomSet2(seedobj, ...)
	local v = {}
	for i = 2, getn(arg), 2 do
		v[i/2] = srandom3(seedobj, arg[i-1], arg[i])
	end
	if arg[10] then
		return v[1], v[2], v[3], v[4], v[5]
	elseif arg[8] then
		return v[1], v[2], v[3], v[4]
	elseif arg[6] then
		return v[1], v[2], v[3]
	elseif arg[4] then
		return v[1], v[2]
	elseif arg[2] then
		return v[1]
	end
end

-- Returns a vector with random components.
function vrand(tVecIn)
	local tVecOut = {}
	for i = 1, getn(tVecIn) do
		tinsert(tVecOut, random(tVecIn[i]))
	end
	return tVecOut
end

-- Returns a vector with random components. Seeded.
function svrand(seedobj, tVecIn)
	local tVecOut = {}
	for i = 1, getn(tVecIn) do
		tinsert(tVecOut, srandom(seedobj, tVecIn[i]))
	end
	return tVecOut
end

-- Returns a vector with random components.
function vrand2(tVecIn)
	local tVecOut = {}
	for i = 1, getn(tVecIn) do
		tinsert(tVecOut, random2(tVecIn[i][1], tVecIn[i][2]))
	end
	return tVecOut
end

-- Returns a vector with random components. Seeded.
function svrand2(seedobj, tVecIn)
	local tVecOut = {}
	for i = 1, getn(tVecIn) do
		tinsert(tVecOut, srandom2(seedobj, tVecIn[i][1], tVecIn[i][2]))
	end
	return tVecOut
end

-- Returns a vector with random components.
function vrand3(tVecIn)
	local tVecOut = {}
	for i = 1, getn(tVecIn) do
		tinsert(tVecOut, random3(tVecIn[i][1], tVecIn[i][2]))
	end
	return tVecOut
end

-- Returns a vector with random components. Seeded.
function svrand3(seedobj, tVecIn)
	local tVecOut = {}
	for i = 1, getn(tVecIn) do
		tinsert(tVecOut, srandom3(seedobj, tVecIn[i][1], tVecIn[i][2]))
	end
	return tVecOut
end

--------------------------------------------------------------------------------
-- Some trigonometric functions.
--

-- Returns the hyperbolic cosine of an angle.
function cosh(fAng)
	return (exp(fAng) + exp(-fAng))/2
end


-- Returns the hyperbolic sine of an angle.
function sinh(fAng)
	return (exp(fAng) - exp(-fAng))/2
end


-- Returns the hyperbolic tangent of an angle.
function tanh(fAng)
	return (exp(fAng) - exp(-fAng))/(exp(fAng) + exp(-fAng))
end


-- Returns the hyperbolic cosecant of an angle.
function csch(fAng)
	return 1/sinh(fAng)
end


-- Returns the hyperbolic secant of an angle.
function sech(fAng)
	return 1/cosh(fAng)
end


-- Returns the hyperbolic cotangent of an angle.
function coth(fAng)
	return 1/tanh(fAng)
end


-- Returns the cosecant of an angle.
function csc(fAng)
	return 1/sin(fAng)
end


-- Returns the secant of an angle.
function sec(fAng)
	return 1/cos(fAng)
end


-- Returns the cotangent of an angle.
function cot(fAng)
	return 1/tan(fAng)
end


-- Returns the exsecant of an angle.
function exsec(fAng)
	return sec(fAng) - 1
end


-- Returns the coexsecant of an angle.
function coexsec(fAng)
	return csc(fAng) - 1
end


-- Returns the versesine of an angle.
function vers(fAng)
	return 1 - cos(fAng)
end


-- Returns the coversesine of an angle.
function covers(fAng)
	return 1 - sin(fAng)
end


-- Returns the half-versesine of an angle.
function hav(fAng)
	return vers(fAng)/2
end


--------------------------------------------------------------------------------
-- Some miscellaneous mathematical functions.
--

-- Rounds a number to the nearest integer.
function round(fVal)
	return floor(fVal + 0.5)
end


--------------------------------------------------------------------------------
-- Some vector functions.
--

-- Returns the normalized form of a vector.
function vnormalize(tVec)
	return vdivide(tVec, vlength(tVec))
end

-- Returns the length of a vector.
function vlength(tVec)
	return sqrt(vsum(vpower(tVec, 2)))
end

-- Returns the distance between two vectors.
function vdistance(tVec1, tVec2)
	return vlength(vsubtractV(tVec2, tVec1))
end

-- Returns the dot product of two vectors.
function vdot(tVec1, tVec2)
	return vsum(vmultiplyV(tVec1, tVec2))
end

-- Returns the angle between two vectors.
function vangle(tVec1, tVec2)
	return acos(vdot(vnormalize(tVec1), vnormalize(tVec2)))
end

-- Returns the cross product of two vectors as a new vector.
function vcross(tVec1, tVec2)
	return
	{
		tVec1[2] * tVec2[3] - tVec1[3] * tVec2[2],
		tVec1[3] * tVec2[1] - tVec1[1] * tVec2[3],
		tVec1[1] * tVec2[2] - tVec1[2] * tVec2[1],
	}
end

-- Adds an amount to each vector component, then returns the resulting vector.
function vadd(tVec, fVal)
	local tmpVec = {}
	for i, tTab in tVec do
		tmpVec[i] = tVec[i] + fVal
	end
	return tmpVec
end

-- Adds the components of the second vector to the components of the first vector, then returns the resulting vector.
function vaddV(tVec1, tVec2)
	local tmpVec = {}
	for i, tTab in tVec2 do
		tmpVec[i] = tVec1[i] + tTab
	end
	return tmpVec
end

-- Subtracts an amount from each vector component, then returns the resulting vector.
function vsubtract(tVec, fVal)
	local tmpVec = {}
	for i, tTab in tVec do
		tmpVec[i] = tVec[i] - fVal
	end
	return tmpVec
end

-- Subtracts the components of the second vector from the components of the first vector, then returns the resulting vector.
function vsubtractV(tVec1, tVec2)
	local tmpVec = {}
	for i, tTab in tVec2 do
		tmpVec[i] = tVec1[i] - tTab
	end
	return tmpVec
end

-- Multiplies each vector component by some amount, then returns the resulting vector.
function vmultiply(tVec, fVal)
	local tmpVec = {}
	for i, tTab in tVec do
		tmpVec[i] = tTab * fVal
	end
	return tmpVec
end

-- Multiplies the components of the first vector by the components of the second vector, then returns the resulting vector.
function vmultiplyV(tVec1, tVec2)
	local tmpVec = {}
	for i, tTab in tVec2 do
		tmpVec[i] = tVec1[i] * tTab
	end
	return tmpVec
end

-- Divides each vector component by some amount, then returns the resulting vector.
function vdivide(tVec, fVal)
	local tmpVec = {}
	for i, tTab in tVec do
		tmpVec[i] = tTab/fVal
	end
	return tmpVec
end

-- Divides the components of the first vector by the components of the second vector, then returns the resulting vector.
function vdivideV(tVec1, tVec2)
	local tmpVec = {}
	for i, tTab in tVec2 do
		tmpVec[i] = tVec1[i]/tTab
	end
	return tmpVec
end

-- Raises each vector component to the some power, then returns the new vector.
function vpower(tVec, fVal)
	local tmpVec = {}
	for i, tTab in tVec do
		tmpVec[i] = tTab^fVal
	end
	return tmpVec
end

-- Raises the components of the first vector to the power specified by the components the second vector, then returns the new vector.
function vpowerV(tVec1, tVec2)
	local tmpVec = {}
	for i, tTab in tVec2 do
		tmpVec[i] = tVec1[i]^tTab
	end
	return tmpVec
end

-- Returns the sum of all the vector's components.
function vsum(tVec1)
	local tmpVal = 0
	for i, tTab in tVec1 do
		tmpVal = tmpVal + tTab
	end
	return tmpVal
end

-- Returns a vector converted into a string.
function vstr(tVec)
	local tmpStr = "{"
	for i, tTab in tVec do
		tmpStr = tmpStr .. tTab .. ", "
	end
	tmpStr = tmpStr .. "}"
	return tmpStr
end

function vfloor(tVec)
	local tmpVec = {}
	for i, tTab in tVec do
		tmpVec[i] = floor(tVec[i])
	end
	return tmpVec
end

-- Rotates a vector around the origin by the specified Euler angles, then returns the resulting vector.
-- Rotates around the Z-axis first, followed by the X-axis and the Y-axis.
function vrotate(tVec, tAng)
	tVec =
	{
		tVec[1] * cos(tAng[3]) - tVec[2] * sin(tAng[3]),
		tVec[1] * sin(tAng[3]) + tVec[2] * cos(tAng[3]),
		tVec[3],
	}
	tVec =
	{
		tVec[1],
		tVec[2] * cos(tAng[1]) - tVec[3] * sin(tAng[1]),
		tVec[2] * sin(tAng[1]) + tVec[3] * cos(tAng[1]),
	}
	tVec =
	{
		tVec[1] * cos(tAng[2]) + tVec[3] * sin(tAng[2]),
		tVec[2],
		-1 * tVec[1] * sin(tAng[2]) + tVec[3] * cos(tAng[2]),
	}
	return tVec
end

-- Returns an array containing the vector's Euler angles, relative to the Z-axis.
-- To reproduce the original vector, rotate a point on the Z-axis by these angles.
function vanglesXY(tVec2)
	local fSgnX, fSgnY, tPrjB1 = 1, 1, vnormalize({tVec2[1], 0, tVec2[3],})
	if (tPrjB1[1] ~= 0) then
		fSgnX = tPrjB1[1]/abs(tPrjB1[1]) * -1
	end
	local fAngY = acos(tPrjB1[3]) * fSgnX
	local tPrjB2 = vnormalize(vrotate(tVec2, {0, fAngY, 0,}))
	if (tPrjB2[2] ~= 0) then
		fSgnY = tPrjB2[2]/abs(tPrjB2[2])
	end
	local fAngX = acos(tPrjB2[3]) * fSgnY
	return {fAngX * -1, fAngY * -1, 0,}
end

-- Rotates the first vector around the second vector by some amount, then returns the resulting vector.
function vaxis_rotate(tVec1, tVec2, fAngZ)
	local tAng = vanglesXY(tVec2)
	return vrotate(vrotate(vrotate(vrotate(tVec1, {0, tAng[2], 0,}), {tAng[1], 0, 0,}), {0, 0, fAngZ,}), vmultiply(tAng, -1))
end


--------------------------------------------------------------------------------
-- Some table manipulation functions.
--

--------------------------------------------------------------------------------
-- Returns the length of a table. Useful where the 'getn' function is normally unavailable.
if not getn then
	function getn(tTable)
		local nCount = 0
		for i, iCount in tTable do
			if i ~= "n" then
				nCount = nCount + 1
			end
		end
		return nCount
	end
end


--------------------------------------------------------------------------------
-- Inserts an item into a table. Useful where the 'tinsert' function is normally unavailable.
if not tinsert then
	function tinsert(tTable, Arg1, Arg2)
		if (Arg2) then
			local TempTable = {}
			for i = Arg1, getn(tTable) do
				TempTable[i + 1] = tTable[i]
			end
			for i = Arg1, getn(tTable) do
				tTable[i + 1] = TempTable[i + 1]
			end
			tTable[Arg1] = Arg2
		else
			tTable[getn(tTable) + 1] = Arg1
		end
	end
end


--------------------------------------------------------------------------------
-- Compares two tables and returns true if they're equal and false if they're not.
function tcomp(tTable1, tTable2)
	local same = 1
	if (getn(tTable1) ~= getn(tTable2)) then
		same = 0
	else
		for i, k in tTable1 do
			if (type(tTable1[i]) == "table") and (type(tTable2[i]) == "table") then
				same = tcomp(tTable1[i], tTable2[i])
				if (same == 0) then
					break
				end
			elseif (tTable1[i] ~= tTable2[i]) then
				same = 0
				break
			end
		end
	end
	return same
end


--------------------------------------------------------------------------------
-- Converts a decimal value into a fraction.
function decimal_to_fraction(fNumber)
	local fullNumber = floor(fNumber)
	local iNumerator = fNumber - fullNumber
	local iDenominator = 1
	while (iNumerator ~= floor(iNumerator)) do
		iNumerator = iNumerator * 10
		iDenominator = iDenominator * 10
	end
	iNumerator = floor(iNumerator)
	for i = 2, floor(sqrt(iNumerator)) do
		while ((mod(iNumerator, i) == 0) and (mod(iDenominator, i) == 0)) do
			iNumerator = iNumerator / i
			iDenominator = iDenominator / i
		end
	end
	iNumerator = iNumerator + fullNumber * iDenominator
--	print(fNumber .. " = " .. iNumerator .. "/" .. iDenominator)
	return iNumerator, iDenominator
end


--------------------------------------------------------------------------------
--
function debug_print(sMessage)
	if (debug_text == true) then
		print(sMessage)
	end
end

-------------------------------------------------------------------------------
-- returns the HW2 pathname
-- by can't remember author
function HW2Path()
	execute("dir > dir.txt")
	local handle = openfile("dir.txt", "r")
	local filestring = read(handle, "*a")
	closefile(handle)
	local start_of_string
	local count = 65
	while not start_of_string and count < (65 + 26) do
		start_of_string = strfind(filestring, strchar(count) .. ":\\")
		count = count + 1
	end
	if start_of_string then
		return strsub(filestring, start_of_string, strfind(filestring, "\\Bin\\Release"))
	end
end
