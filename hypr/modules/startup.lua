-- ===================================================
--
--                [ Configuration Menu ]
--
-- ===================================================

-- See https://wiki.hypr.land/configuring/core/autostart/

-- ===================================================
--              Execute apps at launch
-- ===================================================

hl.on("hyprland.start", function()
    
    -- Monitor setup
    -- hl.exec_cmd("kanshi")

    -- Notification daemon
    hl.exec_cmd("dunst")

    -- Authentication agent
    hl.exec_cmd("/usr/lib/polkit-kde-authentication-agent-1")

    -- Status bar
    hl.exec_cmd("waybar")

    -- Wallpaper manager
    hl.exec_cmd("hyprpaper")

    -- Idle daemon (locks the screen after a timeout)
    hl.exec_cmd("hypridle")

    -- Fix for Screen Sharing
    hl.exec_cmd(
        "dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
    )

end)
