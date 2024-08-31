-----------------------------------------------------------
----------------- LSP and AutoCompletion ------------------
-----------------------------------------------------------

vim.cmd('set completeopt=menu,menuone,noselect')
local cmp = require'cmp'

cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["UltiSnips#Anon"](args.body)
    end,
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = false }),
--    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
--    ["<Tab>"] = cmp.mapping.select_next_item(),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'ultisnips' },
    { name = 'orgmode' },
  }, {
    { name = 'buffer' },
  })
})

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
  sources = cmp.config.sources({
    { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
  }, {
    { name = 'buffer' },
  })
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})

local opts = { noremap=true, silent=true }
vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
vim.api.nvim_set_keymap('n', 'ge', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)

-- LSP

require("mason").setup()
require("mason-lspconfig").setup({
 ensure_installed = {
  "astro",
  "tsserver",
  "html",
  "cssls",
  "tailwindcss",
  "lua_ls",
 },
 automatic_installation = true,
})
require('mason-lspconfig').setup_handlers {
  function(server_name)
    require('lspconfig')[server_name].setup {
      on_attach = on_attach,
    }
  end,
  ['astro'] = function()
    require('lspconfig').astro.setup {
      on_attach = on_attach,
      filetypes = { "astro" },
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
------------------------------------------------------------
----- When the filetype isn't recognized automatically -----
------------------------------------------------------------

vim.cmd [[
  autocmd BufRead,BufNewFile *.astro set filetype=astro
]]

-- Treesitter

local treesitter = require'nvim-treesitter.configs'

treesitter.setup {
  auto_install = true,
  ensure_installed = { "astro" }, -- Install the Astro parser
  highlight = {
    enable = true,              -- Enable syntax highlighting
    additional_vim_regex_highlighting = false,
  },
}
