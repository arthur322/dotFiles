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

-- Get user input and search by these folders
function _G.live_grep_in_folder()
  local final_search = {}
  local search = vim.fn.input("Folders to search (divided by space, use <C-R>[register] to paste): ", "", "dir")

  for search_item in string.gmatch(search, "%S+") do
    table.insert(final_search, search_item)
  end

  if search ~= '' then
    require'telescope.builtin'.live_grep({
      search_dirs = final_search,
      prompt_title = 'Live Grep for "' .. search .. '"'
    })
  end
end

EOF

nnoremap <c-p> <cmd>Telescope git_files<cr>
nnoremap <c-f> <cmd>Telescope live_grep<cr>
nnoremap <leader><Enter> <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader><c-f> :call v:lua.live_grep_in_folder()<cr>

