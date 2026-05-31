-- Input method
-- See https://fcitx-im.org/wiki/Using_Fcitx_5_on_Wayland

-- hl.env("QT_IM_MODULE", "fcitx")
-- hl.env("XMODIFIERS", "@im=fcitx")
-- hl.env("SDL_IM_MODULE", "fcitx")
-- hl.env("GLFW_IM_MODULE", "ibus")
-- hl.env("INPUT_METHOD", "fcitx")

-- Wayland
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")

-- Tearing
-- hl.env("WLR_DRM_NO_ATOMIC", "1")
-- ?
-- hl.env("WLR_NO_HARDWARE_CURSORS", "1")

-- Themes
hl.env("QT_QPA_PLATFORM", "wayland")
hl.env("QT_QPA_PLATFORMTHEME", "qt5ct") -- kde / gtk2
hl.env("XDG_MENU_PREFIX", "plasma-")

-- Terminal application
hl.env("TERMINAL", "alacritty")

-- Applications
local vars = {
    WKEY = "SUPER",
    COMMAND = "ALT",
    explorer = "nemo",
    terminal = "alacritty",
    browser = "firefox",
}

-- Custom
-- VR
hl.env("XRT_COMPOSITOR_COMPUTE", "1")

-- Cursed cursor that I need to fix
hl.env("HYPRCURSOR_THEME", "rio-cursor")
hl.env("HYPRCURSOR_SIZE", "32")

return vars
