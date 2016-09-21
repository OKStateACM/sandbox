--[[
* created by Alex Durville

* ACM group list (your name|your github account):
	* Alex Durville|o080o
	* Ben Myers|bendmyers
	* Andrew Bevelhymer
--]]

--first, we read in the file
local filename = 'names.txt'
local file = io.open(filename)

--first we will read in all the names into one big list
local names = {}
while true do
	local line = file:read("*l") --read in a line
	if not line then break end --stop when we reach the end
	table.insert(names, line) --add this name to our list
end

--Now we select some random names and add it to a smaller list
local number, outputList = 10, {} --define how many tames we want to output, and an empty list for our output
for i=1,number do --simple for loop construction. iterates from 1 to number, so it will repeat *number* times.
	local position = math.random(1,#names) --we select a random line number
	local name = table.remove(names, position)
	table.insert(outputList, name) --and add it to the output list
end


--and finally, print out the final lists.
for index, name in ipairs(outputList) do --iterates over every item in the table 'outputList'
	print(name)
end
