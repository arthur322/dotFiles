call plug#begin()
" Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'mhartington/oceanic-next'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'ternjs/tern_for_vim', { 'do' : 'npm install' }
call plug#end()

" Theme config
if (has("termguicolors"))
 set termguicolors
endif
syntax enable
colorscheme OceanicNext

set hidden
set number
set relativenumber
set mouse=a
set inccommand=split
set scrolloff=5
set ignorecase
set nowrap
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set copyindent

let mapleader="\<space>"
" configuration file
nnoremap <leader>oc :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>cs :source ~/.config/nvim/init.vim<cr>
nnoremap <leader>pi :PlugInstall<cr>
" Bind esc key
inoremap jk <Esc>
inoremap kj <Esc>
" Bind save
noremap <C-s> :w<cr>
" Fzf
nnoremap <C-p> :Files<cr>
nnoremap <C-f> :CtrlSF 
" Bind emmet
let g:user_emmet_leader_key=','
" Configure folding
" zc - Close the fold
" zM - Close all folds
" zo - Open fold
" zR - Open all folds
" zj/zk - Fold navigation
set foldmethod=syntax
set foldcolumn=1
let javaScript_fold=1
set foldlevelstart=99

