-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()
config.color_scheme = "Tokyo Night"

config.font = wezterm.font_with_fallback({
	"JetBrains Mono",
	"Fira Code",
	"DengXian",
})

config.warn_about_missing_glyphs = false

config.background = {
	{
		source = {
			File = wezterm.home_dir .. "/Pictures/wallpaper/frieren.png",
		},
		-- opacity = 0.75,
		hsb = { brightness = 0.1 },
	},
}

-- NOTE: Disable because it conflicts with Hyprland binding for fullscreen
config.keys = {
	{
		key = "f",
		mods = "CMD",
		action = wezterm.action.DisableDefaultAssignment,
	},
	{
		key = "f",
		mods = "SUPER",
		action = wezterm.action.DisableDefaultAssignment,
	},
}

config.ssh_domains = {
	{
		-- This name identifies the domain
		name = "home-server",
		-- The hostname or address to connect to. Will be used to match settings
		-- from your ssh config file
		remote_address = "home-server",
		-- The username to use on the remote host
	},
}

-- Finally, return the configuration to wezterm:
return config
