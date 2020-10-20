local file = arg[1]..".lua"
shell.run(rm file)
shell.run(wget "https://raw.githubusercontent.com/Pushigoh/ComputerCraftUtils/main/"..file file)
