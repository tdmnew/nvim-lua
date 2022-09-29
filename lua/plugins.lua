return require('packer').startup(function()
  -- Packer can manage itself --
  use 'wbthomason/packer.nvim'

	-- Status Bar --
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use 'pangloss/vim-javascript'

	-- Which Key --
	use 'folke/which-key.nvim'

	-- Tabline --
	use {
		'romgrk/barbar.nvim',
		requires = {'kyazdani42/nvim-web-devicons'}
	}

	-- File Explorer --
  use 'mcchrish/nnn.vim'	
	
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
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

	-- org mode --
	use {'nvim-orgmode/orgmode', config = function()
					require('orgmode').setup{}
	end
	}

	-- Icons --
	use 'ryanoasis/vim-devicons'

	-- LSP, Autocompletion --
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'antonk52/cssmodules-language-server'

	-- Prettier, TS etc. --
	use 'maxmellon/vim-jsx-pretty'
	use 'leafgarland/typescript-vim'
	use 'peitalin/vim-jsx-typescript'
	use { 'prettier/vim-prettier', run = 'yarn install' }

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
