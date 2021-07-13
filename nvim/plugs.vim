" All plugins must be here!
" ================================

call plug#begin()

Plug 'lambdalisue/nerdfont.vim' " Glyph icons
Plug 'lambdalisue/fern.vim' " File explorer
Plug 'lambdalisue/fern-git-status.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim' " Use glyphs into explorer
Plug 'lambdalisue/fern-hijack.vim' " Use Fern as default explorer
Plug 'tpope/vim-fugitive' " Git integration
Plug 'nvim-lua/popup.nvim' " Telescope dep
Plug 'nvim-lua/plenary.nvim' " Telescope dep
Plug 'lewis6991/gitsigns.nvim' " Git signs to file
Plug 'nvim-telescope/telescope.nvim' " Fuzzy finder
Plug 'kyazdani42/nvim-web-devicons' " Telescope icons
Plug 'tpope/vim-surround' " Surrounding mappings
Plug 'tpope/vim-commentary' " Easy comments
Plug 'windwp/nvim-autopairs' " Auto closing pairs
Plug 'hoob3rt/lualine.nvim' " Status line
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Buffer code parser
Plug 'neovim/nvim-lspconfig' " Language server client
Plug 'kabouzeid/nvim-lspinstall' " LSP easy configurations
Plug 'hrsh7th/nvim-compe' " Smart auto completion
Plug 'onsails/lspkind-nvim' " Icons to auto completion

" Themes
Plug 'tomasr/molokai'
Plug 'projekt0n/github-nvim-theme'
Plug 'Th3Whit3Wolf/one-nvim'
Plug 'mhartington/oceanic-next'
Plug 'bluz71/vim-nightfly-guicolors'

call plug#end()

