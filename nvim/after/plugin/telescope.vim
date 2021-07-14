lua << EOF
local actions = require("telescope.actions")

require('telescope').setup{
  defaults = {
    file_ignore_patterns = {
      "node_modules",
      "%.lock",
    },
    mappings = {
      n = {
        ["<Tab>"] = actions.move_selection_previous,
        ["<S-Tab>"] = actions.move_selection_next
      },
      i = {
        ["<Tab>"] = actions.move_selection_previous,
        ["<S-Tab>"] = actions.move_selection_next
      },
    }
  },
  pickers = {
    buffers = {
      mappings = {
        n = {
          ["<c-d>"] = actions.delete_buffer,
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

