require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "tsx",
    "json",
    "html",
    "scss",
    "typescript",
    "javascript",
    "lua",
    "graphql"
  },
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  }
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.used_by = { "javascript", "javascriptreact", "typescript.tsx", "typescriptreact" }

