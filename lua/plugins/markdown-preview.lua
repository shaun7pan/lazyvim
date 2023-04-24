return {
  {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    event = "BufRead",
    config = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
}
