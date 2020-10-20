local width=10
local height=10
dofile("turtleutil.lua")
function FarmCycle(x, y)
	for h=1,y do
		for w=1, x do
			local success, block = turtle.inspect()
			if block.name == "minecraft:log" then
				ChopTree()
				turtle.place()
				Move("left", 2)
			end
		end
		Move("left", 1)
		Move("forward", 2)
		Move("Right", (x*x+1))
	end
end
