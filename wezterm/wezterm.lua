-- Pull in the wezterm API
local wezterm = require "wezterm"

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choises.

config.font_size = 11
config.color_scheme = "AdventureTime"

-- Finally, return the configuration to wezterm
return config
