return {
  {
    "folke/flash.nvim",
    keys = {
      {
        "g/",
        mode = { "n", "x" },
        function()
          require("flash").toggle(true)
          vim.api.nvim_feedkeys("/", "n", true)
        end,
        desc = "Start Flash Search",
      },
      {
        "/",
        mode = { "n", "x", "v" },
        function()
          require("flash").toggle(false)
          vim.api.nvim_feedkeys("/", "n", true)
        end,
        desc = "Normal search",
      },
    },
  },
}
