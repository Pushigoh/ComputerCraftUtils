local file = arg[1]..".lua"
local link = "https://raw.githubusercontent.com/Pushigoh/ComputerCraftUtils/main/"..file
shell.run(rm file)
shell.run(wget link file)
