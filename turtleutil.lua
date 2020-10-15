function Land()
	while not turtle.detectDown() do
		turtle.down()
	end
end
function Move(direction, amount)
	if direction is "up" or "u" then
		for i=1,amount do
			turtle.up()
		end
	elseif direction is "down" or "d" then
		for i=1,amount do
			turtle.down()
		end
	elseif direction is "right" or "r" then
		turtle.turnRight()
		for i=1,amount do
			turtle.forward()
		end
		turtle.turnLeft()
	elseif direction is "left" or "l" then
		turtle.turnLeft()
		for i=1,amount do
			turtle.forward()
		end
		turtle.turnRight()
	else
		print("What direction?")
	end
end
