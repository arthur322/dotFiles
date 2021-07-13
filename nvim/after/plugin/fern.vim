let g:fern#default_hidden = 1 " Reveal hidden files
let g:fern#default_exclude = '^\%(\.git\|node_modules\)$'
let g:fern#renderer = "nerdfont"
let g:fern#drawer_width = 40

nnoremap <silent> <leader>e :Fern . -reveal=% -drawer<CR>

" autocmd! BufEnter * :Fern . -reveal=% -drawer -stay

