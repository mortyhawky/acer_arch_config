-- =====================================
-- NAVIGATIONS
-- =====================================

-- Split        windows  Space | -
vim.keymap.set('n', '<leader>|', '<Cmd>vertical split<CR>' )
vim.keymap.set('n', '<leader>-', '<Cmd>split<CR>' )

-- Navigate     windows  Ctrl  hjkl
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- Resize       windows  Shift HJKL
vim.keymap.set('n', 'H',  '<Cmd>vertical resize -3<CR>')
vim.keymap.set('n', 'J',  '<Cmd>resize          +3<CR>')
vim.keymap.set('n', 'K',  '<Cmd>resize          -3<CR>')
vim.keymap.set('n', 'L',  '<Cmd>vertical resize +3<CR>')

-- Navigate     buffers  Space bn / bp
vim.keymap.set('n', '<leader>bn',  '<Cmd>bn <CR>')
vim.keymap.set('n', '<leader>bp',  '<Cmd>bp <CR>')

-- Netrw                Space ex
vim.keymap.set('n', '<leader>ex', '<Cmd>Explore <CR>')
