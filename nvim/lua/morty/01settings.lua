-- --------------------------------------------------------
-- 01SETTINGS   ~/.config/nvim/lua/morty/01settings.lua
-- --------------------------------------------------------

vim.opt.modeline = true           -- Enable 5 modelines

-- --------------------------------------------------------
-- MY ADDONS:
-- --------------------------------------------------------
--print("Start: ~/.config/nvim/lua/morty/01settings.lua")

-- Colorscheme based on GUI/CLI mode
local display = os.getenv("DISPLAY") or os.getenv("WAYLAND_DISPLAY")
--echo "display"

if display and display ~= "" then
  vim.cmd("colorscheme habamax")
else
  vim.cmd("colorscheme default")
end

vim.g.mapleader         = " "     -- Space as leader

--vim.opt.backup          = false   -- Disable backup files
vim.opt.swapfile        = false   -- No swapfile (avoids clutter)
vim.opt.cursorline      = true    -- Highlight current line
vim.opt.cursorcolumn    = true    -- Highlight current column


-- --------------------------------------------------------
-- OPTIONS  from yt: The Rad Lectures
-- --------------------------------------------------------
vim.opt.termguicolors   = true    -- Enable 24-bit RGB colors (requires supporting terminal)
--vim.cmd.colorscheme  ("unokai")   -- Built-in dark colorscheme (no plugin needed)

vim.opt.number          = true    -- Show absolute line number on current line
vim.opt.relativenumber  = true    -- Show relative line numbers for other lines
--vim.opt.cursorline      = true   -- @ line 12
vim.opt.wrap            = false   -- Disable line wrapping
vim.opt.scrolloff       = 8       -- Keep 8 lines above/below cursor
vim.opt.sidescrolloff   = 8       -- Keep 8 lines to the left/right of cursor

vim.opt.tabstop         = 2       -- Visual width of a real tab character
vim.opt.shiftwidth      = 2       -- Number of spaces for >> / << indentation
vim.opt.softtabstop     = 2       -- <Tab>/<BS> count as 2 spaces in insert mode
vim.opt.expandtab       = true    -- Insert spaces when <Tab> is pressed
vim.opt.smartindent     = true    -- Auto-indent new lines based on syntax context
vim.opt.autoindent      = true    -- Copy indent level from current line on <CR>

vim.opt.ignorecase      = true    -- Case insensitive search
vim.opt.smartcase       = true    -- Case sensitive if uppercase in string
vim.opt.hlsearch        = false   -- Don't highlight search results
vim.opt.incsearch       = true    -- Show results as you type

vim.opt.signcolumn      = "yes"   -- Always show sign column
vim.opt.colorcolumn     = "80"    -- Show a column at 80 pos chars
vim.opt.showmatch       = true    -- Highlight matching brackets
vim.opt.cmdheight       = 1       -- Single line command line
vim.opt.completeopt     = "menuone,noinsert,noselect"
--vim.opt.showmode        = false   -- Do not show the mode, instead have it in statusline
vim.opt.showmode        = true    -- Show the mode
vim.opt.pumheight       = 10      -- Popup menu height
vim.opt.pumblend        = 10      -- Popup menu transparency
vim.opt.winblend        = 0       -- Floating window transparency
vim.opt.conceallevel    = 0       -- Don't hide markup
vim.opt.concealcursor   = ""      -- Don't hide cursorline in markup
vim.opt.lazyredraw      = true    -- Don't redraw during macros
vim.opt.synmaxcol       = 300     -- Syntax highlighting limit
vim.opt.fillchars       = {eob=" "}   -- Hide "~" on empty lines

local undodir = vim.fn.expand("~/.vim/undodir")
if
  vim.fn.isdirectory(undodir) == 0 -- Create undodir if nonexistent
then
  vim.fn.mkdir(undodir, "p")
end

vim.opt.backup          = false   -- Do not create backup files
vim.opt.writebackup     = false   -- Do not write to a backup file

-- Updated hpWin    2026-04-28 14:42 Tue
-- Updated acerWSL  2026-04-28 18:36 Tue
-- Updated acerWin  2026-04-29 07:07 Wed
-- Updated acerArch 2026-04-29 11:08 Wed
