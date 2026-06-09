-- =====================================
-- NAVIGATIONS
-- =====================================

--set.mapleader = " "

-- Split    windows with leader/Space |/- (pipe/minus)
vim.keymap.set('n', '<leader>|', '<Cmd>vertical split<CR>' )
vim.keymap.set('n', '<leader>-', '<Cmd>split<CR>' )

-- Navigate windows with C-h,j,k,l
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- Resize windows with C-arrows
vim.keymap.set('n', '<C-Up>',     '<Cmd>resize +2<CR>')
vim.keymap.set('n', '<C-Down>',   '<Cmd>resize -2<CR>')
vim.keymap.set('n', '<C-Left>',   '<Cmd>vertical resize -2<CR>')
vim.keymap.set('n', '<C-Right>',  '<Cmd>vertical resize +2<CR>')

-- Buffer next: Space-n    Buffer previous: Space-p
vim.keymap.set('n', '<leader>nn',  '<Cmd>bn <CR>')
vim.keymap.set('n', '<leader>pp',  '<Cmd>bp <CR>')

-- Netrw:
--vim.keymap.set('n', '<leader>nr', '<Cmd>Explore <CR>')
--vim.keymap.set('n', '<leader>ex', '<Cmd>Explore <CR>')
vim.keymap.set('n', '<leader>ff', '<Cmd>Explore <CR>')

-- Updated ArchReal   2026-04-20 21:04 Mon
