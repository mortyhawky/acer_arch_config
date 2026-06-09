-- =====================================
-- KEYMAPS
-- =====================================

vim.g.mapleader = " "

vim.keymap.set( {"n","i"}, "<C-s>", "<Esc><Cmd>:write<Cr><Cmd>:nohls<Cr>" )
vim.keymap.set( {"n","i"}, "<Esc>", "<Esc><Cmd>:nohls<Cr>")
vim.keymap.set(  "n",      "Y",     "y$")

-- Replaces selected text WITHOUT
-- losing what you yanked
vim.keymap.set( "x", "p", [["_dP]] )

-- Delete text WITHOUT saving it to any register
vim.keymap.set( {"n","v"}, "<leader>d", [["_d]] )

-- Moves line(s) up or down in visual selection mode
vim.keymap.set( "v", "J", ":m '>+1<CR>gv=gv" )
vim.keymap.set( "v", "K", ":m '<-2<CR>gv=gv" )

-- Indent and keep selection
vim.keymap.set( "v", "<", ">gv" )
-- Unindent and keep selection
vim.keymap.set( "v", ">", "<gv" )

-- Join lines without moving cursor
vim.keymap.set( "n", "J", "mzJ`z" )

-- Move down in buffer with cursor centered
vim.keymap.set( "n", "<C-d>", "<C-d>zz" )
-- Move up   in buffer with cursor centered
vim.keymap.set( "n", "<C-u>", "<C-u>zz" )

-- Next search result cursor centered
vim.keymap.set( "n", "n", "nzzzv" )
-- Prev search result cursor centered
vim.keymap.set( "n", "N", "Nzzzv" )


