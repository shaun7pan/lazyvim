-- since this is just an example spec, don't actually load anything here and return an empty spec

return {
  -- add any tools you want to have installed below
  {
    "ThePrimeagen/harpoon",
    keys = {
      {
        "<C-e>",
        function()
          require("harpoon.ui").toggle_quick_menu()
        end,
        desc = "Harpoon",
      },
    },
  },
}
