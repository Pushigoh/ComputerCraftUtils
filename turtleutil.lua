function Land()
	while not turtle.detectDown() do
		turtle.down()
	end
end
function ChopTree()
	for i=1, 4 do
		turtle.dig()
		turtle.digUp()
		turtle.up()
	end
	while turtle.detectUp() do
		turtle.dig()
		turtle.digUp()
		turtle.up()
	end
	turtle.dig()
	Land()
end
function ChopLeaves()
	for i=1, 4 do
		turtle.digUp()
		turtle.up()
	end
	while turtle.detectUp() do
		turtle.digUp()
		turtle.up()
	end
end
function Move(direction, amount)
	print(direction)
	print(amount)
	if direction == "up" or direction == "u" then
		for i=1,amount do
			turtle.up()
		end
	elseif direction == "down" or direction == "d" then
		for i=1,amount do
			turtle.down()
		end
	elseif direction == "right" or direction == "r" then
		turtle.turnRight()
		for i=1,amount do
			turtle.forward()
		end
		turtle.turnLeft()
	elseif direction == "left" or direction == "l" then
		turtle.turnLeft()
		for i=1,amount do
			turtle.forward()
		end
		turtle.turnRight()
	elseif direction == "forward" or direction == "f" then
		for i=1,amount do
			turtle.forward()
		end
	elseif direction == "back" or direction == "b" then
		for i=1,amount do
			turtle.back()
		end
	else
		print("What direction?")
	end
end
