let g:fern#default_hidden = 1 " Reveal hidden files
let g:fern#default_exclude = '^\%(\.git\|node_modules\)$'
let g:fern#renderer = "nerdfont"

nnoremap <silent> <leader>e :Fern . -reveal=% -drawer<CR>

