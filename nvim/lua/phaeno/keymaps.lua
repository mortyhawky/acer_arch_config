-- =====================================
-- KEYMAPS
-- =====================================

-- Toggle line numbers with Ctrl n
vim.keymap.set("n", "<C-n>", function()
  if vim.wo.number then
    vim.wo.number         = false
    vim.wo.relativenumber = false
  else
    vim.wo.number         = true
    vim.wo.relativenumber = true
  end
end)

-- Save & Exit
-- Write all changed buffers and exit
vim.keymap.set( {"n"},         "ZZ",         ":wqall<CR>" )

vim.keymap.set( {"n","i","v"}, "<C-s>",      "<Esc><Cmd>:write<CR><Cmd>:nohls<CR>" )
vim.keymap.set( {"n"},         "<leader>so", "<Cmd>:source<CR><Cmd>:nohls<CR>:echo 'Sourced'<CR>" )
vim.keymap.set( {"n","i"},     "<Esc>",      "<Esc><Cmd>:nohls<CR>")

-- Yank from cursor position to end of line
vim.keymap.set( {"n"},         "Y",          "y$")

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
