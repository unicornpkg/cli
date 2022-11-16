local unicorn = dofile("/lib/unicorn/init.lua")

local tArgs = {...}

local command = tArgs[1]
local target = tArgs[2]

local usage = [[unicorntool - interface to unicornpkg

Usage:
unicorntool install /PATH/TO/FILE
unicorntool uninstall package_name

See also:

help hoof
help unicorntool
]]

if command == "install" or command == "add" then
	local f = dofile(target)
	unicorn.core.install(f)
elseif command == "uninstall" or command == "remove" then
	unicorn.core.uninstall(target)
elseif command == "help" or command == "h" then
	print(usage)
else
	print(usage)
	error("No such command.")
end
