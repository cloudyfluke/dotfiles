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

-- Finally, return the configuration to wezterm:
return config
