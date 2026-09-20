-- Monitors
hl.monitor({
	output = "DP-1",
	mode = "1920x1080@74.92",
	position = "0x0",
	scale = "1",
})

hl.monitor({
	output = "HDMI-A-1",
	mode = "1920x1080@144",
	position = "1920x0",
	scale = "1",
})

hl.monitor({
	output = "HDMI-A-2",
	mode = "1920x1080@60",
	position = "3840x0",
	scale = "1",
})

-- Workspaces
hl.workspace_rule({ workspace = "1", monitor = "HDMI-A-1", persistent = true, default = true })
hl.workspace_rule({ workspace = "2", monitor = "DP-1", persistent = true, default = true })
hl.workspace_rule({ workspace = "3", monitor = "HDMI-A-2", persistent = true, default = true })
hl.workspace_rule({ workspace = "4", monitor = "HDMI-A-1", persistent = true })
hl.workspace_rule({ workspace = "5", monitor = "DP-1", persistent = true })
hl.workspace_rule({ workspace = "6", monitor = "HDMI-A-2", persistent = true })

-- Env
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
hl.env("GBM_BACKEND", "nvidia-drm")

-- Input
hl.config({
	input = {
		kb_layout = "us",
		kb_variant = "",
		kb_model = "",
		kb_options = "",
		kb_rules = "",

		follow_mouse = 1,

		sensitivity = -0.8, -- -1.0 - 1.0, 0 means no modification.

		-- touchpad = {
		-- 	natural_scroll = false,
		-- },
	},
})

-- hl.gesture({
-- 	fingers = 3,
-- 	direction = "horizontal",
-- 	action = "workspace",
-- })

-- Layouts
-- See https://wiki.hypr.land/Configuring/Layouts/Dwindle-Layout/ for more
hl.config({
	dwindle = {
		preserve_split = true, -- You probably want this
	},
})

-- See https://wiki.hypr.land/Configuring/Layouts/Master-Layout/ for more
hl.config({
	master = {
		new_status = "master",
	},
})

-- See https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/ for more
hl.config({
	scrolling = {
		fullscreen_on_one_column = true,
	},
})
