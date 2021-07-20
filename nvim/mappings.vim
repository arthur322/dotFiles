" All mappings must be here!
" ================================

nnoremap <space> <Nop>
let mapleader="\<Space>"      " Set the leader key

" Config files
nnoremap <leader>oc :vsplit ~/.config/nvim<cr>
nnoremap <leader>s :source ~/.config/nvim/init.vim<cr>
nnoremap <leader>pi :PlugInstall<cr>

" Paste / Copy
nnoremap <leader>p "+p
nnoremap <leader>P "+P
nnoremap <leader>y "+y
vnoremap <leader>p "+p
vnoremap <leader>P "+P
vnoremap <leader>y "+y

" Save or quit typo
:command Q q
:command W w
:command X x

" Bind Esc to work on terminal too
tnoremap <Esc> <C-\><C-n>

" Move line with alt key "
nnoremap <M-j> ddp
nnoremap <M-k> ddkP
vnoremap <M-j> :m '>+1<CR>gv=gv
vnoremap <M-k> :m '<-2<CR>gv=gv

" Bind esc key "
inoremap jk <Esc>
inoremap kj <Esc>

" Stop ctrl-z to suspend
map <C-z> <Esc>
 
" Bind save "
noremap <C-s> :w<cr>
inoremap <C-s> <Esc>:w<cr>a

" Close file
nnoremap <C-x> :q<cr>

" Esc in terminal mode
tnoremap <leader><Esc> <C-\><C-n>

" Windows
nnoremap <C-w>< 10<C-w>>
nnoremap <C-w>> 10<C-w><
nnoremap <C-w>+ 10<C-w>+
nnoremap <C-w>- 10<C-w>-
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

" Alt-tab like buffer switch
nnoremap <leader><Tab> <C-^>

" Clear search highlights
nnoremap <silent> <leader>/ :nohl<CR>

