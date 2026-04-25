require('which-key').add({
  -- Quick Commands --
  { "<leader>d",  group = "Quick Commands" },
  -- Telescope --
  { "<leader>f",  group = "Telescope" },
  { "<leader>fG", desc = "Git Status" },
  { "<leader>fb", desc = "Find Buffer" },
  { "<leader>ff", desc = "Find File" },
  { "<leader>fg", desc = "Grep" },
  { "<leader>fh", desc = "Find Help" },
  { "<leader>fl", desc = "Resume last search" },
  { "<leader>fn", desc = "File Browser" },
  { "<leader>fr", desc = "Find References" },
  -- Tabs --
  { "<leader>t",  group = "Tabs" },
  { "<leader>td", desc = "Close Tab" },
  { "<leader>th", desc = "Move tab left" },
  { "<leader>tl", desc = "Move tab right" },
  { "<leader>tn", desc = "Next Tab" },
  { "<leader>tp", desc = "Previous Tab" },
  { "<leader>ts", desc = "Show Tabs" },
  { "<leader>tt", desc = "New Tab" },
})
