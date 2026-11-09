-- ===================================================
--
--         [ Environment/Alias Configuration ]
--
-- ===================================================

-- Environment variables
hl.env("XCURSOR_SIZE", "24")

-- Change to qt6ct if you have that
hl.env("QT_QPA_PLATFORMTHEME", "qt5ct")


-- ===================================================
--                       Aliases
-- ===================================================

return {
    terminal = "kitty",
    fileManager = "kitty -- ranger",
    menu = "rofi -show drun",
    browser = "firefox",
}
