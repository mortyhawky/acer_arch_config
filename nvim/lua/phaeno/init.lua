-- =====================================
-- ~/.config/nvim/lua/phaeno/init.lua
-- =====================================
require("vim._core.ui2").enable({})

require("phaeno.options")
require("phaeno.autocmds")
require("phaeno.keymaps")
require("phaeno.navigations")

vim.opt.termguicolors   = true

-- Use ZR to :restart
