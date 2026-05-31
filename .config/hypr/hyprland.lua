-- Hyprland Lua entrypoint.

local vars = require("configuration.env")

require("configuration.executables")
require("configuration.general")
require("configuration.rules")
require("configuration.keybinds.base")(vars)
require("configuration.keybinds.custom")(vars)
