return {
  -- 'make it like an IDE' shit --
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

  {
    "romus204/tree-sitter-manager.nvim",
    dependencies = {}, -- tree-sitter CLI must be installed system-wide
    config = function()
      require("tree-sitter-manager").setup({
      })
    end
  },

  {
    "seblyng/roslyn.nvim",
    ---@module 'roslyn.config'
    ---@type RoslynNvimConfig
    opts = {
      -- your configuration comes here; leave empty for default settings
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
    dependencies = { { "nvim-tree/nvim-web-devicons", opts = {} } },
    lazy = false,
  },

  -- LSP, Autocompletion --
  "neovim/nvim-lspconfig",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  'dmmulroy/tsc.nvim',

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
  'maxmellon/vim-jsx-pretty',
  'leafgarland/typescript-vim',
  'peitalin/vim-jsx-typescript',

  -- Git --
  'tpope/vim-fugitive',
}
