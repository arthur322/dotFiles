" All plugins must be here!
" ================================

" Install vim-plug if not found
let data_dir = '~/.local/share/nvim/site'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source ~/.config/nvim/init.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source ~/.config/nvim/init.vim
\| endif

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
Plug 'hrsh7th/nvim-compe' " Smart auto completion
Plug 'onsails/lspkind-nvim' " Icons to auto completion
Plug 'kyazdani42/nvim-tree.lua' " File explorer
Plug 'akinsho/nvim-bufferline.lua' " Tab manager
" Plug 'wakatime/vim-wakatime'
Plug 'windwp/nvim-ts-autotag' " Auto tag features in tsx files
Plug 'ThePrimeagen/harpoon' " Easy navigation between frequently files
Plug 'github/copilot.vim' " Github's copilot
Plug 'williamboman/nvim-lsp-installer' " Easy installation for lsp clients
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-sleuth'

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

