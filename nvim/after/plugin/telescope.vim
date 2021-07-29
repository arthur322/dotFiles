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
        ["<S-Tab>"] = actions.move_selection_next,
        ["s"] = actions.toggle_selection,
        ["qf"] = actions.send_selected_to_qflist,
      },
      i = {
        ["<Tab>"] = actions.move_selection_previous,
        ["<S-Tab>"] = actions.move_selection_next,
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
    },
    git_status = {
      mappings = {
        n = {
          ["<Tab>"] = actions.move_selection_previous,
          ["<S-Tab>"] = actions.move_selection_next,
          ["s"] = actions.git_staging_toggle,
          ["u"] = actions.git_staging_toggle,
        },
        i = {
          ["<Tab>"] = actions.move_selection_previous,
          ["<S-Tab>"] = actions.move_selection_next,
          ["<leader>s"] = actions.git_staging_toggle,
          ["<leader>u"] = actions.git_staging_toggle,
        },
      }
    }
  },
  extensions = {
    fuzzy = true,                    -- false will only do exact matching
    override_generic_sorter = false, -- override the generic sorter
    override_file_sorter = true,     -- override the file sorter
  }
}

require('telescope').load_extension('fzf')

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

nnoremap <leader>t <cmd>Telescope<cr>
nnoremap <c-p> <cmd>Telescope git_files<cr>
nnoremap <leader><c-p> <cmd>Telescope git_status<cr>
nnoremap <c-f> <cmd>Telescope live_grep<cr>
nnoremap <leader><Enter> <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader><c-f> :call v:lua.live_grep_in_folder()<cr>

