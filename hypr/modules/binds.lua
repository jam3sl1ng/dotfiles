-- ===================================================
--
--             [ Key Binding Configuration ]
--
-- ===================================================

-- See https://wiki.hypr.land/configuring/core/binds/

local mainMod = "SUPER"

-- ===================================================
--                    Applications
-- ===================================================

-- Exit Hyprland
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("wlogout"), { description = "Exit Hyprland" })

-- Open terminal
hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd("kitty"), { description = "Open terminal" })

-- Close active window
hl.bind(mainMod .. " + Q", hl.dsp.window.kill(), { description = "Close active window" })

-- Open file manager
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd("kitty -- ranger"), { description = "Open file manager" })

-- Toggle floating
hl.bind(mainMod .. " + V", hl.dsp.window.float(), { description = "Toggle floating" })

-- Open application launcher
hl.bind(
	mainMod .. " + Space",
	hl.dsp.exec_cmd("~/.config/rofi/launchers/type-2/launcher.sh"),
	{ description = "Open application launcher" }
)

-- Toggle pseudotiling (dwindle)
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo(), { description = "Toggle pseudotiling" })

-- Open browser
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("firefox"), { description = "Open browser" })

-- ===================================================
--                     System
-- ===================================================

-- Lock the screen (runs hypridle's lock_cmd -> hyprlock)
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("loginctl lock-session"), { description = "Lock screen" })

-- ===================================================
--                  Special Workspace
-- ===================================================

-- Example special workspace (scratchpad)
-- hl.bind(mainMod .. " + S",
--     hl.dsp.workspace.special("magic")
-- )

-- hl.bind(mainMod .. " + SHIFT + S",
--     hl.dsp.window.move_to_workspace("special:magic")
-- )

-- ===================================================
--                Workspace Scrolling
-- ===================================================

-- Switch workspaces with mainMod + [0-9]

for i = 1, 9 do
	hl.bind(mainMod .. " + " .. i, hl.dsp.focus({ workspace = i }), { description = "Switch to workspace " .. i })
end

hl.bind(mainMod .. " + 0", hl.dsp.focus({ workspace = 10 }), { description = "Switch to workspace 10" })

-- Scroll through existing workspaces

hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))

hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- ===================================================
--                  Window Movement
-- ===================================================

-- Move/resize windows with mainMod + LMB/RMB

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })

hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Fullscreen
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen(), { description = "Toggle fullscreen" })

-- ===================================================
--                  Screen Snipping
-- ===================================================

-- Save screenshot to file
-- hl.bind(mainMod .. " + SHIFT + S",
--     hl.dsp.exec_cmd(
--         [[grim -g "$(slurp)" ~/Pictures/Screenshots/$(date +'screenshot_%Y-%m-%d-%H%M%S.png')]]
--     )
-- )

-- Save screenshot to clipboard
hl.bind(
	mainMod .. " + SHIFT + S",
	hl.dsp.exec_cmd('grim -g "$(slurp)" - | wl-copy'),
	{ description = "Screenshot to clipboard" }
)

-- ===================================================
--                   Volume Control
-- ===================================================

-- Volume up
hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd(
		"wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+ && dunstify -a volume -h string:x-dunst-stack-tag:volume -h int:value:$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{printf \"%d\", $2 * 100}') 'Volume'"
	),
	{ repeating = true }
)

-- Volume down
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd(
		"wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%- && dunstify -a volume -h string:x-dunst-stack-tag:volume -h int:value:$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{printf \"%d\", $2 * 100}') 'Volume'"
	),
	{ repeating = true }
)

-- Mute
hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd(
		"wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle && dunstify -a volume -h string:x-dunst-stack-tag:volume 'Mute toggled'"
	),
	{ locked = true }
)

-- ===================================================
--                Brightness Control
-- ===================================================

-- Brightness up
hl.bind("XF86MonBrightnessUp",
		hl.dsp.exec_cmd(
			"brightnessctl set 5%+ && dunstify -a brightness -h string:x-dunst-stack-tag:brightness -h int:value:$(brightnessctl -m | awk -F, '{gsub(/%/, \"\", $4); print $4}') 'Brightness'"
		),
		{ repeating = true }
)

-- Brightness down
hl.bind("XF86MonBrightnessDown",
		hl.dsp.exec_cmd(
			"brightnessctl set 5%- && dunstify -a brightness -h string:x-dunst-stack-tag:brightness -h int:value:$(brightnessctl -m | awk -F, '{gsub(/%/, \"\", $4); print $4}') 'Brightness'"
		),
		{ repeating = true }
)
