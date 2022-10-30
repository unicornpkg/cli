local unicorn = dofile("/lib/unicorn/init.lua")
unicorn.util = dofile("/lib/unicorn/util.lua")

local tArgs = {...}

local command = tArgs[1]
local target = tArgs[2]

if command == "install" then
	local f = dofile(target)
	unicorn.install(f)
elseif command == "uninstall" or command == "remove" then
	unicorn.uninstall(target)
else
	error("No such command.")
end
