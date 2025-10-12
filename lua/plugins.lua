return {
	'nvim-tree/nvim-web-devicons',
	'nvim-lualine/lualine.nvim',
	'pangloss/vim-javascript',

	-- Which Key --
	'folke/which-key.nvim',

	-- Start Up --
	'mhinz/vim-startify',

	-- Colour Scheme --
	'ap/vim-css-color',
	'HerringtonDarkholme/yats.vim',
	'danilo-augusto/vim-afterglow',
	'tomasr/molokai',
	'nanotech/jellybeans.vim',
	'lifepillar/vim-solarized8',
	'EdenEast/nightfox.nvim',

	-- Telescope --
	{
		'nvim-telescope/telescope.nvim',
		dependencies = {'nvim-lua/plenary.nvim'}
	},

	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
	},

	-- Treesitter --
	{
		"nvim-treesitter/nvim-treesitter",
		branch = 'master',
		lazy = false,
		build = ":TSUpdate"
	},

	-- Icons --
	'ryanoasis/vim-devicons',

	-- LSP, Autocompletion --
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",

	'dmmulroy/tsc.nvim',
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/cmp-buffer',
	'hrsh7th/cmp-path',
	'hrsh7th/cmp-cmdline',
	'hrsh7th/nvim-cmp',
	'antonk52/cssmodules-language-server',
	'simrat39/rust-tools.nvim',

	{
		'stevearc/conform.nvim',
		opts = {},
	},

	{
		'nvim-flutter/flutter-tools.nvim',
		lazy = false,
		dependencies = {
				'nvim-lua/plenary.nvim',
				'stevearc/dressing.nvim',
		},
		config = true,
	},

	-- TS etc. --
	'maxmellon/vim-jsx-pretty',
	'leafgarland/typescript-vim',
	'peitalin/vim-jsx-typescript',
	'jose-elias-alvarez/null-ls.nvim',

	-- VimWiki --
	'vimwiki/vimwiki',
	'plasticboy/vim-markdown',

	-- Snippets --
	'honza/vim-snippets',

	-- Git --
	'tpope/vim-fugitive',

	-- Debugger --
	'puremourning/vimspector',

	-- Dot Net --
	'OmniSharp/omnisharp-vim',
	'nickspoons/vim-sharpenup',
	'sheerun/vim-polyglot',
}
