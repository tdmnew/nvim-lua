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

	{
		"obsidian-nvim/obsidian.nvim",
		version = "*", -- use latest release, remove to use latest commit
		---@module 'obsidian'
		---@type obsidian.config
		opts = {
			legacy_commands = false, -- this will be removed in the next major release
			workspaces = {
				{
					name = "wiki",
					path = "~/wiki",
				},
			},
		},
	},

	-- Telescope --
	{
		'nvim-telescope/telescope.nvim',
		dependencies = { 'nvim-lua/plenary.nvim' },
	},

	{
		'stevearc/oil.nvim',
		---@module 'oil'
		---@type oil.SetupOpts
		opts = {},
		dependencies = { { "nvim-mini/mini.icons", opts = {} } },
		-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
		lazy = false,
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

	-- Snippets --
	'honza/vim-snippets',

	-- Git --
	'tpope/vim-fugitive',
}
