-- =====================================
-- AUTO COMMANDS
-- =====================================

-- Enable relative line numbers in netrw, and remove banner.
vim.api.nvim_create_autocmd("FileType", {
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
    }
)
