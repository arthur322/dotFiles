lua << EOF
local function filepath()
  return '%f'
end

local function breadcrumb()
  return vim.fn['nvim_treesitter#statusline']()
end

require('lualine').setup {
  options = {
    theme = 'nightfly'
  },
  sections = {
    lualine_a = {'branch'},
    lualine_b = {filepath, breadcrumb},
    lualine_c = {''},
    lualine_x = {'filetype'},
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
EOF

