return require('packer').startup(function()
  -- Packer can manage itself --
  use 'wbthomason/packer.nvim'
	use 'nvim-tree/nvim-web-devicons'
	use 'github/copilot.vim'

	-- Status Bar --
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	use 'pangloss/vim-javascript'

	-- Which Key --
	use 'folke/which-key.nvim'

	-- Start Up --
	use 'mhinz/vim-startify'

	-- Colour Scheme --
	use 'ap/vim-css-color'
	use 'HerringtonDarkholme/yats.vim'
	use 'danilo-augusto/vim-afterglow'
	use 'tomasr/molokai'
	use 'nanotech/jellybeans.vim'
  use 'lifepillar/vim-solarized8'
	use "EdenEast/nightfox.nvim"

  -- Telescope --
	use {
		'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use {
		"nvim-telescope/telescope-file-browser.nvim",
		requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
	}

	-- Treesitter --
	use {
			'nvim-treesitter/nvim-treesitter',
			run = ':TSUpdate'
	}

	-- Icons --
	use 'ryanoasis/vim-devicons'

	-- LSP, Autocompletion --
	use {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"neovim/nvim-lspconfig",
	}

	use 'dmmulroy/tsc.nvim';
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'antonk52/cssmodules-language-server'
	use 'simrat39/rust-tools.nvim'

	-- TS etc. --
	use 'maxmellon/vim-jsx-pretty'
	use 'leafgarland/typescript-vim'
	use 'peitalin/vim-jsx-typescript'
  use('jose-elias-alvarez/null-ls.nvim')

	-- VimWiki --
	use 'vimwiki/vimwiki'
	use 'plasticboy/vim-markdown'

	-- Snippets --
	use 'SirVer/ultisnips'
  use 'quangnguyen30192/cmp-nvim-ultisnips'
  use 'honza/vim-snippets'

	-- Git --
	use 'tpope/vim-fugitive'

	-- Debugger --
	use 'puremourning/vimspector'

	-- Dot Net --
	use 'OmniSharp/omnisharp-vim'
	use 'nickspoons/vim-sharpenup'
	use 'sheerun/vim-polyglot'
end)
