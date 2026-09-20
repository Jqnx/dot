-- Laptop layout: monitors, input, layout options and gestures.
-- See https://wiki.hypr.land/Configuring/Basics/Monitors/

-- Monitors
hl.monitor({
	output = "eDP-1",
	mode = "preferred",
	position = "auto",
	scale = 2,
})

-- External display mirrors the laptop panel
hl.monitor({
	output = "HDMI-A-2",
	mode = "preferred",
	position = "auto",
	scale = "auto",
	mirror = "eDP-1",
})

-- Input
-- See https://wiki.hypr.land/Configuring/Basics/Variables/#input
hl.config({
	input = {
		kb_layout = "us",
		kb_variant = "",
		kb_model = "",
		kb_options = "",
		kb_rules = "",

		follow_mouse = 1,

		sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.

		touchpad = {
			natural_scroll = true,
			middle_button_emulation = true,
			clickfinger_behavior = false,
			scroll_factor = 1.0,
		},
	},
})

-- Layouts
-- See https://wiki.hypr.land/Configuring/Layouts/Dwindle-Layout/ for more
hl.config({
	dwindle = {
		-- `dwindle:pseudotile` was removed upstream; pseudotiling is per-window
		-- now: hl.dsp.window.pseudo()
		preserve_split = true, -- You probably want this
	},
})

-- Gestures
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Gestures/
-- Replaces the old `gestures:workspace_swipe` / `workspace_swipe_fingers` options
hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })

hl.config({
	gestures = {
		workspace_swipe_invert = true,
		workspace_swipe_distance = 1000,
		workspace_swipe_min_speed_to_force = 20,
	},
})
