hl.config({
    general = {
        -- Gaps and border
        gaps_in = 4,
        gaps_out = 4,
        gaps_workspaces = 50,

        border_size = 2,
        col = {
            active_border = "rgba(3f3f46FF)",
            inactive_border = "rgba(09090b00)",
        },
        resize_on_border = true,

        no_focus_fallback = true,

        allow_tearing = true, -- This just allows the `immediate` window rule to work

        snap = {
            enabled = true,
        },
    },

    dwindle = {
        preserve_split = true,
        smart_split = false,
        smart_resizing = false,
        -- precise_mouse_move = true,
    },

    animations = {
        enabled = true,
    },

    decoration = {
        rounding = 16,

        blur = {
            enabled = true,
            xray = true,
            special = false,
            new_optimizations = true,
            size = 12,
            passes = 3,
            brightness = 1,
            noise = 0.01,
            contrast = 1,
            popups = true,
            popups_ignorealpha = 0.6,
            input_methods = true,
            input_methods_ignorealpha = 0.8,
        },

        shadow = {
            enabled = true,
            range = 30,
            offset = { 0, 2 },
            render_power = 4,
            color = "rgba(00000010)",
        },

        active_opacity = 1.0,
        inactive_opacity = 0.85,

        -- Dim
        dim_inactive = true,
        dim_strength = 0.025,
        dim_special = 0.07,
    },

    input = {
        kb_layout = "us",
        numlock_by_default = true,
        repeat_delay = 250,
        repeat_rate = 35,

        follow_mouse = 1,
        off_window_axis_events = 2,

        tablet = {
            output = "HDMI-A-1",
        },
    },

    misc = {
        disable_hyprland_logo = true,
        disable_splash_rendering = true,
        vrr = 0, -- This sucks
        mouse_move_enables_dpms = true,
        key_press_enables_dpms = true,
        animate_manual_resizes = false,
        animate_mouse_windowdragging = false,
        enable_swallow = false,
        swallow_regex = "(kitty|allacritty|Alacritty)",
        on_focus_under_fullscreen = 2,
        allow_session_lock_restore = true,
        session_lock_xray = true,
        initial_workspace_tracking = false,
        focus_on_activate = true,
    },

    binds = {
        scroll_event_delay = 0,
        hide_special_on_workspace_change = true,
    },

    cursor = {
        zoom_factor = 1,
        zoom_rigid = false,
    },

    -- Overview
    plugin = {
        hyprexpo = {
            columns = 3,
            gap_size = 5,
            bg_col = "rgb(000000)",
            workspace_method = "first 1", -- [center/first] [workspace] e.g. first 1 or center m+1

            enable_gesture = false, -- laptop touchpad, 4 fingers
        },
    },
})

-- Curves
hl.curve("expressiveFastSpatial", { type = "bezier", points = { { 0.42, 1.67 }, { 0.21, 0.90 } } })
hl.curve("expressiveSlowSpatial", { type = "bezier", points = { { 0.39, 1.29 }, { 0.35, 0.98 } } })
hl.curve("expressiveDefaultSpatial", { type = "bezier", points = { { 0.38, 1.21 }, { 0.22, 1.00 } } })
hl.curve("emphasizedDecel", { type = "bezier", points = { { 0.05, 0.7 }, { 0.1, 1 } } })
hl.curve("emphasizedAccel", { type = "bezier", points = { { 0.3, 0 }, { 0.8, 0.15 } } })
hl.curve("standardDecel", { type = "bezier", points = { { 0, 0 }, { 0, 1 } } })
hl.curve("menu_decel", { type = "bezier", points = { { 0.1, 1 }, { 0, 1 } } })
hl.curve("menu_accel", { type = "bezier", points = { { 0.52, 0.03 }, { 0.72, 0.08 } } })

-- Configs
-- windows
hl.animation({ leaf = "windowsIn", enabled = true, speed = 3, bezier = "emphasizedDecel", style = "popin 80%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 2, bezier = "emphasizedDecel", style = "popin 90%" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 3, bezier = "emphasizedDecel", style = "slide" })
hl.animation({ leaf = "border", enabled = true, speed = 10, bezier = "emphasizedDecel" })
-- layers
hl.animation({ leaf = "layersIn", enabled = true, speed = 2.7, bezier = "emphasizedDecel", style = "popin 93%" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 2.4, bezier = "menu_accel", style = "popin 94%" })
-- fade
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 0.5, bezier = "menu_decel" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 2.7, bezier = "menu_accel" })
-- workspaces
hl.animation({ leaf = "workspaces", enabled = true, speed = 7, bezier = "menu_decel", style = "slide" })
-- specialWorkspace
hl.animation({ leaf = "specialWorkspaceIn", enabled = true, speed = 2.8, bezier = "emphasizedDecel", style = "slidevert" })
hl.animation({ leaf = "specialWorkspaceOut", enabled = true, speed = 1.2, bezier = "emphasizedAccel", style = "slidevert" })
