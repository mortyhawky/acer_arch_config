-- =====================================
-- ~/.config/nvim/lua/phaeno/init.lua
-- =====================================

-- GLOBALS
vim.opt.termguicolors   = true
vim.cmd.colorscheme     "murphy"
vim.g.mapleader         = " "
vim.g.netrw_banner      = 0

require("vim._core.ui2").enable({})
require("phaeno.autocmds")
require("phaeno.keymaps")
require("phaeno.navigations")
require("phaeno.options")


-- Use ZR to :restart
