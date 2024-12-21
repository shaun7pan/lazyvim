return {
  -- config colorscheme
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      transparent_background = true,
      dim_inactive = {
        enable = true,
      },
      color_overrides = {

        mocha = {
          text = "#9f9f9f",
        },
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
}
