-- since this is just an example spec, don't actually load anything here and return an empty spec

return {
  {
    "levouh/tint.nvim",
    lazy = false,
    enable = false,
    config = function()
      require("tint").setup()
    end,
  },
}
