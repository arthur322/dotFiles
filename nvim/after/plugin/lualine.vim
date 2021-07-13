lua << EOF
local function filepath()
  return '%f'
end

require('lualine').setup {
  options = {
    theme = '16color'
  },
  sections = {
    lualine_a = {''},
    lualine_b = {'branch'},
    lualine_c = {filepath},
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

