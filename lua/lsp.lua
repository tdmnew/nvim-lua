--------------------------------
------------ LSP ---------------
--------------------------------
require("mason").setup({
  registries = {
    'github:Crashdummyy/mason-registry',
    'github:mason-org/mason-registry',
  }
})
require("mason-lspconfig").setup({
  ensure_installed = { "html", "cssls", "css_variables", "ts_ls", "lua_ls", "rust_analyzer" }
})

vim.lsp.enable('roslyn_ls')

vim.lsp.config('lua_ls', {
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
      },
      diagnostics = {
        globals = { "vim" }
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("lua", true),
      },
    }
  }
})

vim.lsp.config('rust_analyzer', {
  settings = {
    imports = {
      granularity = {
        group = "module",
      },
      prefix = "self",
    },
    assist = {
      importEnforceGranularity = true,
      importPrefix = "crate"
    },
    cargo = {
      allFeatures = true
    },
    checkOnSave = {
      command = "clippy"
    },
    inlayHints = {
      lifetimeElisionHints = {
        enable = true,
        useParameterNames = true
      }
    }
  }
})

--------------------------------
--------- Treesitter -----------
--------------------------------
require("tree-sitter-manager").setup({
  ensure_installed = {
    "c",
    "c_sharp",
    "css",
    "ecma",
    "html",
    "html_tags",
    "lua",
    "markdown",
    "razor",
    "tsx",
    "typescript",
  },
  languages = {
    razor = {
      install_info = {
        url = "https://github.com/tris203/tree-sitter-razor",
        use_repo_queries = true,
      },
    },
  }
})

--------------------------------
--- Formatters/Prettier etc. ---
--------------------------------
require("conform").setup({
  format_on_save = {
    timeout_ms = 1000,
    lsp_format = "fallback",
  },
  formatters_by_ft = {
    cs = { "csharpier" },
    lua = { "stylua" },
    python = { "isort", "black" },
    rust = { "rustfmt", lsp_format = "fallback" },
    javascript = { "prettierd", "prettier", stop_after_first = true },
    typescript = { "prettierd", "prettier", stop_after_first = true },
    dart = { "dart_format", async = true }
  },
})

--------------------------------
------- Code Completion --------
--------------------------------
require("cmp").setup({
  mapping = require("cmp").mapping.preset.insert({
    ["<C-Space>"] = require("cmp").mapping.complete(),
    ["<CR>"] = require("cmp").mapping.confirm({ select = true }),
  }),
  sources = {
    { name = "nvim_lsp" },
  },
})
