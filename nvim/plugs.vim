" All plugins must be here!
" ================================

call plug#begin()

Plug 'lambdalisue/nerdfont.vim' " Glyph icons
Plug 'tpope/vim-fugitive' " Git integration
Plug 'nvim-lua/popup.nvim' " Telescope dep
Plug 'nvim-lua/plenary.nvim' " Telescope dep
Plug 'lewis6991/gitsigns.nvim' " Git signs to file
Plug 'nvim-telescope/telescope.nvim' " Fuzzy finder
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' } " Telescope better matchings
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
Plug 'kyazdani42/nvim-tree.lua' " File explorer
Plug 'akinsho/nvim-bufferline.lua' " Tab manager
Plug 'wakatime/vim-wakatime'
Plug 'el-iot/buffer-tree-explorer'
Plug 'windwp/nvim-ts-autotag'
Plug 'ThePrimeagen/harpoon'
Plug 'github/copilot.vim'

" Themes
Plug 'tomasr/molokai'
Plug 'projekt0n/github-nvim-theme'
Plug 'Th3Whit3Wolf/one-nvim'
Plug 'mhartington/oceanic-next'
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'folke/tokyonight.nvim'
Plug 'overcache/NeoSolarized'
Plug 'Yagua/nebulous.nvim'
Plug 'RRethy/nvim-base16'

call plug#end()

