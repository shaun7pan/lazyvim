return {
  -- change some telescope options and a keymap to browse plugin files
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      -- { "nvim-telescope/telescope-file-browser.nvim" },
    },
    keys = {
      {
        "<leader><space>",
        function()
          require("telescope.builtin").live_grep({ cwd = false })
        end,
        desc = "Grep (cwd)",
      },
      {
        "<leader>s/",
        function()
          require("telescope.builtin").search_history()
        end,
        desc = "Search History",
      },
      -- add a keymap to browse plugin files
      -- stylua: ignore
      -- {
      --   "<leader>fp",
      --   function()
      --     require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
      --   end,
      --   desc = "Find Plugin File",
      -- },
    },
    -- change some options
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
        file_ignore_patterns = {
          ".*test%.yml",
          ".*test%.json",
          ".*test%.txt",
        },

        -- path_display = {
        --   shorten = {
        --     len = 1,
        --     exclude = { 1, -1 },
        --   },
        -- },
      },
      extensions = {
        -- file_browser = {
        --   theme = "ivy",
        --   grouped = true,
        --   respect_gitignore = false,
        -- },
      },
    },
    config = function(_, opts)
      local telescope = require("telescope")
      telescope.setup(opts)
      telescope.load_extension("fzf")
      -- telescope.load_extension("file_browser")
    end,
  },
}
