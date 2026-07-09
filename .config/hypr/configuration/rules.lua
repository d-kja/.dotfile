-- Here's a list of every variable: https://wiki.hyprland.org/Configuring/Variables/

-- Primary monitor
hl.monitor({ output = "DP-1", mode = "3440x1440@159.96", position = "1920x0", scale = "auto" })

-- Left monitor
hl.monitor({ output = "DP-2", mode = "2560x1440@165", position = "auto", scale = "auto" })

-- Kamvas 22 Tablet
hl.monitor({ output = "HDMI-A-1", mode = "1920x1080@60", position = "0x0", scale = "auto", transform = 2 })

local utility_size = { "monitor_w * 0.45", "monitor_h * 0.40" }

-- WINDOW RULES

-- Disable blur for xwayland context menus
hl.window_rule({ name = "windowrule-1", match = { class = [[^()$]], title = [[^()$]] }, no_blur = true })

-- hl.window_rule({ match = { xwayland = true }, no_blur = true })

-- Floating
hl.window_rule({ name = "windowrule-2", match = { class = [[^(blueberry\.py)$]] }, float = true })
hl.window_rule({ name = "windowrule-3", match = { class = [[^(guifetch)$]] }, float = true }) -- FlafyDev/guifetch
hl.window_rule({ name = "windowrule-4", match = { class = [[^(pavucontrol)$]] }, float = true, size = utility_size, center = true })
hl.window_rule({ name = "windowrule-5", match = { class = [[^(org.pulseaudio.pavucontrol)$]] }, float = true, size = utility_size, center = true })
hl.window_rule({ name = "windowrule-6", match = { class = [[^(nm-connection-editor)$]] }, float = true, size = utility_size, center = true })
hl.window_rule({ name = "windowrule-7", match = { class = [[.*plasmawindowed.*]] }, float = true })
hl.window_rule({ name = "windowrule-8", match = { class = [[kcm_.*]] }, float = true })
hl.window_rule({ name = "windowrule-9", match = { class = [[.*bluedevilwizard]] }, float = true })
hl.window_rule({ name = "windowrule-10", match = { title = [[.*Welcome]] }, float = true })
hl.window_rule({ name = "windowrule-11", match = { title = [[^(illogical-impulse Settings)$]] }, float = true })
hl.window_rule({ name = "windowrule-12", match = { class = [[org.freedesktop.impl.portal.desktop.kde]] }, float = true })
hl.window_rule({ name = "windowrule-13", match = { class = [[^(Zotero)$]] }, float = true, size = utility_size })

-- Move
hl.window_rule({ name = "windowrule-14", match = { class = [[^(plasma-changeicons)$]] }, float = true, no_initial_focus = true, move = { 999999, 999999 } })
hl.window_rule({ name = "windowrule-15", match = { title = [[^(Copying — Dolphin)$]] }, move = { 40, 80 } })

-- Tiling
hl.window_rule({ name = "windowrule-16", match = { class = [[^dev\.warp\.Warp$]] }, tile = true })

-- Picture-in-Picture
hl.window_rule({
    name = "windowrule-17",
    match = { title = [[^([Pp]icture[-\s]?[Ii]n[-\s]?[Pp]icture)(.*)$]] },
    float = true,
    keep_aspect_ratio = true,
    move = { "(monitor_w * 0.73)", "(monitor_h * 0.72)" },
    size = utility_size,
    pin = true,
})

-- Dialog windows – float+center these windows.
hl.window_rule({ name = "windowrule-18", match = { title = [[^(Open File)(.*)$]] }, center = true, float = true })
hl.window_rule({ name = "windowrule-19", match = { title = [[^(Select a File)(.*)$]] }, center = true, float = true })
hl.window_rule({ name = "windowrule-20", match = { title = [[^(Choose wallpaper)(.*)$]] }, center = true, float = true })
hl.window_rule({ name = "windowrule-21", match = { title = [[^(Open Folder)(.*)$]] }, center = true, float = true })
hl.window_rule({ name = "windowrule-22", match = { title = [[^(Save As)(.*)$]] }, center = true, float = true })
hl.window_rule({ name = "windowrule-23", match = { title = [[^(Library)(.*)$]] }, center = true, float = true })
hl.window_rule({ name = "windowrule-24", match = { title = [[^(File Upload)(.*)$]] }, center = true, float = true })
hl.window_rule({ name = "windowrule-25", match = { title = [[^(.*)(wants to save)$]] }, center = true, float = true })
hl.window_rule({ name = "windowrule-26", match = { title = [[^(.*)(wants to open)$]] }, center = true, float = true })
hl.window_rule({ name = "float-modal", match = { modal = true }, float = true, center = true })
hl.window_rule({ name = "float-xdg-dialog", match = { xdg_tag = [[dialog]] }, float = true, center = true })
hl.window_rule({ name = "float-xdg-utility", match = { xdg_tag = [[utility]] }, float = true })
hl.window_rule({ name = "float-xdg-toolbar", match = { xdg_tag = [[toolbar]] }, float = true })
hl.window_rule({ name = "float-xdg-splash", match = { xdg_tag = [[splash]] }, float = true })

-- Tearing
hl.window_rule({ name = "windowrule-27", match = { title = [[.*\.exe]] }, immediate = true })
hl.window_rule({ name = "windowrule-28", match = { title = [[.*minecraft.*]] }, immediate = true })
hl.window_rule({ name = "windowrule-29", match = { class = [[^(steam_app).*]] }, immediate = true })

-- No shadow for tiled windows (matches windows that are not floating).
hl.window_rule({ name = "windowrule-30", match = { float = false }, no_shadow = true })

-- Ignore maximize requests from apps. You'll probably like this.
hl.window_rule({ name = "windowrule-31", match = { class = [[.*]] }, suppress_event = "maximize" })

-- Fix some dragging issues with XWayland
hl.window_rule({
    name = "windowrule-32",
    match = { class = [[^$]], title = [[^$]], xwayland = true, float = true, fullscreen = false, pin = false },
    no_focus = true,
})

-- Screen sharing
hl.window_rule({
    name = "windowrule-33",
    match = { class = [[^(xwaylandvideobridge)$]] },
    opacity = "0.0 override",
    no_anim = true,
    no_initial_focus = true,
    max_size = { 1, 1 },
    no_blur = true,
    no_focus = true,
})

-- Firefox
hl.window_rule({ name = "windowrule-34", match = { class = [[firefox]] }, no_blur = true }) -- disables blur for firefox
hl.window_rule({ name = "windowrule-35", match = { class = [[firefox]] }, opacity = "1.0 override 1.0 override 1.0 override" }) -- disables opacity for firefox

-- Zen
hl.window_rule({ name = "windowrule-36", match = { class = [[zen]] }, no_blur = true, opacity = "1.0 override 1.0 override 1.0 override" })

-- Krita
hl.window_rule({ name = "windowrule-37", match = { class = [[krita]] }, no_blur = true, opacity = "1.0 override 1.0 override 1.0 override" })
-- hl.window_rule({ match = { class = [[krita]] }, monitor = "2" })

-- Spotify
-- hl.window_rule({ name = "windowrule-38", match = { class = [[Spotify]] }, float = true, monitor = "2", size = { "monitor_w * 0.45", "monitor_h * 0.95" }, move = { "monitor_w * 0.535", "monitor_h * 0.025" } })

-- Faugus
-- hl.window_rule({ name = "windowrule-39", match = { class = [[faugus-launcher]] }, float = true, monitor = "2", size = { "monitor_w * 0.45", "monitor_h * 0.95" }, move = { "monitor_w * 0.025", "monitor_h * 0.025" } })

-- Slack
-- hl.window_rule({ name = "windowrule-40", match = { class = [[Slack]] }, monitor = "2", no_screen_share = true })

-- Images
hl.window_rule({ name = "windowrule-41", match = { class = [[imv]] }, no_blur = true, opacity = "1.0 override 1.0 override 1.0 override" })

-- Images
hl.window_rule({ name = "windowrule-42", match = { class = [[vesktop]] }, no_screen_share = true })
hl.window_rule({ name = "windowrule-43", match = { class = [[discord]] }, no_screen_share = true })
hl.window_rule({ name = "windowrule-44", match = { class = [[ZapZap]] }, no_screen_share = true })
hl.window_rule({ name = "windowrule-44-zapzap-lower", match = { class = [[zapzap]] }, no_screen_share = true })

-- Firefox (avoid leaking anything during work hours lol)
-- hl.window_rule({ name = "windowrule-45", match = { class = [[firefox]] }, no_screen_share = true })

hl.window_rule({ name = "windowrule-46", match = { class = [[^tempus$]], title = [[^Tempus$]] }, float = true, pin = true, move = { "monitor_w - 320 - 12", 12 } })
hl.window_rule({ name = "windowrule-47", match = { class = [[^tempus$]], title = [[^Settings$]] }, float = true, center = true, size = { 360, 520 } })

-- Workspace rules
hl.workspace_rule({ workspace = "special:special", gaps_out = 10 })

-- Layer rules
hl.layer_rule({ name = "layerrule-1", match = { namespace = [[.*]] }, xray = true })
-- hl.layer_rule({ match = { namespace = [[.*]] }, no_anim = true })
hl.layer_rule({ name = "layerrule-2", match = { namespace = [[walker]] }, no_anim = true })
hl.layer_rule({ name = "layerrule-3", match = { namespace = [[selection]] }, no_anim = true })
hl.layer_rule({ name = "layerrule-4", match = { namespace = [[overview]] }, no_anim = true })
hl.layer_rule({ name = "layerrule-5", match = { namespace = [[anyrun]] }, no_anim = true })
hl.layer_rule({ name = "layerrule-6", match = { namespace = [[indicator.*]] }, no_anim = true })
hl.layer_rule({ name = "layerrule-7", match = { namespace = [[osk]] }, no_anim = true })
hl.layer_rule({ name = "layerrule-8", match = { namespace = [[hyprpicker]] }, no_anim = true })
hl.layer_rule({ name = "layerrule-9", match = { namespace = [[noanim]] }, no_anim = true })
hl.layer_rule({ name = "layerrule-10", match = { namespace = [[gtk-layer-shell]] }, blur = true, ignore_alpha = 0 })
hl.layer_rule({ name = "layerrule-11", match = { namespace = [[launcher]] }, blur = true, ignore_alpha = 0.5 })
hl.layer_rule({ name = "layerrule-12", match = { namespace = [[notifications]] }, blur = true, ignore_alpha = 0.69 })
hl.layer_rule({ name = "layerrule-13", match = { namespace = [[logout_dialog]] }, blur = true }) -- wlogout
