-- ==================================================================
-- ~/.config/nvim/lua/morty/init.lua
-- ==================================================================

-- GLOBALS
--vim.opt.termguicolors   = true
--vim.cmd.colorscheme     "default"
vim.g.mapleader         = " "
vim.g.netrw_banner      = 0

-- require("vim._core.ui2").enable({})
require("morty.autocmds")
require("morty.keymaps")
require("morty.navigations")
require("morty.options")

-- Use ZR to :restart
