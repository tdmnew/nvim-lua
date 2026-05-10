----------------------------------------------------
-------------------- Options -----------------------
----------------------------------------------------
vim.o.guifont = "Consolas NF"
vim.cmd('colorscheme nightfox')
vim.cmd('set noshowmode')
vim.cmd('set nocompatible')
vim.cmd('syntax on')
-- Set space as leader key --
vim.g.mapleader = " "

-- LSP --
vim.cmd('set completeopt=menu,menuone,noselect')

-- Auto-Reload File Changes --
vim.opt.autoread = true

-- Keep cursor in center of screen --
vim.opt.scrolloff = 20

-- Indenting --
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

-- New tabs go to right vertically, bottom horizontally --
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Show relative line numbers --
vim.opt.relativenumber = true
vim.opt.nu = true

----------------------------------------------------
---------------------- Keys ------------------------
----------------------------------------------------
-- Exit terminal with escape --
vim.api.nvim_set_keymap('t', '<ESC>', [[<C-\><C-n>]], { noremap = true })

-- Tabs --
vim.api.nvim_set_keymap('n', '<Leader>tt', ':tabnew<CR>', { noremap = false })      -- New Tab
vim.api.nvim_set_keymap('n', '<Leader>td', ':tabclose<CR>', { noremap = false })    -- Close tab
vim.api.nvim_set_keymap('n', '<Leader>ts', ':tabs<CR>', { noremap = false })        -- Show tabs
vim.api.nvim_set_keymap('n', '<Leader>th', ':tabmove -1<CR>', { noremap = false })  -- Move tab left
vim.api.nvim_set_keymap('n', '<Leader>tl', ':tabmove +1<CR>', { noremap = false })  -- Move tab right
vim.api.nvim_set_keymap('n', '<Leader>tn', ':tabnext<CR>', { noremap = false })     -- Next tab
vim.api.nvim_set_keymap('n', '<Leader>tp', ':tabprevious<CR>', { noremap = false }) -- Previous tab

-- Obsidian --
vim.api.nvim_set_keymap('n', '<Leader>w', ':Obsidian<CR>', { noremap = false })               -- Obsidian Leader Key
vim.api.nvim_set_keymap('n', '<Leader>ww', ':Obsidian quick_switch<CR>', { noremap = false }) -- Quick Note

-- SnipRun --
vim.api.nvim_set_keymap('n', '<leader>r', ':SnipRun<CR>', { noremap = false })
vim.api.nvim_set_keymap('v', '<leader>r', ':SnipRun<CR>', { noremap = false })

-- LSP --
vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'ge', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })
----------------------------------------------------
--------------------- SnipRun ----------------------
----------------------------------------------------
require('sniprun').setup({
  interpreter_options = {
    CSharp_original = {
      compiler = "mcs",
      exec = "mono",
    },
    TypeScript_original = {
      interpreter = 'node'
    }
  }
})

----------------------------------------------------
--------------- TypeScript Compiler ----------------
----------------------------------------------------
require('tsc').setup()
