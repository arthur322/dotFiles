vim.g.nvim_tree_indent_markers = 0
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_highlight_opened_files = 3
vim.g.nvim_tree_icon_padding = ' '
vim.g.nvim_tree_refresh_wait = 200

vim.cmd([[
  highlight NvimTreeFolderIcon guifg=DarkBlue

  function! SyncTree()
    NvimTreeRefresh
  endfunction
  autocmd BufEnter * call SyncTree()
]])

require'nvim-tree'.setup {
  disable_netrw = false,
  hijack_netrw = false,
  hijack_cursor = true,
  update_cwd = false,
  open_on_setup = false,
  update_to_buf_dir   = {
    enable = false,
    auto_open = false,
  },
  update_focused_file = {
    enable = true,
    update_cwd = false,
  },
  diagnostics = {
    enable = true,
  },
  view = {
    width = 40,
    side = 'left',
    auto_resize = true,
    relativenumber = false,
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

