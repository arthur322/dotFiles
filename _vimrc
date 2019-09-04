set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/vimfiles/bundle/Vundle.vim
call vundle#begin('$HOME/vimfiles/bundle/')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'dense-analysis/ale'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jiangmiao/auto-pairs'
Plugin 'dyng/ctrlsf.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'itchyny/lightline.vim'

call vundle#end()            " required
filetype plugin indent on    " required

" Ale configs
let g:ale_linters = {
  \'javascript': ['eslint'],
  \'css': ['stylelint'],
  \'html': ['htmlhint'],
\}

" CtrlP configs
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_working_path_mode = 0

" CtrlSF configs
" set actual working directory to search
let g:ctrlsf_auto_focus = {
    \ "at": "start"
    \ }

" Nerdtree configs
map <C-b> :NERDTreeToggle %<CR>

" Lightline configs
set laststatus=2
set noshowmode
let g:lightline = {
\     'active': {
\         'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
\         'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']]
\     }
\ }


" ===================== Real configs ====================
inoremap jk <ESC>
map <C-S-f> <Plug>CtrlSFPrompt
let mapleader = "\<Space>"

set relativenumber
set number
colo desert

set noswapfile
set nobackup
set nowritebackup
set splitright
set splitbelow
set incsearch
set hlsearch
set ignorecase
set smartcase
set nocursorcolumn
set nocursorline
set wildmenu
set scrolloff=10
" Fix backspace error
set bs=2

set lazyredraw
syntax sync minlines=256
set synmaxcol=300
set re=1

set wrap
set textwidth=79
set formatoptions=qrn1

set autoindent
set complete-=i
set showmatch
set smarttab

set et
set tabstop=2
set shiftwidth=2
set expandtab
set nofixendofline

set notimeout
set complete=.,w,b,u,t

" **/* igore
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png,*.ico
set wildignore+=*.pdf,*.psd
set wildignore+=node_modules/*,bower_components/*

syntax enable

