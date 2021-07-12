lua << EOF
require('lualine').setup {
  options = {
    theme = 'github'
  },
  sections = {
    lualine_a = {''},
    lualine_b = {'branch'},
    lualine_c = {'filename'},
    lualine_x = {'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  }
}
EOF

