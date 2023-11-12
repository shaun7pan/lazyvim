return {
  {
    "folke/tokyonight.nvim",
    -- Disable until highlight group issue with octo.nvim get fixed
    enable = false,
    opts = {
      style = "moon",
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
}
