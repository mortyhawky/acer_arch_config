-- ====================================
-- OPTIONS
-- ====================================
vim.g.netrw_banner      = 0

vim.opt.number          = true
vim.opt.relativenumber  = true

vim.opt.tabstop         = 4
vim.opt.softtabstop     = 4
vim.opt.shiftwidth      = 4
vim.opt.expandtab       = true

vim.opt.wrap            = false
vim.opt.smartindent     = true
vim.opt.inccommand      = "split"

vim.opt.ignorecase      = true
vim.opt.smartcase       = true
vim.opt.laststatus      = 3

vim.opt.swapfile        = false
vim.opt.backup          = false
-- :echo stdpath("data")
vim.opt.undodir         = vim.fn.stdpath("data") .. "/undodir"
vim.opt.undofile        = true

vim.opt.clipboard:append("unnamedplus")
vim.opt.isfname:append("@-@")
vim.opt.guicursor       = ""

vim.opt.scrolloff       = 8
vim.opt.colorcolumn     = "68"

vim.opt.cursorline      = true
vim.opt.cursorcolumn    = true
vim.opt.signcolumn      = "yes"

vim.opt.cmdheight       = 1

vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking text",
    callback = function()
        vim.hl.on_yank()
    end,
    }
)

