package.path = "/lib/?.lua;/lib/?;/lib/?/init.lua;" .. package.path
local unicorn = require("unicorn")

local tArgs = {...}

local command = tArgs[1]
local target = tArgs[2]

local function complete()
	local completion = require "cc.shell.completion"
		shell.setCompletionFunction(shell.getRunningProgram(), completion.build(
 	{ completion.choice, { "install", "uninstall" } }
))
end

complete()
if command == "install" or command == "add" then
	local f = dofile(target)
	unicorn.core.install(f)
elseif command == "uninstall" or command == "remove" then
	unicorn.core.uninstall(target)
else
	error("No such command.")
end
