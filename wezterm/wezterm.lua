local wezterm = require("wezterm")

return {
  font = wezterm.font("JetBrainsMono Nerd Font Mono"),
  font_size = 11.0,
  line_height = 1.0
}

--########1234abcd
--local wezterm = require("wezterm")
--local config = wezterm.config_builder()

---- === Core ===
----config.default_prog = { "bash", "--login" }
--config.enable_tab_bar = true
----config.window_decorations = "NONE"            -- no titlebar (WM handles it)
--
---- === Font ===
----config.font = wezterm.font("AdwaitaMono Nerd Font Mono")
----config.font = wezterm.font("DejaVuSansM Nerd Font Mono")
--config.font = wezterm.font("JetBrainsMono Nerd Font Mono")
--config.font_size = 11.0
--
--
---- === Appearance ===
--config.color_scheme = "3024 (base16)"
----config.color_scheme = "Builtin Solarized Dark"
----config.color_scheme = "Builtin Batman"
--config.window_background_opacity = 0.8
--
---- === Colors ===
--config.colors = {
--  cursor_bg      = "#01a252",   -- base0B: "01a252" #	green
--  cursor_fg      = "#db2d20",   -- base08: "db2d20" #	red
--  cursor_border  = "#db2d20",   -- base08: "db2d20" # red
--  compose_cursor = "#e8bbd0"    -- base09
--  
--}
--
--
---- === Behavior ===
--config.scrollback_lines = 1000
--config.adjust_window_size_when_changing_font_size = false
--
--
---- === Keymaps (optional minimal example) ===
--config.disable_default_key_bindings = true
--config.keys = {
----  { key = "Enter", mods = "ALT", action = wezterm.action.ToggleFullScreen },
----  { key = "t", mods = "ALT", action = wezterm.action.ToggleFullScreen },
--}
--
--return config
