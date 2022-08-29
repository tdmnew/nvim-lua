local wk = require('whichkey_setup')
local opt = vim.opt
local set_keymap = vim.api.nvim_set_keymap

opt.timeoutlen = 50

local leader_keymap = {
    ["q"] = {
        name = "Buffers",
        [","] = "Previous Buffer",
        ["."] = "Next Buffer",
        ["d"] = "Delete Buffer"
    },
    ["\\"] = {
        name = "Vimspector",
    },
    ["f"] = {
        name = "Telescope",
        b = "Find Buffer",
        f = "Find File",
        g = "Grep",
        h = "Find Help",
        r = "Find References"
    },
    ["o"] = {
        name = "Org Mode",
        a = "Org Agenda",
        c = "Org Capture",
    },
    ["p"] = {
        name = "Prettier",
        r = "Run Prettier on current window"
    },
    ["w"] = {
        name = "VimWiki",
    },
}

local g_keymap = {
    ['?'] = "Org Mode (Help)",
    ['d'] = "Goto Definition",
}

wk.register_keymap('leader', leader_keymap)
wk.register_keymap('g', g_keymap)

wk.config{
    hide_statusline = false,
    default_keymap_settings = {
        silent=true,
        noremap=true,
    },
    default_mode = 'n',
}

