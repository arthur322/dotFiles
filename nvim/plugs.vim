" All plugins must be here!
" ================================

call plug#begin()

Plug 'lambdalisue/nerdfont.vim' " Glyph icons
Plug 'lambdalisue/fern.vim' " File explorer
Plug 'lambdalisue/fern-git-status.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim' " Use glyphs into explorer
Plug 'lambdalisue/fern-hijack.vim' " Use Fern as default explorer
Plug 'tpope/vim-fugitive' " Git integration
Plug 'tomasr/molokai' " Theme
Plug 'mhinz/vim-signify' " Git signs to file
Plug 'nvim-lua/popup.nvim' " Telescope dep
Plug 'nvim-lua/plenary.nvim' " Telescope dep
Plug 'nvim-telescope/telescope.nvim' " Fuzzy finder
Plug 'kyazdani42/nvim-web-devicons' " Telescope icons

call plug#end()

