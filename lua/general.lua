----------------------------------------------------
------------------- Variables ----------------------
----------------------------------------------------

local opt = vim.opt -- global/buffer/windows-scoped options
local g = vim.g     -- global variables
local set_keymap = vim.api.nvim_set_keymap

----------------------------------------------------
-------------------- Options -----------------------
----------------------------------------------------

vim.o.guifont = "Consolas NF"

vim.cmd('colorscheme nightfox')
vim.cmd('set noshowmode')
vim.cmd('set nocompatible')
vim.cmd('syntax on')

-- Set space as leader key --
g.mapleader = " "

-- Auto-Reload File Changes --
opt.autoread = true

-- Keep cursor in center of screen --
opt.scrolloff = 20

-- Indenting --
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- New tabs go to right vertically, bottom horizontally --
opt.splitbelow = true
opt.splitright = true

-- Show relative line numbers --
opt.relativenumber = true
opt.nu = true

----------------------------------------------------
---------------------- Keys ------------------------
----------------------------------------------------
-- Exit terminal with escape --
set_keymap('t', '<ESC>', [[<C-\><C-n>]], { noremap = true })

-- Ctrl-B to Previous File in Buffer --
set_keymap('n', '<C-B>', [[:e#<CR>]], { noremap = true })

-- Buffers --
set_keymap('n', '<Leader>bd', ':bp|bd #<CR>', { noremap = false }) -- Delete buffer

-- Tabs --
set_keymap('n', '<Leader>tt', ':tabnew<CR>', { noremap = false })      -- New Tab
set_keymap('n', '<Leader>td', ':tabclose<CR>', { noremap = false })    -- Close tab
set_keymap('n', '<Leader>ts', ':tabs<CR>', { noremap = false })        -- Show tabs
set_keymap('n', '<Leader>th', ':tabmove -1<CR>', { noremap = false })  -- Move tab left
set_keymap('n', '<Leader>tl', ':tabmove +1<CR>', { noremap = false })  -- Move tab right
set_keymap('n', '<Leader>tn', ':tabnext<CR>', { noremap = false })     -- Next tab
set_keymap('n', '<Leader>tp', ':tabprevious<CR>', { noremap = false }) -- Previous tab

-- Obsidian --
set_keymap('n', '<Leader>w', ':Obsidian<CR>', { noremap = false })               -- Obsidian Leader Key
set_keymap('n', '<Leader>ww', ':Obsidian quick_switch<CR>', { noremap = false }) -- Quick Note

----------------------------------------------------
---------------------- Misc ------------------------
----------------------------------------------------

-- Vim-Snippets --
vim.cmd([[
  filetype plugin indent on
  let g:UltiSnipsExpandTrigger="<c-j>"
  let g:UltiSnipsJumpForwardTrigger="<c-b>"
  let g:UltiSnipsJumpBackwardTrigger="<c-z>"
]])

require('tsc').setup()
