-- --------------------------------------------------------
-- MAPPINGS   ~/.config/nvim/lua/morty/mappings.lua
-- --------------------------------------------------------
--print("Start: ~/.config/nvim/lua/morty/mappings.lua")

-- Reload init.lua without restarting nvim
-- Useful during config editing sessions
vim.keymap.set("n", "<leader>ri", '<Cmd>source $MYVIMRC<CR><Cmd>echo "Reloaded nvim"<CR>')
 
-- Ctrl-s save all files from all modes
vim.keymap.set({ 'n', 'i', 'v', 'c' }, '<C-s>', '<esc>:wall<cr>', { desc = 'Save all files' })
     
-- Make Y behave as D, Yank to end of line
vim.keymap.set('n', 'Y', 'y$')

-- Run Python prog
vim.keymap.set("n", "<leader>rp", ":w<CR>:!python %<CR>", { noremap = true, silent = true } )

vim.keymap.set("n", ",z", ":wqa ", { noremap = true, silent = true } )
-- Updated AsusArchReal 2026-05-29 21:28
