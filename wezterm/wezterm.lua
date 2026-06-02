local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- Use config_builder if available (newer wezterm versions)
--if wezterm.config_builder then
--  config = wezterm.config_builder()
--end

-- === Core ===
config.default_prog = { "bash", "--login" }   -- or zsh, fish, etc.
config.enable_tab_bar = false                 -- minimal UI
config.window_decorations = "NONE"            -- no titlebar (WM handles it)

-- === Font ===
config.font = wezterm.font("AdwaitaMono Nerd Font Mono")
--config.font = wezterm.font("JetBrainsMono Nerd Font Mono")
--config.font = wezterm.font("DejaVuSansM Nerd Font Mono")
config.font_size = 11.0

-- === Appearance ===
config.color_scheme = "Builtin Solarized Dark"
config.window_background_opacity = 1.0

-- === Behavior ===
config.scrollback_lines = 5000
config.adjust_window_size_when_changing_font_size = false

-- === Keymaps (optional minimal example) ===
config.keys = {
  { key = "Enter", mods = "ALT", action = wezterm.action.ToggleFullScreen },
}

return config
--""-- -- Pull in the wezterm API
--""-- local wezterm = require "wezterm"
--""-- 
--""-- -- This will hold the configuration.
--""-- local config = wezterm.config_builder()
--""-- 
--""-- -- This is where you actually apply your config choises.
--""-- 
--""-- config.font_size = 11
--""-- 
--""-- --config.font = wezterm.font "AdwaitaMono Nerd Font Mono"
--""-- config.font = wezterm.font "JetBrainsMono Nerd Font"
--""-- --font_family = wezterm.font "DejaVuSansM Nerd Font Mono"
--""-- 
--""-- --config.color_scheme = "AdventureTime"
--""-- --config.color_scheme = "Batman"
--""-- config.color_scheme = "GruvboxDark"
--""-- 
--""-- -- Finally, return the configuration to wezterm
--""-- return config
