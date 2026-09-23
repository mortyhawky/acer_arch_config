-- =====================================
-- AUTO COMMANDS
-- =====================================


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

-- Disable expandtab for Makefile
vim.api.nvim_create_autocmd("FileType", {
    desc = "Disable expandtab for Makefile",
    pattern = "make",	--set ft?    filetype=make
    callback = function()
        vim.opt_local.expandtab = false
        vim.opt_local.list      = true
        --vim.cmd("colorscheme default")
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
