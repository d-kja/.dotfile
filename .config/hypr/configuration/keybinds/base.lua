return function(vars)
    local WKEY = vars.WKEY

    -- Window

    -- Focusing
    hl.bind(WKEY .. " + mouse:272", hl.dsp.window.drag(), { mouse = true }) -- Move
    hl.bind(WKEY .. " + mouse:274", hl.dsp.window.drag(), { mouse = true })
    hl.bind(WKEY .. " + mouse:273", hl.dsp.window.resize(), { mouse = true }) -- Resize

    -- Focus in direction
    hl.bind(WKEY .. " + Left", hl.dsp.focus({ direction = "l" }))
    hl.bind(WKEY .. " + Right", hl.dsp.focus({ direction = "r" }))
    hl.bind(WKEY .. " + Up", hl.dsp.focus({ direction = "u" }))
    hl.bind(WKEY .. " + Down", hl.dsp.focus({ direction = "d" }))
    hl.bind(WKEY .. " + BracketLeft", hl.dsp.focus({ direction = "l" }))
    hl.bind(WKEY .. " + BracketRight", hl.dsp.focus({ direction = "r" }))

    -- Move in direction
    hl.bind(WKEY .. " + SHIFT + Left", hl.dsp.window.move({ direction = "l" }))
    hl.bind(WKEY .. " + SHIFT + Right", hl.dsp.window.move({ direction = "r" }))
    hl.bind(WKEY .. " + SHIFT + Up", hl.dsp.window.move({ direction = "u" }))
    hl.bind(WKEY .. " + SHIFT + Down", hl.dsp.window.move({ direction = "d" }))

    -- Window split ratio

    -- Adjust split ratio
    -- hl.bind(WKEY .. " + ALT + Left", hl.dsp.layout("splitratio -0.1"), { repeating = true })
    -- hl.bind(WKEY .. " + ALT + Right", hl.dsp.layout("splitratio +0.1"), { repeating = true })

    -- Positioning mode
    hl.bind(WKEY .. " + P", hl.dsp.window.float({ action = "toggle" })) -- Float/Tile

    hl.bind(WKEY .. " + F", hl.dsp.window.fullscreen({ mode = "maximized" })) -- Maximize
    hl.bind(WKEY .. " + SHIFT + F", hl.dsp.window.fullscreen({ mode = "fullscreen" })) -- Fullscreen

    -- hl.bind(WKEY .. " + ALT + F", hl.dsp.window.fullscreen_state({ internal = 0, client = 3 })) -- Fullscreen spoof

    -- Workspace

    hl.bind("ALT + Tab", hl.dsp.window.cycle_next())
    hl.bind("ALT + Tab", hl.dsp.window.bring_to_top())

    -- Left/Right
    hl.bind("CTRL + " .. WKEY .. " + Right", hl.dsp.focus({ workspace = "r+1" }))
    hl.bind("CTRL + " .. WKEY .. " + Left", hl.dsp.focus({ workspace = "r-1" }))

    -- Scroll up/down
    hl.bind(WKEY .. " + mouse_up", hl.dsp.focus({ workspace = "+1" }))
    hl.bind(WKEY .. " + mouse_down", hl.dsp.focus({ workspace = "-1" }))

    hl.bind("CTRL + " .. WKEY .. " + mouse_up", hl.dsp.focus({ workspace = "r+1" }))
    hl.bind("CTRL + " .. WKEY .. " + mouse_down", hl.dsp.focus({ workspace = "r-1" }))

    -- Special
    hl.bind(WKEY .. " + mouse:275", hl.dsp.workspace.toggle_special("special"))

    hl.bind("CTRL + " .. WKEY .. " + BracketLeft", hl.dsp.focus({ workspace = "-1" }))
    hl.bind("CTRL + " .. WKEY .. " + BracketRight", hl.dsp.focus({ workspace = "+1" }))

    hl.bind(WKEY .. " + 1", hl.dsp.focus({ workspace = 1 }))
    hl.bind(WKEY .. " + 2", hl.dsp.focus({ workspace = 2 }))
    hl.bind(WKEY .. " + 3", hl.dsp.focus({ workspace = 3 }))
    hl.bind(WKEY .. " + 4", hl.dsp.focus({ workspace = 4 }))

    hl.bind("CTRL + " .. WKEY .. " + Up", hl.dsp.focus({ workspace = "r-5" }))
    hl.bind("CTRL + " .. WKEY .. " + Down", hl.dsp.focus({ workspace = "r+5" }))

    hl.bind("SHIFT + " .. WKEY .. " + 1", hl.dsp.window.move({ workspace = 1 }))
    hl.bind("SHIFT + " .. WKEY .. " + 2", hl.dsp.window.move({ workspace = 2 }))
    hl.bind("SHIFT + " .. WKEY .. " + 3", hl.dsp.window.move({ workspace = 3 }))
    hl.bind("SHIFT + " .. WKEY .. " + 4", hl.dsp.window.move({ workspace = 4 }))
    hl.bind("SHIFT + " .. WKEY .. " + 5", hl.dsp.window.move({ workspace = 5 }))
    hl.bind("SHIFT + " .. WKEY .. " + 6", hl.dsp.window.move({ workspace = 6 }))
    hl.bind("SHIFT + " .. WKEY .. " + 7", hl.dsp.window.move({ workspace = 7 }))
    hl.bind("SHIFT + " .. WKEY .. " + 8", hl.dsp.window.move({ workspace = 8 }))
    hl.bind("SHIFT + " .. WKEY .. " + 9", hl.dsp.window.move({ workspace = 9 }))

    -- Send to workspace left/right
    hl.bind(WKEY .. " + ALT + Page_Down", hl.dsp.window.move({ workspace = "+1", follow = true }))
    hl.bind(WKEY .. " + ALT + Page_Up", hl.dsp.window.move({ workspace = "-1", follow = true }))

    hl.bind(WKEY .. " + SHIFT + Page_Down", hl.dsp.window.move({ workspace = "r+1", follow = true }))
    hl.bind(WKEY .. " + SHIFT + Page_Up", hl.dsp.window.move({ workspace = "r-1", follow = true }))

    hl.bind("CTRL + " .. WKEY .. " + SHIFT + Right", hl.dsp.window.move({ workspace = "r+1", follow = true }))
    hl.bind("CTRL + " .. WKEY .. " + SHIFT + Left", hl.dsp.window.move({ workspace = "r-1", follow = true }))

    -- Resize window
    hl.bind("CTRL + " .. WKEY .. " + Backslash", hl.dsp.window.resize({ x = 640, y = 480 }))

    -- Session

    hl.bind(WKEY .. " + SHIFT + L", hl.dsp.exec_cmd("loginctl lock-session"), { description = "Lock" }) -- Lock
    -- hl.bind("CTRL + " .. WKEY .. " + L", hl.dsp.exec_cmd("sleep 0.1 && systemctl suspend || loginctl suspend"), { locked = true, description = "Suspend system" }) -- Sleep
    -- hl.bind("CTRL + SHIFT + ALT + " .. WKEY .. " + Delete", hl.dsp.exec_cmd("systemctl poweroff || loginctl poweroff"), { description = "Shutdown" }) -- Power off

    -- Media

    hl.bind(WKEY .. " + SHIFT + N", hl.dsp.exec_cmd("playerctl next || playerctl position `bc <<< \"100 * $(playerctl metadata mpris:length) / 1000000 / 100\"`"), { locked = true }) -- Next track
    hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next || playerctl position `bc <<< \"100 * $(playerctl metadata mpris:length) / 1000000 / 100\"`"), { locked = true })

    hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
    hl.bind(WKEY .. " + SHIFT + ALT + mouse:275", hl.dsp.exec_cmd("playerctl previous"))
    hl.bind(WKEY .. " + SHIFT + ALT + mouse:276", hl.dsp.exec_cmd("playerctl next || playerctl position `bc <<< \"100 * $(playerctl metadata mpris:length) / 1000000 / 100\"`"))

    hl.bind(WKEY .. " + SHIFT + P", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true }) -- Play/pause media

    hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
    hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })

    -- Increase/decrease volume (if it's not the same keybind, you can use wev to capture the name)
    hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 1%+"), { locked = true })
    hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 1%-"), { locked = true })
end
