-- ===================================================
--
--            [ Input/Device Configuration ]
--
-- ===================================================

hl.config({
    input = {
        kb_layout = "us",
        kb_variant = "",
        kb_model = "",
        kb_options = "",
        kb_rules = "",

        follow_mouse = 1,

        touchpad = {
            natural_scroll = false,
        },

        -- -1.0 to 1.0, 0 means no modification
        sensitivity = 0,
    },
})

-- ===================================================
--                    Gestures
-- ===================================================

-- No custom gestures configured yet.


-- ===================================================
--                Per-device Configuration
-- ===================================================

-- Example per-device configuration
hl.device({
    name = "epic-mouse-v1",
    sensitivity = -0.5,
})
