-- =====================================
-- KEY MAPS
-- =====================================

-- Toggle spellcheck:
vim.keymap.set(
    {"n"}, 
    "<leader>s",                        -- leader s
    "<cmd>set spell!<CR>"
)
-- :set spellfile?
-- ]s   next misspelling
-- [s   previous misspelling
-- z=   show suggestions
-- zg   add word to dictionary
-- zw   mark word as misspelled
-- zug  undo zg
-- zuw  undo zw

-- define the function to toggle line numbers:
local function ToggleLineNumbers()
  if vim.wo.number then
    vim.wo.number = false
    vim.wo.relativenumber = false
  else
    vim.wo.number = true
    vim.wo.relativenumber = true
  end
end
-- map Ctrl-n to call ToggleLineNumbers()
vim.keymap.set(
    {"n"}, 
    "<C-n>", 
    ToggleLineNumbers
)

-- Make ZZ write all modified buffers and quit.
vim.keymap.set( 
    {"n"},         
    "ZZ",         
    "<Cmd>wqall<CR>" 
)

-- C-s Escape + Write + nohls
vim.keymap.set( 
    {"n","i","v","c"},
    "<C-s>",
    "<Esc><Cmd>write<CR><Cmd>nohls<CR>"
)

-- Make Escape also turn off highlighting
vim.keymap.set( 
    {"n","i"},     
    "<Esc>",      
    "<Esc><Cmd>nohls<CR>"
)

-- Yank from cursor position to end of line
vim.keymap.set( 
    {"n"},         
    "Y",          
    "y$"
)

-- Replaces selected text WITHOUT
-- losing what you yanked
vim.keymap.set( 
    {"x"}, 
    "p", 
    [["_dP]] 
)

-- --  delete text WITHOUT saving it to any register
-- vim.keymap.set( 
--     {"n","v"}, 
--     "<leader>d", 
--     [["_d]] 
-- )

-- -- Moves line(s) up or down in visual selection mode
-- vim.keymap.set( 
--     {"v"}, 
--     "J", 
--     "<Cmd>m '>+1<CR>gv=gv" 
-- )
-- vim.keymap.set( 
--     {"v"}, 
--     "K", 
--     "<Cmd>m '<-2<CR>gv=gv" 
-- )

-- -- Indent and keep selection
-- vim.keymap.set( "v", "<", ">gv" )
-- -- Unindent and keep selection
-- vim.keymap.set( "v", ">", "<gv" )

-- Join lines without moving cursor
vim.keymap.set( "n", "J", "mzJ`z" )

-- -- Move down in buffer with cursor centered
-- vim.keymap.set( "n", "<C-d>", "<C-d>zz" )
-- -- Move up   in buffer with cursor centered
-- vim.keymap.set( "n", "<C-u>", "<C-u>zz" )

-- Next search result cursor centered
vim.keymap.set( "n", "n", "nzzzv" )
-- Prev search result cursor centered
vim.keymap.set( "n", "N", "Nzzzv" )
