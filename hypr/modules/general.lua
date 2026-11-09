-- ===================================================
--
--         [ General/Appearance Configuration ]
--
-- ===================================================

hl.config({
    general = {
        gaps_in = 4,
        gaps_out = 8,
        border_size = 1,

        col = {
            active_border = {
                colors = {
                    "rgb(ebdbb2)",
                    "rgb(d65d0e)",                
                },
                angle = 60,
            },
            inactive_border = "rgb(272727)",
        },

        layout = "dwindle",
        allow_tearing = false,
    },

    decoration = {
        rounding = 8,

        blur = {
            enabled = false,
            size = 3,
            passes = 1,
        },
    },

    dwindle = {
        preserve_split = true,
    },

    misc = {
        disable_hyprland_logo = true,
        ["col.splash"] = "0x665c54",
        splash_font_family = "JetBrains Mono",
        force_default_wallpaper = 0,
    },
    
    debug = {
        vfr = true
    },
})

-- ===================================================
--                    Animations
-- ===================================================

hl.config({
    animations = {
        enabled = true,
    },
})

