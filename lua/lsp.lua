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


-- LSP

require("mason").setup()
require("mason-lspconfig").setup {}

local lsp = require 'lspconfig'

lsp.vimls.setup {}
lsp.tsserver.setup {}
lsp.csharp_ls.setup {}
lsp.nimls.setup {}
lsp.svelte.setup {}
lsp.rust_analyzer.setup {
  settings = {
    ['rust-analyzer'] = {
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

local opts = { noremap=true, silent=true }
vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
vim.api.nvim_set_keymap('n', 'ge', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
