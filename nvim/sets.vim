" All `set` commands must be here!
" ================================

syntax enable
set number						" Number column
set relativenumber		" Makes it relative
set hidden						" Don't have to save the file to change buffer
set encoding=UTF-8

set nobackup
set nowritebackup
set undofile					" Saves the undo history on a file
set undodir=~/.config/nvim/undodir
set inccommand=split
set scrolloff=5

set incsearch					" Highlights the search on the fly
set ignorecase				" Search case nonsensitive
set smartcase					" Makes it case sensitive if needed
set nowrap
set linespace=2
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab					" Use space instead of tabs
set autoindent
set copyindent

set title             " Changes the terminal title
set signcolumn=yes    " Shows the sign column, before the number column
set mouse=a
set cursorline        " Shows a line on cursor horizontally
set noshowcmd					" Shows information when on visual mode
set splitbelow				" When open a new split, create the buffer below
set splitright				" When open a new vsplit, create the buffer at the right side
set noshowmode				" Hides the actual mode (i.e. "--INSERT--")
set inccommand=split  " Shows a 'preview' when on substitution mode

set termguicolors
set colorcolumn=80    " Column 'limit' line at the 80 character
" Color the limit line, number line and visual mode lines
highlight ColorColumn ctermbg=0 guibg=grey
highlight LineNr cterm=none ctermfg=240 guifg=#2b506e guibg=#000000
highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40
colorscheme molokai

set wildignore+=node_modules/*
set path+=**

let g:netrw_liststyle=3      " Netrw configurations
let g:netrw_banner=0
let g:netrw_browse_split=2
let g:netrw_winsize=30
let g:netrw_browse_split=4   " Where the file is open

