local width=10
local height=10
dofile("turtleutil.lua")
function FarmCycle(x, y)
	local success
	local block
	for h=1,y do
		for w=1, x do
			success, block = turtle.inspect()
			if block.name == "minecraft:log" then
				ChopTree()
				turtle.place()
			end
				Move("left", 1)
				ChopLeaves()
				Move("left", 1)

		end
		Move("left", 1)
		Move("forward", 2)
		Move("right", (x*2+1))
	end
end
FarmCycle(width, height)
