-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local Util = require("lazyvim.util")

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

--accelerated-jk.nvim
map("n", "j", "<Plug>(accelerated_jk_gj)", {})
map("n", "k", "<Plug>(accelerated_jk_gk)", {})
map("n", "<C-q>", ":q<CR>", { silent = true })
map("n", "<C-j>", ":<C-U>TmuxNavigateDown<cr>", { silent = true })
map("n", "<C-k>", ":<C-U>TmuxNavigateUp<cr>", { silent = true })
map("n", "<C-h>", ":<C-U>TmuxNavigateLeft<cr>", { silent = true })
map("n", "<C-l>", ":<C-U>TmuxNavigateRight<cr>", { silent = true })
map("n", "<leader>ad", "<cmd>lua require('harpoon.mark').add_file()<CR>", { silent = true })
map("n", "<C-e>", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", { silent = true })
map("n", "<leader>1", "<cmd>lua require('harpoon.ui').nav_file(1)<CR>", { desc = "harpoon select 1", silent = true })
