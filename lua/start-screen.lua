vim.g.startify_custom_header = {
'',
'',
'                                       ██            ',
'                                      ░░             ',
'    ███████   █████   ██████  ██    ██ ██ ██████████ ',
'   ░░██░░░██ ██░░░██ ██░░░░██░██   ░██░██░░██░░██░░██',
'    ░██  ░██░███████░██   ░██░░██ ░██ ░██ ░██ ░██ ░██',
'    ░██  ░██░██░░░░ ░██   ░██ ░░████  ░██ ░██ ░██ ░██',
'    ███  ░██░░██████░░██████   ░░██   ░██ ███ ░██ ░██',
'   ░░░   ░░  ░░░░░░  ░░░░░░     ░░    ░░ ░░░  ░░  ░░ ',
'',
'',
}

vim.g.startify_session_dir = '~/.config/nvim/session'
vim.g.startify_session_autoload = 1

vim.g.startify_lists = {
  { type = 'dir', header = { '   Current Directory '..vim.fn.getcwd()..":" } },
  { type = 'files', header = {'   Recent Files'} },
  { type = 'sessions', header = {'   Sessions' } },
  { type = 'bookmarks', header = { '   Bookmarks' } }
}
