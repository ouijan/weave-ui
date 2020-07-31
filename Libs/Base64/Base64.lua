Base64 = {}

-- Convert base 64 value to ASCII & conversely
local encode, decode = {}, { [strbyte("=")] = false }
for value = 0, 63 do
	local char = strsub('ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/', value+1, value+1)
	encode[value] = char
	decode[strbyte(char)] = value
end

-- Working table
local t = {}

function Base64:encode(str)
	local j = 1
	for i = 1, strlen(str), 3 do
		local a, b, c = strbyte(str, i, i+2)
		t[j] = encode[bit.rshift(a, 2)]
		t[j+1] = encode[bit.band(bit.lshift(a, 4) + bit.rshift(b or 0, 4), 0x3F)]
		t[j+2] = b and encode[bit.band(bit.lshift(b, 2) + bit.rshift(c or 0, 6), 0x3F)] or "="
		t[j+3] = c and encode[bit.band(c, 0x3F)] or "="
		j = j + 4
	end
	return table.concat(t, "", 1, j-1)
end

function Base64:decode(str)
	local j = 1
	assert(strlen(str) % 4 == 0, format("%s: invalid data length: %d", MAJOR, strlen(str)))
	for i = 1, strlen(str), 4 do
		local ba, bb, bc, bd = strbyte(str, i, i+3)
		local a, b, c, d = decode[ba], decode[bb], decode[bc], decode[bd]
		assert(a ~= nil, format("%s: invalid data at position %d: '%s'", MAJOR, i, ba))
		assert(b ~= nil, format("%s: invalid data at position %d: '%s'", MAJOR, i+1, bb))
		assert(c ~= nil, format("%s: invalid data at position %d: '%s'", MAJOR, i+2, bc))
		assert(d ~= nil, format("%s: invalid data at position %d: '%s'", MAJOR, i+3, bd))
		t[j] = strchar(bit.lshift(a, 2) + bit.rshift(b, 4))
		t[j+1] = c and strchar(bit.band(bit.lshift(b, 4) + bit.rshift(c, 2), 0xFF)) or ""
		t[j+2] = d and strchar(bit.band(bit.lshift(c, 6) + d, 0xFF)) or ""
		j = j + 3
	end
	return table.concat(t, "", 1, j-1)
end


return Base64
