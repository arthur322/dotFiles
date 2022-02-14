set nocompatible
filetype plugin on
syntax on
set autoindent        " Fix nested lists problems
set conceallevel=2    " Markdown 'preview' mode

autocmd bufreadpre *.md setlocal textwidth=0 " Fix line breaks for .md files

let g:vimwiki_list = [{'path': '~/vimwiki/',
                     \ 'syntax': 'markdown', 'ext': '.md'}]

let g:vimwiki_ext2syntax = {'.md': 'markdown',
                \ '.mkd': 'markdown',
                \ '.wiki': 'media'}

let g:vimwiki_markdown_link_ext = 1

let g:vimwiki_filetypes = ['markdown', 'pandoc']
