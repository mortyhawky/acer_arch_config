-- =====================================
-- AUTO COMMANDS
-- =====================================

-- Override for gdb
vim.api.nvim_create_autocmd("FileType", {
  pattern = "gdb",
  callback = function()
    vim.cmd("colorscheme vim_default")
    vim.opt.cursorcolumn    = false
    vim.opt.number          = false
    vim.opt.relativenumber  = false
  end,
})

-- Override for Markdown
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.cmd("colorscheme default")
    vim.opt.cursorcolumn    = false
    vim.opt.number          = false
    vim.opt.relativenumber  = false
  end,
})

-- Override for .c
vim.api.nvim_create_autocmd("FileType", {
  pattern = "c",
  callback = function()
    vim.cmd("colorscheme habamax")
    vim.opt.cursorcolumn    = true
    vim.opt.number          = true
    vim.opt.relativenumber  = true
  end,
})



-- Override for .xhk
vim.api.nvim_create_autocmd("FileType", {
  pattern = "xhk",
  callback = function()
    vim.cmd("colorscheme desert")
    vim.opt.cursorcolumn    = true
    vim.opt.number          = true
    vim.opt.relativenumber  = true
  end,
})

-- Disable expandtab for Makefile
vim.api.nvim_create_autocmd("FileType", {
    desc = "Disable expandtab for Makefile",
    pattern = "make",	--set ft?    filetype=make
    callback = function()
        vim.opt_local.expandtab = false
        vim.opt_local.list      = true
        vim.cmd("colorscheme vim_default")
    end,
})

-- Enable relative line numbers in netrw, and remove banner.
vim.api.nvim_create_autocmd("FileType", {
  desc = "Configure netrw: hide banner and absolute line numbers",
  pattern = "netrw",
  callback = function()
    vim.g.netrw_banner           = 0
    vim.opt_local.number         = false
    vim.opt_local.relativenumber = true
  end,
})

-- Highlight when yanking
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking text",
    callback = function()
        vim.hl.on_yank()
    end,
})
