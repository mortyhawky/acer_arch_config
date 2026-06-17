-- =====================================
-- AUTOCMDS
-- =====================================
--vim.g.netrw_banner      = 0

-- Enable relative line numbers in netrw
vim.api.nvim_create_autocmd("FileType", {
  pattern = "netrw",
  callback = function()
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
    }
)
