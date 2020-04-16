call plug#begin()
" Themes and fashion
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'kaicataldo/material.vim'
Plug 'mhartington/oceanic-next'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
" Nerdtree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
" Motion and cursors
Plug 'mbbill/undotree'
Plug 'dyng/ctrlsf.vim'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
" Lint and code styling
Plug 'mattn/emmet-vim'
Plug 'dense-analysis/ale'
Plug 'alvan/vim-closetag'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" Theme config
if (has("termguicolors"))
 set termguicolors
endif
let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
syntax enable
colorscheme gruvbox
let g:airline_theme='onehalfdark'
let g:gruvbox_contrast_dark = 'hard'
set background=dark

" Sets
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
set mouse=a
set inccommand=split
set scrolloff=5
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
" Scroll "
nnoremap <C-j> 3<C-e>
nnoremap <C-k> 3<C-y>
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
" Fzf "
nnoremap <C-p> :GFiles<cr>
nnoremap <leader><CR> :Buffers<cr>
" Switch tabs with Ctrl left and right
nnoremap <C-right> :tabnext<CR>
nnoremap <C-left> :tabprevious<CR>
nnoremap <C-up> :tabnew<CR>
nnoremap <C-down> :tabclose<CR>
inoremap <C-right> <Esc>:tabnext<CR>
inoremap <C-left> <Esc>:tabprevious<CR>
" Switch buffers with Alt left and right
nnoremap <M-Left> :bprev<CR>
nnoremap <M-Right> :bnext<CR>
nnoremap <M-Down> :bdelete<CR>
inoremap <M-Left> :bprev<CR>
inoremap <M-Right> :bnext<CR>

" CtrlSF "
nnoremap <C-f> :CtrlSF<space>
" Prettier "
nmap <leader>pp <Plug>(Prettier)
" Bind emmet "
let g:user_emmet_leader_key='ç'
" Configure folding "
" zc - Close the fold
" zM - Close all folds
" zo - Open fold
" zR - Open all folds
" zj/zk - Fold navigation
" set foldmethod=syntax
" set foldcolumn=1
" let javaScript_fold=1
" set foldlevelstart=99
map <C-_> :nohl<cr>
nnoremap n nzz
nnoremap N Nzz
" Undotree "
nnoremap <leader>u :UndotreeToggle<cr>

" Nerdtree "
" === NERDTree === "
" Show hidden files/directories
let g:NERDTreeShowHidden = 1
" Remove bookmarks and help text from NERDTree
let g:NERDTreeMinimalUI = 1
" Custom icons for expandable/expanded directories
" let g:NERDTreeDirArrowExpandable = '⬏'
" let g:NERDTreeDirArrowCollapsible = '⬎'
" Hide certain files and directories from NERDTree
let g:NERDTreeIgnore = ['^\.DS_Store$', '^tags$', '\.git$[[dir]]', '\.idea$[[dir]]', '\.sass-cache$']
" Color highlight
let g:NERDTreeHighlightFolders = 1
let g:NERDTreeLimitedSyntax = 1
let g:NERDTreeWinSize=60
" Binds
nmap <C-b> :NERDTreeToggle<CR>
nmap <leader><C-b> :NERDTreeFind<CR>
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" === AirLine === "
let g:airline_section_z = airline#section#create(['linenr'])
let g:airline#extensions#default#layout = [['a', 'b', 'c'], ['x', 'z', 'warning', 'error']]
let g:airline#extensions#default#section_truncate_width = {
      \ 'c': 30,
      \ }
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_tab_count = 0
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#formatter = 'short_path'
let g:airline_extensions = ['branch', 'hunks', 'coc', 'tabline']

""""""""" COC VIM "
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if has('patch8.1.1068')
  " Use `complete_info` if your (Neo)Vim version supports it.
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Split and tab variations.
nmap <silent> <leader>gd :call CocAction('jumpDefinition', 'vsplit')<cr>
nmap <silent> <leader>tgd :call CocAction('jumpDefinition', 'tabe')<cr>

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)
nmap <leader><C-i> :CocCommand eslint.executeAutofix<cr>

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

