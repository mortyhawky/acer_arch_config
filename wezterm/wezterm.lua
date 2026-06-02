local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- === Core ===
config.default_prog = { "bash", "--login" }   -- or zsh, fish, etc.
config.enable_tab_bar = false                 -- minimal UI
config.window_decorations = "NONE"            -- no titlebar (WM handles it)

-- === Font ===
--config.font = wezterm.font("AdwaitaMono Nerd Font Mono")
--config.font = wezterm.font("DejaVuSansM Nerd Font Mono")
config.font = wezterm.font("JetBrainsMono Nerd Font Mono")
config.font_size = 11.0

-- === Appearance ===
config.color_scheme = "3024 (base16)"
--config.color_scheme = "Builtin Solarized Dark"
--config.color_scheme = "Builtin Batman"
config.window_background_opacity = 0.8

-- === Behavior ===
config.scrollback_lines = 5000
config.adjust_window_size_when_changing_font_size = false

-- === Keymaps (optional minimal example) ===
config.keys = {
  { key = "Enter", mods = "ALT", action = wezterm.action.ToggleFullScreen },
}

return config
