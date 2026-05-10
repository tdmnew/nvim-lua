return {
  'nvim-tree/nvim-web-devicons',
  'nvim-lualine/lualine.nvim',

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
    version = "*",
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

  {
    "romus204/tree-sitter-manager.nvim",
    dependencies = {},
  },

  ------- Use again when it works with blazor/cshtml --------
  -- {
  --   "seblyng/roslyn.nvim",
  --   ---@module 'roslyn.config'
  --   ---@type RoslynNvimConfig
  --   -- commit = "74e6c6a1a8ee139a31c60170ff23d0a44e5f1157",
  --   opts = {
  --   },
  --   lazy = false,
  -- },

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
    dependencies = { { "nvim-tree/nvim-web-devicons", opts = {} } },
    lazy = false,
  },

  -- LSP, Autocompletion --
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
  },

  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
    }
  },

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
  'leafgarland/typescript-vim',
  'peitalin/vim-jsx-typescript',
  'dmmulroy/tsc.nvim',
  'maxmellon/vim-jsx-pretty',

  -- Git --
  'tpope/vim-fugitive',

  -- Live code execution! --
  { "michaelb/sniprun", build = "sh install.sh" }
}
