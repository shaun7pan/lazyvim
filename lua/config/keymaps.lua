-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

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
map("n", "<leader>2", "<cmd>lua require('harpoon.ui').nav_file(2)<CR>", { desc = "harpoon select 2", silent = true })
map("n", "<leader>3", "<cmd>lua require('harpoon.ui').nav_file(3)<CR>", { desc = "harpoon select 3", silent = true })
map("n", "<C-p>", "<cmd>MarkdownPreviewToggle<CR>", { desc = "Markdown preview", silent = true })
map("i", "<C-h>", "<Left>", { desc = "move left", silent = true })
map("i", "<C-l>", "<Right>", { desc = "move right", silent = true })
map("i", "<C-j>", "<Down>", { desc = "move down", silent = true })
map("i", "<C-k>", "<Up>", { desc = "move up", silent = true })
map("x", "<leader>p", [["_dP]], { desc = "paste without yank", silent = true })
map("i", "jk", "<Esc>", { desc = "escape", silent = true })
map("n", "<leader>gd", "<cmd>Telescope git_bcommits<CR>", { desc = "buffer history diff", silent = true })
map("n", "<leader>bh", "<cmd>BufferLineCloseLeft<CR>", { desc = "Buffer Close Left", silent = true })
map("n", "<leader>bl", "<cmd>BufferLineCloseRight<CR>", { desc = "Buffer Close Right", silent = true })
map("n", "<leader>bs", "<cmd>BufferLineSortByDirectory<CR>", { desc = "Buffer Sort by Directory", silent = true })
--dir-telescope
map("n", "<leader>fd", "<cmd>FileInDirectory<CR>", { desc = "Find In Directory", silent = true })
