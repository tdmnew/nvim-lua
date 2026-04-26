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

-- SnipRun --
set_keymap('n', '<leader>r', ':SnipRun<CR>', { noremap = false })
set_keymap('v', '<leader>r', ':SnipRun<CR>', { noremap = false })

----------------------------------------------------
------------------ Quick Commands ------------------
----------------------------------------------------
vim.keymap.set("n", "<leader>d", function()
  local cmds = {
    { name = "Edit Vim Files", location = "~/.config/nvim/lua", hasArgs = false }
  }

  -- Map commands based on filetype --
  if vim.bo.filetype == "cs" then
    for _, v in ipairs({
      { name = ".NET Build & Run",        cmd = "dotnet build && dotnet run", hasArgs = false, },
      { name = "Create MonoGame Lib",     cmd = "dotnet new mglib -n ",       hasArgs = true },
      { name = "Create MonoGame Project", cmd = "dotnet new mgdesktopgl -n ", hasArgs = true },
    })
    do
      table.insert(cmds, v)
    end
  end

  local function run_terminal_command(args)
    vim.cmd("belowright 10split | terminal " .. args)
    vim.cmd("startinsert")
  end

  vim.ui.select(cmds, {
    prompt = "Select Command: ",
    format_item = function(item)
      return item.name
    end,
  }, function(choice)
    if choice and choice.cmd then
      if choice.hasArgs then
        vim.ui.input({ prompt = 'Name: ' },
          function(input)
            if input == nil then
              return
            end

            run_terminal_command(choice.cmd .. tostring(input))
          end)
      else
        run_terminal_command(choice.cmd)
      end
    elseif choice and choice.location then
      vim.cmd(":edit" .. choice.location)
    end
  end)
end)

----------------------------------------------------
--------------- TypeScript Compiler ----------------
----------------------------------------------------
require('tsc').setup()

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
