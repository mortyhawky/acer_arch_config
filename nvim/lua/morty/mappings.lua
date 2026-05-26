-- --------------------------------------------------------
-- MAPPINGS   ~/.config/nvim/lua/morty/mappings.lua
-- --------------------------------------------------------
--print("Start: ~/.config/nvim/lua/morty/mappings.lua")

-- Reload init.lua without restarting nvim
-- Useful during config editing sessions
vim.keymap.set("n", "<leader>ri", '<Cmd>source $MYVIMRC<CR><Cmd>echo "Reloaded nvim"<CR>')
 
-- Ctrl-s save all files from all modes
vim.keymap.set({ 'n', 'i', 'v', 'c' }, '<C-s>', '<Esc><Cmd>wall <CR>', { desc = 'Save all files' })
     
-- Make Y behave as D, Yank to end of line
vim.keymap.set('n', 'Y', 'y$')

vim.keymap.set("n", "<leader>ru", ":w<CR>:!python %<CR>", { noremap = true, silent = true })
-- Updated ArchVbox 2026-04-23 21:28
