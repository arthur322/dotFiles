local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local code_actions = null_ls.builtins.code_actions

require("null-ls").setup({
  debug = false,
  sources = {
    formatting.prettier,
    formatting.stylua,
    diagnostics.eslint,
    code_actions.eslint_d,
    code_actions.refactoring,
  },
})
