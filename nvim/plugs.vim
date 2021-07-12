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
Plug 'nvim-lua/popup.nvim' " Telescope dep
Plug 'nvim-lua/plenary.nvim' " Telescope dep
Plug 'lewis6991/gitsigns.nvim' " Git signs to file
Plug 'nvim-telescope/telescope.nvim' " Fuzzy finder
Plug 'kyazdani42/nvim-web-devicons' " Telescope icons
Plug 'tpope/vim-surround' " Surrounding mappings
Plug 'tpope/vim-commentary' " Easy comments
Plug 'jiangmiao/auto-pairs' " Auto closing pairs

call plug#end()

