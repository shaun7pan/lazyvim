-- since this is just an example spec, don't actually load anything here and return an empty spec

return {
  {
    "pwntester/octo.nvim",
    lazy = false,
    config = function()
      require("octo").setup()
    end,
  },
}
