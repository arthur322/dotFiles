local opts = { noremap=true, silent=true }

-- -- -- Buffer remove --
require('mini.bufremove').setup()

vim.api.nvim_set_keymap('n', '<leader>bc', ":lua MiniBufremove.delete()<CR>", opts)

-- -- -- Comments --
require('mini.comment').setup({
  -- Module mappings. Use `''` (empty string) to disable one.
  mappings = {
    -- Toggle comment (like `gcip` - comment inner paragraph) for both
    -- Normal and Visual modes
    comment = 'gc',
    -- Toggle comment on current line
    comment_line = 'gcc',
    -- Define 'comment' textobject (like `dgc` - delete whole comment block)
    textobject = 'gc',
  },
})

vim.cmd([[
xmap <leader>c gc
omap <leader>c gc
nmap <leader>c gcc
]])

-- -- -- Sessions  --
require('mini.sessions').setup()

vim.api.nvim_set_keymap('n', 'ss', ":lua MiniSessions.write('')<left><left>", {})

-- -- -- Starter  --
local starter = require('mini.starter')
starter.setup({
  evaluate_single = true,
  items = {
    starter.sections.builtin_actions(),
    starter.sections.recent_files(5, false),
    starter.sections.recent_files(5, true),
    starter.sections.sessions(5, true)
  },
  content_hooks = {
    starter.gen_hook.adding_bullet(),
    starter.gen_hook.indexing('all', { 'Builtin actions' }),
    starter.gen_hook.padding(3, 2),
    starter.gen_hook.aligning('center', 'center'),
  },
})

-- -- -- Status line
require('mini.statusline').setup()
