lua << EOF
require('telescope').setup{
  defaults = {
    file_ignore_patterns = {
      "node_modules",
      "%.lock",
    },
  },
  pickers = {
    buffers = {
      mappings = {
        n = {
          ["<c-d>"] = require("telescope.actions").delete_buffer,
        }
      }
    }
  }
}
EOF

nnoremap <c-p> <cmd>Telescope git_files<cr>
nnoremap <c-f> <cmd>Telescope live_grep<cr>
nnoremap <leader><Enter> <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

