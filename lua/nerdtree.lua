local opts_noremap = { noremap = true }
local set_keymap = vim.api.nvim_set_keymap

-- CD into bookmark automatically --
vim.cmd('let NERDTreeChDirMode = 2')

-- Show hidden files --
vim.cmd('let NERDTreeShowHidden = 1')

set_keymap('n', '<C-o>', [[:NERDTreeToggle<CR>]], { noremap = false })
set_keymap('n', '<C-J>', [[<C-W><C-J>]], opts_noremap)
set_keymap('n', '<C-K>', [[<C-W><C-K>]], opts_noremap)
set_keymap('n', '<C-L>', [[<C-W><C-L>]], opts_noremap)
set_keymap('n', '<C-H>', [[<C-W><C-H>]], opts_noremap)
set_keymap('i', '<silent><expr> <TAB>', [[pumvisible() ? "\<C-n>" : check_back_space() ? "\<TAB>" : coc#refresh()]], opts_noremap)
set_keymap('i', '<expr><S-TAB>', [[ pumvisible() ? "\<C-p>" : "\<C-h>"]], opts_noremap)
