function Land()
	while not turtle.detectDown() do
		turtle.down()
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
	else
		print("What direction?")
	end
end
