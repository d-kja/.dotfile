return function(vars)
    local WKEY = vars.WKEY
    local COMMAND = vars.COMMAND
    local explorer = vars.explorer
    local terminal = vars.terminal
    local browser = vars.browser

    -- Apps

    hl.bind(COMMAND .. " + Q", hl.dsp.exec_cmd(terminal))
    hl.bind(WKEY .. " + E", hl.dsp.exec_cmd(explorer))
    hl.bind(WKEY .. " + SHIFT + E", hl.dsp.exec_cmd(browser))

    hl.bind("CTRL + " .. WKEY .. " + V", hl.dsp.exec_cmd(terminal .. " -e wiremix"))
    hl.bind("SHIFT + " .. WKEY .. " + S", hl.dsp.exec_cmd(terminal .. " -e spotify_player"))
    hl.bind(COMMAND .. " + S", hl.dsp.exec_cmd("vicinae toggle"))

    -- Toggle waybar (Temporary)
    -- hl.bind("CTRL + SHIFT + P", hl.dsp.exec_cmd("pkill waybar || waybar"))

    -- Toggle window
    hl.bind("ALT + Tab", hl.dsp.exec_cmd("vicinae vicinae://extensions/vicinae/wm/switch-windows"))

    hl.bind(WKEY .. " + SHIFT + R", hl.dsp.exec_cmd("$HOME/.config/hypr/scripts/reset.sh"))

    -- Utilities

    -- Toggle source mute (special mouse button, replace with w/e works for you)
    hl.bind(WKEY .. " + D", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"))

    hl.bind("CTRL + SHIFT + Delete", hl.dsp.exec_cmd("$HOME/.config/hypr/scripts/screenshot-edit.sh"))
    hl.bind("CTRL + Delete", hl.dsp.exec_cmd("$HOME/.config/hypr/scripts/screenshot.sh"))

    hl.bind(WKEY .. " + V", hl.dsp.exec_cmd("vicinae vicinae://extensions/vicinae/clipboard/history"))
    hl.bind("CTRL + " .. WKEY .. " + C", hl.dsp.exec_cmd("hyprpicker -a")) -- Pick color (Hex) >> clipboard

    hl.bind(WKEY .. " + Period", hl.dsp.exec_cmd("vicinae vicinae://extensions/vicinae/core/search-emojis"))

    -- Close window
    hl.bind(WKEY .. " + SHIFT + Q", hl.dsp.window.close()) -- Close
    hl.bind(COMMAND .. " + F4", hl.dsp.window.close()) -- [hidden] Close (Windows)
    hl.bind("SHIFT + CTRL + " .. WKEY .. " + Q", hl.dsp.exec_cmd("hyprctl kill")) -- Forcefully zap a window

    -- Special Workspace

    hl.bind(WKEY .. " + SHIFT + C", hl.dsp.window.move({ workspace = "special:special" })) -- Send to scratchpad
    hl.bind(WKEY .. " + C", hl.dsp.workspace.toggle_special("special")) -- Toggle scratchpad
end
