lua << EOF
require('telescope').setup{
  defaults = {
    file_ignore_patterns = {
      "node_modules",
      "%.lock",
    },
  }
}
EOF

nnoremap <leader>ff <cmd>Telescope git_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap - <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

