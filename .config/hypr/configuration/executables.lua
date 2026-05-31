-- Core components (authentication, lock screen, notification daemon)

hl.on("hyprland.start", function()
    -- Auth
    hl.exec_cmd("gnome-keyring-daemon --start --components=secrets")
    hl.exec_cmd("/usr/lib/polkit-kde-authentication-agent-1 || /usr/libexec/polkit-kde-authentication-agent-1 || /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 || /usr/libexec/polkit-gnome-authentication-agent-1")

    -- Lock (I need to finish this ._.)
    -- hl.exec_cmd("hypridle")
    -- hl.exec_cmd("dbus-update-activation-environment --all")
    -- hl.exec_cmd("sleep 1 && dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP") -- Some fix idk
    --
    -- hl.exec_cmd("hyprpm reload")

    -- Bar
    hl.exec_cmd("qs -c caelestia") -- caelestia shell -d

    -- Search
    hl.exec_cmd("vicinae server")
    -- hl.exec_cmd("hyprshell run &")

    -- Audio
    -- Can cause issues with wine, if you hear popping or crackly sound, you can disable this
    hl.exec_cmd("easyeffects --gapplication-service")

    hl.exec_cmd("spotify_player -d") -- Run daemon

    -- Clipboard: history
    -- Don't use this for a while, see: https://github.com/hyprwm/Hyprland/discussions/11411
    -- hl.exec_cmd("wl-paste --watch cliphist store &")
    -- hl.exec_cmd("wl-paste --type text --watch cliphist store")
    -- hl.exec_cmd("wl-paste --type image --watch cliphist store")
    -- hl.exec_cmd("wl-clip-persist --clipboard regular")

    -- Background
    hl.exec_cmd("$HOME/.config/hypr/scripts/reset-background.sh")

    -- Cursor
    hl.exec_cmd("hyprctl setcursor rio-cursor 32")

    -- SSH (Fish shell)
    hl.exec_cmd("fish -lc 'eval (ssh-agent -c)'")
end)
