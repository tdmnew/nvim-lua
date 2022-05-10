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
vim.cmd([[ nnoremap <SPACE> <Nop> ]])
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

----------------------------------------------------
---------------------- Keys ------------------------
----------------------------------------------------

-- Exit terminal with escape --
set_keymap('t', '<ESC>', [[<C-\><C-n>]], { noremap = true })

-- Remap Copy to Clipboard --
set_keymap('v', '<leader>x', [["+x]], { noremap = true })
set_keymap('v', '<leader>c', [["+y]], { noremap = true })
set_keymap('v', '<leader>q', [["+P]], { noremap = true })

-- Ctrl-B to Previous File in Buffer --
set_keymap('n', '<C-B>', [[:e#<CR>]], { noremap = true })

-- Bind Ctrl-T to new tab --
set_keymap('n', '<C-t>', [[:tabnew<Space><CR>]], { noremap = true })
set_keymap('n', '<C-t>', [[<Esc>:tabnew<Space><CR>]], { noremap = true })

-- Prettier --
set_keymap('n', '<leader>pr', [[<Plug>(Prettier)]], { noremap = false })

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

----------------------------------------------------
---------------------- Misc ------------------------
----------------------------------------------------

-- Turn on OmniFunc/Autocomplete --
vim.cmd('filetype plugin on')
opt.omnifunc = 'syntaxcomplete#Complete'

-- VimWiki & Markdown ---
vim.cmd([[
  let g:vimwiki_list = [{'path': '~/vimwiki/',
                        \ 'syntax': 'markdown', 'ext': '.md'}]

  let g:vim_markdown_fenced_languages = ['bash=sh', 'javascript', 'js=javascript', 'json=javascript', 'typescript', 'ts=typescript', 'php', 'html', 'css', 'rust', 'python']
]])

-- Vim-Snippets --
vim.cmd([[
  filetype plugin indent on
  let g:UltiSnipsExpandTrigger="<c-j>"
  let g:UltiSnipsJumpForwardTrigger="<c-b>"
  let g:UltiSnipsJumpBackwardTrigger="<c-z>"
]])

