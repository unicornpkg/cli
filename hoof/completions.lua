local completion = require "cc.shell.completion"

shell.setCompletionFunction("bin/hoof.lua", completion.build({ completion.choice, { "install", "uninstall", "add", "remove" } }))
