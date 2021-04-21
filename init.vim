" Plugins
call plug#begin()

" Colors
Plug 'morhetz/gruvbox'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" GUI
Plug 'itchyny/lightline.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'nvim-lua/popup.nvim' " telescope dep
Plug 'nvim-lua/plenary.nvim' " telescope dep
Plug 'nvim-telescope/telescope.nvim'
Plug 'bagrat/vim-buffet'

" Code
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'
Plug 'jiangmiao/auto-pairs'
Plug 'nvim-lua/completion-nvim'

call plug#end()

" LSP
lua <<EOF

require'lspinstall'.setup()

local nvim_lsp = require('lspconfig')
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }
  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<space>d', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)

  -- Set some keybinds conditional on server capabilities
  if client.resolved_capabilities.document_formatting then
    buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
  elseif client.resolved_capabilities.document_range_formatting then
    buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.range_formatting()<CR>", opts)
  end

  -- Set autocommands conditional on server_capabilities
  if client.resolved_capabilities.document_highlight then
    vim.api.nvim_exec([[
    hi LspReferenceRead cterm=bold ctermbg=red guibg=LightYellow
    hi LspReferenceText cterm=bold ctermbg=red guibg=LightYellow
    hi LspReferenceWrite cterm=bold ctermbg=red guibg=LightYellow
    augroup lsp_document_highlight
      autocmd! * <buffer>
      autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
      autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
    augroup END
    ]], false)
  end
end

EOF

" Colorscheme
let g:gruvbox_contrast_dark='hard'
if (has("termguicolors"))
  set termguicolors
endif
let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
let g:gruvbox_invert_selection='0'
colorscheme gruvbox
set background=dark

lua <<EOF

local servers = require'lspinstall'.installed_servers()
for _, server in pairs(servers) do
  require'lspconfig'[server].setup{ on_attach = on_attach }
end

EOF

" Sets
syntax enable
set linespace=4
set encoding=UTF-8
set hidden
set nobackup
set nowritebackup
set cmdheight=1
set updatetime=300
set shortmess+=c
set signcolumn=yes
set number
set relativenumber
set numberwidth=8
set mouse=a
set inccommand=split
set scrolloff=10
set ignorecase
set smartcase
set nowrap
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set copyindent
set noshowcmd
set splitbelow
set splitright
set noshowmode
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set guitablabel=\[%N\]\ %t\ %M 
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=grey
set cursorline

" Binds "
let mapleader="\<space>"
" Config files "
nnoremap <leader>oc :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>cs :source ~/.config/nvim/init.vim<cr>
nnoremap <leader>pi :PlugInstall<cr>
" Paste / Copy "
nnoremap <leader>p "+p
nnoremap <leader>P "+P
nnoremap <leader>y "+y
vnoremap <leader>p "+p
vnoremap <leader>P "+P
vnoremap <leader>y "+y
" Scroll "
nnoremap <C-j> 3<C-e>
nnoremap <C-k> 3<C-y>
vnoremap <C-j> 3<C-e>
vnoremap <C-k> 3<C-y>
" Break line "
inoremap <C-j> <Esc>o
inoremap <C-k> <Esc>O
" Move line with alt key "
nnoremap <M-j> ddp
nnoremap <M-k> ddkP
vnoremap <M-j> :m '>+1<CR>gv=gv
vnoremap <M-k> :m '<-2<CR>gv=gv
" Bind esc key "
inoremap jk <Esc>
inoremap kj <Esc>
" Bind save "
noremap <C-s> :w<cr>
inoremap <C-s> <Esc>:w<cr>a
" Close file
nnoremap <C-x> :q<cr>
" Netrw
nnoremap <leader>e :Vex<CR>

" Plugin binds
" GIT
nnoremap <leader><leader>g :G<CR>
" VIM-BUFFET
noremap <Tab> :bn<CR>
noremap <S-Tab> :bp<CR>
noremap <Leader><Tab> :Bw<CR>
noremap <Leader><S-Tab> :Bw!<CR>
noremap <C-t> :tabnew split<CR>
" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Plugin configs
" LIGHTLINE
let g:lightline = {
  \   'enable': { 'tabline': 0 },
  \   'colorscheme': 'gruvbox',
  \   'active': {
  \     'left':[ [ 'mode', 'paste' ],
  \              [ 'gitbranch', 'readonly', 'bufferinfo', 'modified' ]
  \     ],
  \     'right': [ ['lineinfo'],
  \                ['percent']]
  \   },
  \   'inactive': {
  \     'left':[ [],
  \              [ 'bufferinfo', 'modified' ]
  \     ],
  \   },
  \   'component_expand': {
  \     'buffers': 'lightline#bufferline#buffers'
  \   },
  \   'component_type': {
  \     'buffers': 'tabsel'
  \   },
  \   'component': {
  \     'bufferinfo': '%f %m',
  \     'lineinfo': '%3l:%-2v',
  \   },
  \   'component_function': {
  \     'gitbranch': 'fugitive#head',
  \   }
  \ }
let g:lightline.separator = {
  \   'left': '', 'right': ''
  \}
let g:lightline.subseparator = {
  \   'left': '', 'right': '' 
  \}
set showtabline=2
" let g:lightline#bufferline#shorten_path = 0
set guioptions-=e

" VIM-BUFFET "
let g:buffet_always_show_tabline = 1
let g:buffet_powerline_separators = 1
let g:buffet_tab_icon = "\uf00a"
let g:buffet_left_trunc_icon = "\uf0a8"
let g:buffet_right_trunc_icon = "\uf0a9"
function! g:BuffetSetCustomColors()
  hi! BuffetCurrentBuffer cterm=NONE ctermbg=5 ctermfg=8 guibg=#61AFEF guifg=#000000
  hi! BuffetActiveBuffer cterm=NONE ctermbg=5 ctermfg=8 guibg=#61AFEF guifg=#FFFFFF
endfunction

" CtrlSF
nmap     <C-F> <Plug>CtrlSFPrompt
vmap     <C-F> <Plug>CtrlSFVwordExec
let g:ctrlsf_auto_focus = {
      \ "at": "start"
      \ }
let g:ctrlsf_auto_preview = 1

" netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

" completion-nvim in every buffer
autocmd BufEnter * lua require'completion'.on_attach()
" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect
" Avoid showing message extra message when using completion
"set shortmess+=c
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
imap <tab> <Plug>(completion_smart_tab)
imap <s-tab> <Plug>(completion_smart_s_tab)


