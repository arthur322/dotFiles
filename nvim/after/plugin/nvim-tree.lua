vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_highlight_opened_files = 3
vim.g.nvim_tree_icon_padding = ' '
vim.g.nvim_tree_refresh_wait = 500

vim.cmd([[
  highlight NvimTreeFolderIcon guifg=DarkBlue
]])

require'nvim-tree'.setup {
  disable_netrw = false,
  hijack_netrw = false,
  open_on_setup = true,
  update_focused_file = {
    enable = true,
    update_cwd = false,
    ignore_list = {'node_modules'},
  },
  diagnostics = {
    enable = true,
  },
  view = {
    width = 40,
    side = 'left',
    auto_resize = true,
    relativenumber = true,
  },
}

vim.api.nvim_set_keymap(
  'n',
  '<leader>e',
  "<cmd>NvimTreeFindFile<CR>",
  { noremap = true, silent = true })

vim.api.nvim_set_keymap(
  'n',
  '<leader>E',
  "<cmd>NvimTreeToggle<CR>",
  { noremap = true, silent = true })

