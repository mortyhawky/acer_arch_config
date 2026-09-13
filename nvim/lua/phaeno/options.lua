-- ========================================================
-- OPTIONS ~/.config/nvim/lua/phaeno/options.lua
-- ========================================================

-- Colorscheme based on GUI/CLI mode
--display = os.getenv("DISPLAY") or os.getenv("WAYLAND_DISPLAY")
--
--local display = vim.env.DISPLAY
--display = vim.env.DISPLAY


-- --if display and display ~= "" then
-- --  vim.cmd("colorscheme vim_default")
-- --else
-- --  --vim.cmd("colorscheme industry")
-- --  vim.cmd("colorscheme vim_default")
-- --end

vim.opt.termguicolors   = false
vim.cmd("colorscheme vim_default")

-- Override for Markdown
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.cmd("colorscheme default")
    vim.opt.cursorcolumn    = false
    vim.opt.number = false
    vim.opt.relativenumber = false
  end,
})


vim.opt.spell           = true
vim.opt.spelllang       = "en_us"
vim.opt.spellfile       = vim.fn.stdpath("config") 
                            .. "/spell/en.utf-8.add"
-- Ignore spellerror on line starting with lowercase
--vim.opt.spellcapcheck   = ""

vim.opt.number          = true
vim.opt.relativenumber  = true

vim.opt.tabstop         = 4
vim.opt.softtabstop     = 4
vim.opt.shiftwidth      = 4
vim.opt.expandtab       = true
--vim.opt.expandtab       = false

vim.opt.wrap            = false
vim.opt.smartindent     = true
vim.opt.inccommand      = "split"

vim.opt.ignorecase      = true
vim.opt.smartcase       = true


vim.opt.swapfile        = false
vim.opt.backup          = false
-- :echo stdpath("data")
-- returns: /home/m/.local/share/nvim
vim.opt.undodir         = vim.fn.stdpath("data") 
                            .. "/undodir"
vim.opt.undofile        = true

vim.opt.clipboard:append("unnamedplus")
vim.opt.isfname:append("@-@")
vim.opt.guicursor       = ""

-- vim.opt.scrolloff       = 8
vim.opt.colorcolumn     = "70"

vim.opt.cursorline      = true
vim.opt.cursorcolumn    = true
vim.opt.signcolumn      = "yes"

vim.opt.cmdheight       = 1
vim.opt.laststatus      = 2
