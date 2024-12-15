return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      win = {
        border = "rounded",
      },
      dashboard = {
        enable = true,
      },
    },
  },
}
