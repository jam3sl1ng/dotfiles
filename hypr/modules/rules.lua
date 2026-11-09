-- ===================================================
--
--              [ Rules Configuration ]
--
-- ===================================================

-- Example window rule
-- hl.window_rule({
--     match = {
--         class = "kitty",
--     },
--     float = true,
-- })

-- Example window rule with class and title
-- hl.window_rule({
--     match = {
--         class = "kitty",
--         title = "kitty",
--     },
--     float = true,
-- })

-- See https://wiki.hypr.land/configuring/core/rules/window-rules/

-- ===================================================
--                   Window Rules
-- ===================================================

hl.window_rule({
    name = "windowrule-1",

    match = {
        class = ".*", -- You'll probably like this.
    },

    suppress_event = "maximize",
})
