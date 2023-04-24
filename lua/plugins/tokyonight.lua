return {
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "moon",
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
      require("notify").setup({
        background_colour = "#000000",
      }),
    },
  },
}
