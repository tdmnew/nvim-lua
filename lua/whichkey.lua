local wk = require('which-key')

local leader_keymap = {
    ["<leader>b"] = {
        name = "Buffers",
        d = "Delete Buffer",
    },
    ["<leader>f"] = {
        name = "Telescope",
        b = "Find Buffer",
        f = "Find File",
        g = "Grep",
        G = "Git Status",
        h = "Find Help",
        l = "Resume last search",
        r = "Find References",
        n = "File Browser",
    },
    ["g"] = {
        d = "Goto Definition",
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
    ["<leader>p"] = {
        name = "Prettier",
        r = "Run Prettier on current window",
        t = "Run Rustfmt on current directory"
    },
    ["<leader>t"] = {
        name = "Tabs",
        t = "New Tab",
        d = "Close Tab",
        s = "Show Tabs",
        h = "Move tab left",
        l = "Move tab right",
        n = "Next Tab",
        p = "Previous Tab",
    },
}

wk.register(leader_keymap)
