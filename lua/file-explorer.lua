require("oil").setup({
  default_file_explorer = true,
  float = {
    padding = 2,
    border = "rounded",
  },
  keymaps = {
    ["<C-p>"] = false, -- Disable Preview
    ["<C-c>"] = false,
    ["q"] = { "actions.close", mode = "n" },
    ["<BS>"] = { "actions.parent", desc = "Navigate to parent path" },
  },
})

vim.keymap.set("n", "<leader>fn", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })
