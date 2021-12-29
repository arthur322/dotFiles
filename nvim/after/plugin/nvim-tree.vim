"let g:nvim_tree_ignore = [ '.git', 'node_modules', '.cache' ] "empty by default
"let g:nvim_tree_auto_ignore_ft = [ 'startify', 'dashboard' ] "empty by default, don't auto open tree on specific filetypes.
"let g:nvim_tree_quit_on_open = 0 "0 by default, closes the tree when you open a file
"let g:nvim_tree_follow = 1 "0 by default, this option allows the cursor to be updated when entering a buffer
"let g:nvim_tree_indent_markers = 1 "0 by default, this option shows indent markers when folders are open
"let g:nvim_tree_hide_dotfiles = 0 "0 by default, this option hides files and folders starting with a dot `.`
"let g:nvim_tree_git_hl = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons).
"let g:nvim_tree_highlight_opened_files = 3 "0 by default, will enable folder and file icon highlight for opened files/directories.
"let g:nvim_tree_root_folder_modifier = ':~' "This is the default. See :help filename-modifiers for more options
"let g:nvim_tree_tab_open = 1 "0 by default, will open the tree when entering a new tab and the tree was previously open
"let g:nvim_tree_auto_resize = 1 "1 by default, will resize the tree to its saved width when opening a file
"let g:nvim_tree_disable_netrw = 0 "1 by default, disables netrw
"let g:nvim_tree_hijack_netrw = 0 "1 by default, prevents netrw from automatically opening when opening directories (but lets you keep its other utilities)
"let g:nvim_tree_add_trailing = 1 "0 by default, append a trailing slash to folder names
"let g:nvim_tree_group_empty = 0 " 0 by default, compact folders that only contain a single folder into one node in the file tree
"let g:nvim_tree_lsp_diagnostics = 1 "0 by default, will show lsp diagnostics in the signcolumn. See :help nvim_tree_lsp_diagnostics
"let g:nvim_tree_disable_window_picker = 0 "0 by default, will disable the window picker.
"let g:nvim_tree_icon_padding = ' ' "one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
"let g:nvim_tree_window_picker_exclude = {
"    \   'filetype': [
"    \     'packer',
"    \     'qf'
"    \   ],
"    \   'buftype': [
"    \     'terminal'
"    \   ]
"    \ }
"" Dictionary of buffer option names mapped to a list of option values that
"" indicates to the window picker that the buffer's window should not be
"" selectable.
"let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1, 'package.json': 1 } " List of filenames that gets highlighted with NvimTreeSpecialFile
"let g:nvim_tree_show_icons = {
"    \ 'git': 1,
"    \ 'folders': 1,
"    \ 'files': 1,
"    \ 'folder_arrows': 1,
"    \ }
""If 0, do not show the icons for one of 'git' 'folder' and 'files'
""1 by default, notice that if 'files' is 1, it will only display
""if nvim-web-devicons is installed and on your runtimepath.
""if folder is 1, you can also tell folder_arrows 1 to show small arrows next to the folder icons.
""but this will not work when you set indent_markers (because of UI conflict)

"" default will show icon by default if no icon is provided
"" default shows no icon by default
"let g:nvim_tree_icons = {
"    \ 'default': '',
"    \ 'symlink': '',
"    \ 'git': {
"    \   'unstaged': "✗",
"    \   'staged': "✓",
"    \   'unmerged': "",
"    \   'renamed': "➜",
"    \   'untracked': "★",
"    \   'deleted': "",
"    \   'ignored': "◌"
"    \   },
"    \ 'folder': {
"    \   'arrow_open': "",
"    \   'arrow_closed': "",
"    \   'default': "",
"    \   'open': "",
"    \   'empty': "",
"    \   'empty_open': "",
"    \   'symlink': "",
"    \   'symlink_open': "",
"    \   },
"    \   'lsp': {
"    \     'hint': "",
"    \     'info': "",
"    \     'warning': "",
"    \     'error': "",
"    \   }
"    \ }

" nnoremap <silent> <leader>r :NvimTreeRefresh<CR>

" NvimTreeOpen and NvimTreeClose are also available if you need them

set termguicolors " this variable must be enabled for colors to be applied properly

" a list of groups can be found at `:help nvim_tree_highlight`

" lua require'nvim-tree'.setup {
" \  disable_netrw       = false,
" \  hijack_netrw        = false,
" \  open_on_setup       = true,
" \  ignore_ft_on_setup  = {},
" \  update_to_buf_dir   = {
" \    enable = true,
" \    auto_open = true,
" \  },
" \  auto_close          = false,
" \  open_on_tab         = false,
" \  hijack_cursor       = true,
" \  update_cwd          = false,
" \  diagnostics         = {
" \    enable = true,
" \    icons = {
" \      hint = "",
" \      info = "",
" \      warning = "",
" \      error = "",
" \    }
" \  },
" \  update_focused_file = {
" \    enable      = true,
" \    update_cwd  = false,
" \    ignore_list = {"node_modules"}
" \  },
" \  system_open = {
" \    cmd  = nil,
" \    args = {}
" \  },
" \  view = {
" \    width = 40,
" \    height = 30,
" \    side = 'left',
" \    auto_resize = true,
" \    mappings = {
" \      custom_only = false,
" \      list = {}
" \    }
" \  }
" \}

