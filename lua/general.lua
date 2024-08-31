----------------------------------------------------
------------------- Variables ----------------------
----------------------------------------------------

local opt = vim.opt -- global/buffer/windows-scoped options
local g = vim.g -- global variables
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

-- Prettier --
set_keymap('n', '<leader>pr', [[:%!prettierd %<cr>]], { noremap = false })

-- Rustfmt --
set_keymap('n', '<leader>pt', [[:%!rustfmt<cr>]], { noremap = false })

-- Vimspector --
set_keymap('n', '<Leader>\\d', [[:call vimspector#Launch()<CR>]], { noremap = true })
set_keymap('n', '<Leader>\\e', [[:call vimspector#Reset()<CR>]], { noremap = true })
set_keymap('n', '<Leader>\\c', [[:call vimspector#Continue()<CR>]], { noremap = true })
set_keymap('n', '<Leader>\\t', [[:call vimspector#ToggleBreakpoint()<CR>]], { noremap = true })
set_keymap('n', '<Leader>\\T', [[:call vimspector#ClearBreakpoints()<CR>]], { noremap = true })

set_keymap('n', '<Leader>\\k', [[<Plug>VimspectorRestart]], { noremap = false })
set_keymap('n', '<Leader>\\h', [[<Plug>VimspectorStepOut]], { noremap = false })
set_keymap('n', '<Leader>\\l', [[<Plug>VimspectorStepInto]], { noremap = false })
set_keymap('n', '<Leader>\\j', [[<Plug>VimspectorStepOver]], { noremap = false })

-- Buffers --
set_keymap('n', '<Leader>bd', [[:bp|bd #<CR>]], { noremap = false }) -- Delete buffer

-- Tabs --
set_keymap('n', '<Leader>tt', [[:tabnew<CR>]], { noremap = false }) -- New tab
set_keymap('n', '<Leader>td', [[:tabclose<CR>]], { noremap = false }) -- Close tab
set_keymap('n', '<Leader>ts', [[:tabs<CR>]], { noremap = false }) -- Show tabs
set_keymap('n', '<Leader>th', [[:tabmove -1<CR>]], { noremap = false }) -- Move tab left
set_keymap('n', '<Leader>tl', [[:tabmove +1<CR>]], { noremap = false }) -- Move tab right
set_keymap('n', '<Leader>tn', [[:tabnext<CR>]], { noremap = false }) -- Next tab
set_keymap('n', '<Leader>tp', [[:tabprevious<CR>]], { noremap = false }) -- Previous tab
----------------------------------------------------
--------------------- VimWiki ----------------------
----------------------------------------------------

--- Extensions ---
vim.cmd([[
  let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
]])

--- Langs ---
vim.cmd([[
  let g:vim_markdown_fenced_languages = ['bash=sh', 'javascript', 'js=javascript', 'json=javascript', 'typescript', 'ts=typescript', 'php', 'html', 'css', 'rust', 'python']
]])

-- Unmap Tab --
vim.cmd([[
  au filetype vimwiki silent! iunmap <buffer> <Tab>
]])

----------------------------------------------------
---------------------- Misc ------------------------
----------------------------------------------------

-- Turn on OmniFunc/Autocomplete --
vim.cmd('filetype plugin on')
opt.omnifunc = 'syntaxcomplete#Complete'

-- Vim-Snippets --
vim.cmd([[
  filetype plugin indent on
  let g:UltiSnipsExpandTrigger="<c-j>"
  let g:UltiSnipsJumpForwardTrigger="<c-b>"
  let g:UltiSnipsJumpBackwardTrigger="<c-z>"
]])

require('tsc').setup()
