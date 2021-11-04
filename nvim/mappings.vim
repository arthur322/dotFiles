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
nnoremap Y y$
vnoremap <leader>p "+p
vnoremap <leader>P "+P
vnoremap <leader>y "+y

" Select the whole file
nnoremap <C-a> ggVG

" Save or quit typo
:command Q q
:command W w
:command X x

" Bind Esc to work on terminal too
tnoremap <Esc> <C-\><C-n>

" Move line with alt key "
" nnoremap <M-j> ddp
" nnoremap <M-k> ddkP
vnoremap <M-j> :m '>+1<CR>gv=gv
vnoremap <M-k> :m '<-2<CR>gv=gv

" Scroll with <C-j> and <C-k>
nnoremap <c-j> 2<c-e>
nnoremap <c-k> 2<c-y>

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

" Window move and resize
nnoremap <C-w>. 10<C-w>>
nnoremap <C-w>, 10<C-w><
nnoremap <C-w>+ 10<C-w>+
nnoremap <C-w>- 10<C-w>-
nnoremap <M-h> <C-w>h
nnoremap <M-j> <C-w>j
nnoremap <M-k> <C-w>k
nnoremap <M-l> <C-w>l

" Alt-tab like buffer switch
nnoremap <leader><Tab> <C-^>

" Clear search highlights
nnoremap <silent> <leader>/ :nohl<CR>

" Quickfix list
nnoremap [q :cprev<CR>
nnoremap ]q :cnext<CR>
nnoremap <leader>q :copen<CR>

" Maintain selection when indenting
vmap < <gv
vmap > >gv

" Quick highlight
nnoremap <leader>n *N
