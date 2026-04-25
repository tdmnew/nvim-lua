--------------------------------
--- Formatters/Prettier etc. ---
--------------------------------
require("conform").setup({
  format_on_save = {
    timeout_ms = 1000,
    lsp_format = "fallback",
  },
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "isort", "black" },
    rust = { "rustfmt", lsp_format = "fallback" },
    javascript = { "prettierd", "prettier", stop_after_first = true },
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

--------------------------------
------------ LSP ---------------
--------------------------------
vim.cmd('set completeopt=menu,menuone,noselect')

local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
vim.api.nvim_set_keymap('n', 'ge', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)

require("mason").setup()
require("mason-lspconfig").setup({
  automatic_installation = true,
})
require('mason-lspconfig').setup {
  function(server_name)
    require('lspconfig')[server_name].setup {
      on_attach = on_attach,
    }
  end,
  ['lua_ls'] = function()
    require('lspconfig').lua_ls.setup {
      on_attach = on_attach,
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim", "on_attach", }
          }
        }
      }
    }
  end,
  ['rust_analyzer'] = function()
    require('lspconfig').rust_analyzer.setup {
      settings = {
        ['rust_analyzer'] = {
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
            -- default: `cargo check`
            command = "clippy"
          },
          inlayHints = {
            lifetimeElisionHints = {
              enable = true,
              useParameterNames = true
            }
          }
        }
      }
    }
  end,
}
