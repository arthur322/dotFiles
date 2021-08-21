require'bufferline'.setup({
  options = {
    numbers = "none",
    separator_style = "thick",
    diagnostics = "nvim_lsp",
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      local icon = level:match("error") and " " or " "
      return " " .. icon .. count
    end
  }
})

vim.api.nvim_set_keymap('n', '<leader>b', "<cmd>BufferLinePick<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader><leader><Tab>', "<cmd>BufferLinePick<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>B', "<cmd>BufferLinePickClose<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Tab>', "<cmd>BufferLineCycleNext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Tab>', "<cmd>BufferLineCyclePrev<CR>", { noremap = true, silent = true })

