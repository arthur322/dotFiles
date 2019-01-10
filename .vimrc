let g:netrw_banner = 0
let g:netrw_browse_split = 2

" colorscheme onedark
set termguicolors
colorscheme atomified

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Plugin 'junegunn/fzf'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'joshdick/onedark.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'jiangmiao/auto-pairs'
Plugin 'easymotion/vim-easymotion'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
" Plugin 'skammer/vim-css-color'
Plugin 'alvan/vim-closetag'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'sts10/vim-pink-moon'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" map ; :FZF<CR>

set laststatus=2
set noshowmode
let g:lightline = {
\     'active': {
\         'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
\         'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']]
\     }
\ }

inoremap jk <ESC>
set relativenumber
set number
set lazyredraw

" Key mappings
no <down> ddp
no <up> ddkP

" Emmet
let g:user_emmet_leader_key='<C-z>'

" Css color
let g:cssColorVimDoNotMessMyUpdatetime = 1

" Close tag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.jsx'
let g:closetag_shortcut = '>'

" Center when change locations
nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz

nmap j jzz
nmap k kzz

map <C-b> :NERDTreeToggle<CR>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

set shiftwidth=2
set tabstop=2
