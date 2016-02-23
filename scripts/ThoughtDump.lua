-- ThoughtDump v1.23
-- *****************
-- Created by Thought (http://hw2.tproc.org)
-- Updated by Mikail

-- DESCRIPTION
-- ***********
-- Parses the globals table and prints its contents to "HW2.log".
-- Can also be used to parse (i.e., pretty-print) generic tables in some cases.

-- Note: functions & variables must actually be declared in order to be parsed. 
-- Otherwise, they are ignored.
-- Note: if parsing a table other than the globals table, the printed table
-- values may be in a different order than was originally written. Values with 
-- numerical indices are moved to the "top" of the table, followed by values 
-- with string indices, followed by tables. Functions appear in different 
-- locations, depending on whether they are indexed using a number or a string.
-- Note: despite the fact that nil values cannot be stored in tables, they are 
-- still handled.
-- Note: even though functions may be referenced within tables, a function will 
-- only be parsed correctly if it is indexed using a string that is the same as
-- the name of the function.

_G = globals()

function __Prefix(level)
	local prefix = ""
	if level < 1 then
		return ""
	end
	for i = 1, level, 1 do
		prefix = prefix .. "	"
	end
	return prefix
end

function __Comma(level)
	if level > 0 then
		return ","
	end
	return ""
end

function __Parse(value, name, verbose, level)
	local Element = nil
	local Comment = nil
	if (level == nil) then
		level = 0
	else
		level = level + 1
	end
	if type(value) == "function" then
		if type(name) == "string" then
			Element = __Prefix(level) .. name .. " = " .. name .. __Comma(level)
		else
			Element = __Prefix(level) .. "[" .. name .. "] = " .. name .. __Comma(level)
		end
		Comment = "	-- function"
	elseif type(value) == "string" then
		if type(name) == "string" then
			Element = __Prefix(level) .. name .. " = \"" .. value .. "\"" .. __Comma(level)
		else
			Element = __Prefix(level) .. "[" .. name .. "] = \"" .. value .. "\"" .. __Comma(level)
		end
        Comment = "	-- string"
	elseif type(value) == "number" then
		if type(name) == "string" then
			Element = __Prefix(level) .. name .. " = " .. value .. __Comma(level)
		else
			Element = __Prefix(level) .. "[" .. name .. "] = " .. value .. __Comma(level)
		end
		Comment = "	-- number"
	elseif type(value) == "nil" then
		if type(name) == "string" then
			Element = __Prefix(level) .. name .. " = " .. value .. "" .. __Comma(level)
		else
			Element = __Prefix(level) .. value .. __Comma(level)
		end
		Comment = "	-- nil"
	elseif type(value) == "table" then
		if type(name) == "string" then
			Element = __Prefix(level) .. name .. " ="
		else
			Element = __Prefix(level) .. "[" .. name .. "] ="
		end
		Comment = "	-- table"
	elseif type(value) == "userdata" then
		Element = __Prefix(level) .. name .. " = \"tag: " .. tag(value) .. "\"" .. __Comma(level)
		Comment = "	-- userdata"
	end
	if (verbose == 1) then
		Element = Element .. Comment
	end
	print(Element)
	if type(value) == "table" and (level < 1 or name ~= "_G") then
		print(__Prefix(level) .. "{")
		for i, v in value do
			__Parse(v, i, verbose, level)
		end
		print(__Prefix(level) .. "}" .. __Comma(level))
	end
end

__Parse(_G, "globals", 1)
