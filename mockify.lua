#!lua

local mock = ''

print('starting')

for i = 1, #(arg) do
	local word = arg[i]
	local limit = 0.5
	-- print(word)
	for j = 1, string.len(word) do
		local char = string.sub(word, j, j)

		local r = math.random()
		if r > limit then
			char = string.lower(char)
			limit = limit * 1.3
		else
			char = string.upper(char)
			limit = limit / 1.3
		end
		
		mock = mock .. char
	end
	mock = mock .. ' '
end

print('done, mock: \n' .. mock)

