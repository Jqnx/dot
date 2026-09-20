-------------------------------
--- WINDOWS AND WORKSPACES ---
-------------------------------

-- Noctalia
hl.window_rule({
	match = { class = "dev.noctalia.Noctalia" },
	float = true,
	size = { 1080, 920 },
})

hl.layer_rule({
	name = "noctalia",
	match = {
		namespace = "^noctalia-(bar-.+|notification|dock|panel|attached-panel|osd|window-switcher)$",
	},
	no_anim = true,
	ignore_alpha = 0.5,
	blur = true,
	blur_popups = true,
})

-- Common
hl.window_rule({ match = { title = ".*(wants to save)" }, float = true, size = "monitor_w*0.5 monitor_h*0.5" })
hl.window_rule({ match = { title = "^(Open File)$" }, float = true, size = "monitor_w*0.5 monitor_h*0.5" })
hl.window_rule({ match = { title = "^(Open a file)$" }, float = true, size = "monitor_w*0.5 monitor_h*0.5" })
hl.window_rule({ match = { title = "^(Open Folder)$" }, float = true, size = "monitor_w*0.5 monitor_h*0.5" })
hl.window_rule({ match = { title = "^(Save As)$" }, float = true, size = "monitor_w*0.5 monitor_h*0.5" })
hl.window_rule({ match = { title = "^(Choose Files)$" }, float = true, size = "monitor_w*0.5 monitor_h*0.5" })
hl.window_rule({ match = { title = "^(Add Files)$" }, float = true, size = "monitor_w*0.5 monitor_h*0.5" })
hl.window_rule({ match = { title = "^(Open folder .*)$" }, float = true, size = "monitor_w*0.5 monitor_h*0.5" })

-- btop
hl.window_rule({ match = { title = "^(btop)$" }, float = true, center = true })

-- Brave
hl.window_rule({ match = { class = "^(brave-browser)$" }, tile = true, opacity = "0.90 0.90" })
hl.window_rule({
	match = { title = "^(Picture in picture)$" },
	float = true,
	center = true,
	size = "monitor_w*0.5 monitor_h*0.5",
})

-- Helium
hl.window_rule({ match = { class = "^(helium)$" }, tile = true, opacity = "0.90 0.90" })
hl.window_rule({
	match = { title = "^(Picture in picture)$" },
	float = true,
	center = true,
	size = "monitor_w*0.5 monitor_h*0.5",
})

-- Firefox
hl.window_rule({ match = { class = "^(firefox)$" }, opacity = "0.90 0.90" })
hl.window_rule({ match = { title = "^(About Mozilla Firefox)$" }, float = true, center = true })
hl.window_rule({
	match = { class = "^(firefox)$", title = "^(Picture-in-Picture)$" },
	float = true,
	center = true,
	size = "monitor_w*0.5 monitor_h*0.5",
})
hl.window_rule({ match = { class = "^(firefox)$", title = "^(Library)$" }, float = true, center = true })

-- Zen Browser
hl.window_rule({ match = { class = "^(zen)$" }, opacity = "0.90 0.90" })
hl.window_rule({ match = { title = "^(About Zen Browser)$" }, float = true, center = true })
hl.window_rule({
	match = { class = "^(zen)$", title = "^(Picture-in-Picture)$" },
	float = true,
	center = true,
	size = "monitor_w*0.5 monitor_h*0.5",
})
hl.window_rule({ match = { class = "^(zen)$", title = "^(Library)$" }, float = true, center = true })

-- VSCode
hl.window_rule({ match = { class = "^(code)$" }, opacity = "1 1" })

-- Terminals
hl.window_rule({ match = { class = "^(kitty)$" }, opacity = "1 1" })
hl.window_rule({ match = { class = "^(foot)$" }, opacity = "1 1" })

-- Resources
hl.window_rule({
	match = { class = "^(net.nokyan.Resources)$" },
	float = true,
	center = true,
	size = "monitor_w*0.69 monitor_h*0.69",
	opacity = "0.80 0.70",
})

-- Nautilus Previewer
hl.window_rule({
	match = { class = "^(org.gnome.NautilusPreviewer)$" },
	float = true,
	center = true,
	size = "monitor_w*0.69 monitor_h*0.69",
	opacity = "0.90 0.80",
})

-- Nautilus
hl.window_rule({
	match = { class = "^(org.gnome.Nautilus)$", title = "^(Properties)$" },
	size = "monitor_w*0.25 monitor_h*0.6",
})
hl.window_rule({
	match = { class = "^(org.gnome.Nautilus)$" },
	float = true,
	center = true,
	size = "monitor_w*0.69 monitor_h*0.69",
	opacity = "0.80 0.80",
})

-- Loupe (ImageViewer)
hl.window_rule({
	match = { class = "^(org.gnome.Loupe)$" },
	float = true,
	center = true,
	size = "monitor_w*0.69 monitor_h*0.69",
	opacity = "0.90 0.90",
})

-- Audio Control
hl.window_rule({ match = { class = "^(com.saivert.pwvucontrol)$" }, float = true, center = true, opacity = "0.90 0.80" })
hl.window_rule({
	match = { class = "^(org.pulseaudio.pavucontrol)$" },
	float = true,
	center = true,
	opacity = "0.90 0.80",
})

-- Overskride
hl.window_rule({
	match = { class = "^(io.github.kaii_lb.Overskride)$" },
	float = true,
	center = true,
	opacity = "0.90 0.80",
})

-- NetworkManager
hl.window_rule({ match = { class = "^(nm-connection-editor)$" }, float = true, center = true, opacity = "0.90 0.80" })
hl.window_rule({ match = { class = "^(nm-applet)$" }, float = true, center = true, opacity = "0.90 0.80" })

-- Bitwarden
hl.window_rule({
	match = { title = "(Bitwarden)" },
	float = true,
	center = true,
	size = "monitor_w*0.69 monitor_h*0.69",
})

-- Steam
hl.window_rule({ match = { class = "^(steam)$" }, float = true })
hl.window_rule({ match = { class = "^(steam)$", title = "^(Steam)$" }, tile = true })
hl.window_rule({ match = { class = "^([Ss]team)$" }, opacity = "0.90 0.90" })
hl.window_rule({ match = { class = "^(steamwebhelper)$" }, opacity = "0.90 0.90" })

-- Spotify
hl.window_rule({ match = { class = "^([Ss]potify)$" }, opacity = "0.90 0.90" })

-- Archive Management
hl.window_rule({
	match = { class = "^(org.kde.ark)$" },
	float = true,
	center = true,
	opacity = "0.90 0.90",
	size = "monitor_w*0.69 monitor_h*0.69",
})
hl.window_rule({
	match = { class = "^(org.gnome.FileRoller)$" },
	float = true,
	center = true,
	opacity = "0.90 0.90",
	size = "monitor_w*0.69 monitor_h*0.69",
})

-- Polkit
hl.window_rule({
	match = { class = "^(org.kde.polkit-kde-authentication-agent-1)$" },
	float = true,
	center = true,
	opacity = "0.90 0.80",
})
hl.window_rule({
	match = { class = "^(polkit-gnome-authentication-agent-1)$" },
	float = true,
	center = true,
	opacity = "0.90 0.80",
})

-- XDG Portal
hl.window_rule({ match = { class = "^(Xdg-desktop-portal-gtk)$" }, float = true, center = true })
hl.window_rule({ match = { class = "^(org.freedesktop.impl.portal.desktop.gtk)$" }, opacity = "0.90 0.80" })
hl.window_rule({ match = { class = "^(org.freedesktop.impl.portal.desktop.hyprland)$" }, opacity = "0.90 0.80" })

-- PrismLauncher
hl.window_rule({
	match = { class = "^(org.prismlauncher.PrismLauncher)$" },
	float = true,
	center = true,
	size = "window_w*0.69 monitor_h*0.69",
	opacity = "0.90 0.90",
})

-- KvantumManager
hl.window_rule({ match = { class = "^(kvantummanager)$" }, float = true, center = true, opacity = "0.80 0.80" })

-- Discord
hl.window_rule({ match = { class = "^(discord)$" }, opacity = "0.90 0.90" })

-- qBittorrent
hl.window_rule({ match = { class = "^(org.qbittorrent.qBittorrent)$" }, opacity = "0.90 0.90" })

-- Warp
hl.window_rule({ match = { class = "^(app.drey.Warp)$" }, float = true, center = true, opacity = "0.90 0.90" })

-- Video Downloader
hl.window_rule({
	match = { class = "^(com.github.unrud.VideoDownloader)$" },
	float = true,
	center = true,
	opacity = "0.90 0.90",
})

-- Impression
hl.window_rule({
	match = { class = "^(io.gitlab.adhami3310.Impression)$" },
	float = true,
	center = true,
	opacity = "0.90 0.90",
})

-- Clapper
hl.window_rule({
	match = { class = "^(com.github.rafostar.Clapper)$" },
	float = true,
	center = true,
	opacity = "0.90 0.90",
})

-- Iotas
hl.window_rule({ match = { class = "^(org.gnome.World.Iotas)$" }, opacity = "0.90 0.90" })

-- Calculator
hl.window_rule({
	match = { class = "^(org.gnome.Calculator)$" },
	float = true,
	center = true,
	opacity = "0.90 0.90",
	size = "monitor_w*0.2 monitor_h*0.5",
})

-- Document Viewer
hl.window_rule({
	match = { class = "^(org.gnome.Papers)$" },
	float = true,
	center = true,
	opacity = "0.90 0.90",
	size = "monitor_w*0.69 monitor_h*0.69",
})

-- Zed
hl.window_rule({
	match = { title = "^(Zed — Settings)$" },
	float = true,
	center = true,
})

-- Waypaper
hl.window_rule({ match = { class = "^(waypaper)$" }, float = true, center = true, opacity = "0.90 0.90" })

-- Windscribe
hl.window_rule({ match = { class = "^(Windscribe)$" }, float = true, center = true, opacity = "0.90 0.90" })

-- Waifu Downloader
hl.window_rule({ match = { class = "^(moe.nyarchlinux.waifudownloader)$" }, float = true, center = true })

-- VirtualBox
hl.window_rule({ match = { class = "^(VirtualBox)$" }, float = true })
hl.window_rule({
	match = { class = "^(VirtualBox Manager)$" },
	float = true,
	center = true,
	size = "monitor_w*0.69 monitor_h*0.69",
})
hl.window_rule({ match = { class = "^(VirtualBox Machine)$" }, float = true, center = true })

-- Path Of Building
hl.window_rule({ match = { class = "^(pobfrontend)$" }, tile = true })

-- PoE
-- (old tag-based commented-out rules dropped; the block rule below is the real one)
hl.window_rule({
	name = "poe-rule",
	match = { class = "^(pathofexilesteam.exe|steam_app_238960)$" },
	--tile = true,
	fullscreen = true,
	content = "game",
})

-- Awakened PoE Trade
-- (old tag-based commented-out rules dropped; the block rule below is the real one)
-- NOTE: no_follow_mouse is not a documented hl.window_rule() effect as of this writing.
-- It's carried over as-is from your original block; verify it against `hyprctl` / the
-- wiki before relying on it, or drop it if Hyprland rejects the key.
hl.window_rule({
	name = "apt-rule",
	match = { class = "^(awakened-poe-trade|Awakened-poe-trade)$" },
	float = true,
	border_size = 0,
	no_blur = true,
	no_shadow = true,
	no_anim = true,
	--no_follow_mouse = true,
})

-- CS2
hl.window_rule({ match = { class = "^(cs2)$" }, immediate = true, content = "game" })

-- Genshin Impact
hl.window_rule({ match = { class = "(genshinimpact.exe)" }, fullscreen = true, content = "game" })

-- bind = SHIFT,Space,pass,^(awakened-poe-trade)$
-- bind = CTRL,D,pass,^(awakened-poe-trade)$
-- bind = CTRL ALT,D,pass,^(awakened-poe-trade)$
-- NOTE: these were commented out in the source and are keybinds (hl.bind), not window
-- rules -- left here only as a reminder, not converted.

-- █░░ ▄▀█ █▄█ █▀▀ █▀█   █▀█ █░█ █░░ █▀▀ █▀
-- █▄▄ █▀█ ░█░ ██▄ █▀▄   █▀▄ █▄█ █▄▄ ██▄ ▄█

-- blur
hl.layer_rule({
	name = "vicinae-blur",
	match = { namespace = "vicinae" },
	blur = true,
	ignore_alpha = 0,
})

-- disable animation for vicinae only
hl.layer_rule({
	name = "vicinae-no-animation",
	match = { namespace = "vicinae" },
	no_anim = true,
})
