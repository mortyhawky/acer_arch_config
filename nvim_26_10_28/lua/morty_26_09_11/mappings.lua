-- --------------------------------------------------------
-- MAPPINGS   ~/.config/nvim/lua/morty/mappings.lua
-- --------------------------------------------------------
--print("Start: ~/.config/nvim/lua/morty/mappings.lua")

-- Reload init.lua without restarting nvim
-- Useful during config editing sessions
vim.keymap.set("n", "<leader>sr", '<Cmd>source $MYVIMRC<CR><Cmd>echo "Reloaded nvim"<CR>')
 
-- Ctrl-s in normal mode, save current buffer
vim.keymap.set( {"n"}, "<C-s>",      "<Cmd>:write<cr>" )
-- Ctrl-s in insert mode, escape to normal mode, then save current buffer
vim.keymap.set( {"i"}, "<C-s>", "<Esc><Cmd>:write<cr>" )

-- Make Y behave as D, Yank to end of line
vim.keymap.set('n', 'Y', 'y$')

-- Run Python prog
vim.keymap.set("n", "<leader>rp", ":w<CR>:!python %<CR>", { noremap = true, silent = true } )

vim.keymap.set("n", ",z", ":wqa ", { noremap = true, silent = true } )
-- Updated AsusArchReal 2026-05-29 21:28
-- Updated AsusArch 2026-05-31 07:59 Sun
