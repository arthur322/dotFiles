local function filepath()
  local dirty = ''

  if vim.bo.modified then
    dirty = ' *'
  end

  return '%f' .. dirty
end

local function breadcrumb()
  return vim.fn['nvim_treesitter#statusline']()
end

local function lsp_diag()
  local result = {}
  local actual_buffer = vim.api.nvim_get_current_buf()
  local levels = {
    E = 'Error',
    W = 'Warning',
    I = 'Information',
    H = 'Hint'
  }

  for key, level in pairs(levels) do
    print(vim.inspect(levels))
    local level_count = vim.lsp.diagnostic.get_count(actual_buffer, level)
    if level_count > 0 then
      table.insert(result, key .. ': ' .. level_count)
    end
  end

  return table.concat(result, ' / ')
end

require('lualine').setup {
  options = {
    theme = 'nightfly'
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
    lualine_b = {filepath, breadcrumb},
    lualine_c = {''},
    lualine_x = {
      {
        lsp_diag,
        color = 'WarningMsg'
      },
      'filetype'
    },
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {filepath},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {'location'}
  },
}

