--print("Start: ~/.config/nvim/lua/morty/autocmds.lua")

-- Enable relative line numbers in netrw (Space-ff)
vim.api.nvim_create_autocmd("FileType", {
  pattern = "netrw",
  callback = function()
    --vim.opt_local.number = true
    vim.opt_local.relativenumber = true
  end,
})

-- Updated ArchReal 2026-04-20 20:55 Mon
