local function breadcrumb()
  return vim.fn['nvim_treesitter#statusline']()
end

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'solarized',
    section_separators = { left = '', right = ''},
    component_separators = { left = '', right = ''}
  },
  sections = {
    lualine_a = {
      'branch',
      {
        'diff',
        colored = true,
        symbols = {added = '+', modified = '~', removed = '-'}
      }
    },
    lualine_b = {''},
    lualine_c = {
      {
        'filename',
        file_status = true,  -- displays file status (readonly status, modified status)
        path = 1,            -- 0 = just filename, 1 = relative path, 2 = absolute path
        shorting_target = 40 -- Shortens path to leave 40 space in the window
                             -- for other components. Terrible name any suggestions?
      }
    },
    lualine_x = {
      'diagnostics',
      'filetype'
    },
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {
      {
        'filename',
        file_status = true,  -- displays file status (readonly status, modified status)
        path = 1,            -- 0 = just filename, 1 = relative path, 2 = absolute path
        shorting_target = 40 -- Shortens path to leave 40 space in the window
                             -- for other components. Terrible name any suggestions?
      }
    },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {'location'}
  },
}

