-- ===================================================
--
--              [ Monitors Configuration ]
--
-- ===================================================

-- See https://wiki.hypr.land/configuring/core/monitors/

-- Default
-- hl.monitor({
--     output = "",
--     mode = "preferred",
--     position = "auto",
--     scale = "auto",
-- })

-- ===================================================
--                Customized Rules
-- ===================================================

-- Laptop screen
hl.monitor({
  output = "eDP-1",
  mode = "3840x2160@60",
  position = "auto",
  scale = 1.67,
})


-- ===================================================
--                    XWayland
-- ===================================================

-- 06-10-2024: Fix XWayland Scaling for JetBrains IDE

hl.config({
  xwayland = {
    force_zero_scaling = true,
  },
})
