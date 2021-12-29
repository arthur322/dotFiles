require'bufferline'.setup({
  options = {
    separator_style = "thick",
    diagnostics = "nvim_lsp",
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      local icon = level:match("error") and " " or " "
      return " " .. icon .. count
    end,
  }
})

vim.api.nvim_set_keymap('n', '<leader>b', "<cmd>BufferLinePick<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader><leader><Tab>', "<cmd>BufferLinePick<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>B', "<cmd>BufferLinePickClose<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Tab>', "<cmd>BufferLineCycleNext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Tab>', "<cmd>BufferLineCyclePrev<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader><S-Tab>', "<cmd>:e #<CR>:bdelete #<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>1', "<cmd>BufferLineGoToBuffer 1<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>2', "<cmd>BufferLineGoToBuffer 2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>3', "<cmd>BufferLineGoToBuffer 3<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>4', "<cmd>BufferLineGoToBuffer 4<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>5', "<cmd>BufferLineGoToBuffer 5<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>6', "<cmd>BufferLineGoToBuffer 6<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>7', "<cmd>BufferLineGoToBuffer 7<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>8', "<cmd>BufferLineGoToBuffer 8<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>9', "<cmd>BufferLineGoToBuffer 9<CR>", { noremap = true, silent = true })

