local wk = require('which-key')

local leader_keymap = {
    ["<leader>f"] = {
        name = "Telescope",
        b = "Find Buffer",
        f = "Find File",
        g = "Grep",
        h = "Find Help",
        r = "Find References"
    },
    ["<leader>\\"] = {
        name = "Vimspector",
    },
    ["<leader>q"] = {
        name = "Buffers",
        [","] = "Previous Buffer",
        ["."] = "Next Buffer",
        ["d"] = "Delete Buffer"
    },
    ["<leader>o"] = {
        name = "Org Mode",
        a = "Org Agenda",
        c = "Org Capture",
    },
    ["<leader>p"] = {
        name = "Prettier",
        r = "Run Prettier on current window"
    }
}

wk.register(leader_keymap)
