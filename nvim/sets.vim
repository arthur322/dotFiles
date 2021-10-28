" All `set` commands must be here!
" ================================

syntax enable
set number						" Number column
set relativenumber		" Makes it relative
set hidden						" Don't have to save the file to change buffer
set encoding=UTF-8
set regexpengine=1    " Just testing performance improvements

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
set expandtab					" Use space instead of tabs
set tabstop=2         " How many spaces is needed to create a tab spacer
set softtabstop=2     " How many spaces is inseted when <Tab> is pressed
set shiftwidth=2
set autoindent
set copyindent
set foldmethod=indent " Use indentation as fold method
set foldlevel=99      " Open file with all folds open

" Only set foldmethod=syntax in git diff files
autocmd FileType git setlocal foldmethod=syntax foldlevel=0

set title             " Changes the terminal title
set signcolumn=yes    " Shows the sign column, before the number column
set mouse=a
set cursorline        " Shows a line on cursor horizontally
set noshowcmd					" Shows information when on visual mode
set splitbelow				" When open a new split, create the buffer below
set splitright				" When open a new vsplit, create the buffer at the right side
set noshowmode				" Hides the actual mode (i.e. "--INSERT--")
set inccommand=split  " Shows a 'preview' when on substitution mode

set lazyredraw        " Delays screen redraw to improve performance
set updatetime=100
set termguicolors
" set colorcolumn=80    " Column 'limit' line at the 80 character

set wildignore+=node_modules/*
set path+=**

let g:netrw_liststyle=3      " Netrw configurations
let g:netrw_banner=0
let g:netrw_winsize=30
let g:netrw_browse_split=0   " Where to open the file
let g:netrw_preview=1        " Open preview on vsplit

" Highlight text on yank
augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=300}
augroup END

