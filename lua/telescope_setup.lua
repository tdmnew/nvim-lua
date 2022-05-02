local opts = { noremap=true, silent=true }
local set_keymap = vim.api.nvim_set_keymap

require('telescope').setup{
  defaults = {
    file_ignore_patterns = {
      "dist/.*",
      "%.git/.*",
      "%.vim/.*",
      "node_modules/.*",
      "%.idea/.*",
      "%.vscode/.*",
      "%.history/.*",
      "~/.config/nvim/pack/.*"
    },
  },
}

set_keymap('n', '<leader>ff', [[<Cmd>lua require'telescope.builtin'.find_files{}<CR>]], opts)
set_keymap('n', '<leader>fg', [[<Cmd>lua require'telescope.builtin'.live_grep{}<CR>]], opts)
set_keymap('n', '<leader>fb', [[<Cmd>lua require'telescope.builtin'.buffers{}<CR>]], opts)
set_keymap('n', '<leader>fh', [[<Cmd>lua require'telescope.builtin'.help_tags{}<CR>]], opts)
