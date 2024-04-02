-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

-- local function map(mode, lhs, rhs, opts)
--   local keys = require("lazy.core.handler").handlers.keys
--   ---@cast keys LazyKeysHandler
--   -- do not create the keymap if a lazy keys handler exists
--   if not keys.active[keys.parse({ lhs, mode = mode }).id] then
--     opts = opts or {}
--     opts.silent = opts.silent ~= false
--     vim.keymap.set(mode, lhs, rhs, opts)
--   end
-- end

--accelerated-jk.nvim
vim.keymap.set("n", "j", "<Plug>(accelerated_jk_gj)", {})
vim.keymap.set("n", "k", "<Plug>(accelerated_jk_gk)", {})
vim.keymap.set("n", "<C-q>", ":q<CR>", { silent = true })
vim.keymap.set("n", "<C-j>", ":<C-U>TmuxNavigateDown<cr>", { silent = true })
vim.keymap.set("n", "<C-k>", ":<C-U>TmuxNavigateUp<cr>", { silent = true })
vim.keymap.set("n", "<C-h>", ":<C-U>TmuxNavigateLeft<cr>", { silent = true })
vim.keymap.set("n", "<C-l>", ":<C-U>TmuxNavigateRight<cr>", { silent = true })
vim.keymap.set("n", "<leader>ad", "<cmd>lua require('harpoon.mark').add_file()<CR>", { silent = true })
vim.keymap.set("n", "<C-e>", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", { silent = true })
vim.keymap.set(
  "n",
  "<leader>1",
  "<cmd>lua require('harpoon.ui').nav_file(1)<CR>",
  { desc = "harpoon select 1", silent = true }
)
vim.keymap.set(
  "n",
  "<leader>2",
  "<cmd>lua require('harpoon.ui').nav_file(2)<CR>",
  { desc = "harpoon select 2", silent = true }
)
vim.keymap.set(
  "n",
  "<leader>3",
  "<cmd>lua require('harpoon.ui').nav_file(3)<CR>",
  { desc = "harpoon select 3", silent = true }
)
-- vim.keymap.set("n", "<C-p>", "<cmd>MarkdownPreviewToggle<CR>", { desc = "Markdown preview", silent = true })
vim.keymap.set("i", "<C-h>", "<Left>", { desc = "move left", silent = true })
vim.keymap.set("i", "<C-l>", "<Right>", { desc = "move right", silent = true })
vim.keymap.set("i", "<C-j>", "<Down>", { desc = "move down", silent = true })
vim.keymap.set("i", "<C-k>", "<Up>", { desc = "move up", silent = true })
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "paste without yank", silent = true })
vim.keymap.set("i", "jk", "<Esc>", { desc = "escape", silent = true })
vim.keymap.set("n", "<leader>gd", "<cmd>Telescope git_bcommits<CR>", { desc = "buffer history diff", silent = true })
vim.keymap.set("n", "<leader>bh", "<cmd>BufferLineCloseLeft<CR>", { desc = "Buffer Close Left", silent = true })
vim.keymap.set("n", "<leader>bl", "<cmd>BufferLineCloseRight<CR>", { desc = "Buffer Close Right", silent = true })
vim.keymap.set(
  "n",
  "<leader>bs",
  "<cmd>BufferLineSortByDirectory<CR>",
  { desc = "Buffer Sort by Directory", silent = true }
)
--Telescope-file-browser
-- map("n", "<leader>T", "<cmd>Telescope file_browser<CR>", { desc = "Telescope File Browser", silent = true })
-- map(
--   "n",
--   "<leader>t",
--   "<cmd>Telescope file_browser path=%:p:h select_buffer=true<CR>",
--   { desc = "Telescope File Browser", silent = true }
-- )
-- map("n", "<leader>ua", "<cmd>lua require('notify').dismiss()<CR>", { desc = "Abort all notifications", silent = true })

vim.keymap.set("n", "<leader>uo", ":TransparentToggle<CR>", { desc = "Enable", silent = true })
vim.keymap.set("n", "<leader>cj", ":%!yq -p yaml -o json<CR>", { desc = "Convert YAML to JSON", silent = true })
vim.keymap.set("i", "<S-CR>", "<Esc>o", { desc = "Insert new line", silent = true })

local Util = require("lazyvim.util")
-- vim.keymap.del("n", "<c-_>")
-- also works for <c-7>
vim.keymap.set("n", "<c-_>", function()
  Util.terminal.open({ "bash", "-l" }, { cwd = Util.root.get(), border = "single" })
end, { desc = "Terminal (root dir)" })
--
-- vim.keymap.set("t", "<c-cr>", function()
--   Util.terminal.open({ "bash", "-l" }, { cwd = Util.root.get(), border = "single" })
-- end, { desc = "Terminal (root dir)" })
-- vim.keymap.set("n", "<leader>fT", function()
--   Util.terminal.open({ "bash", "-l" })
-- end, { desc = "Terminal (cwd)" })
--
-- Example of delete keymap
--vim.keymap.del("n", "<leader>ft")
vim.keymap.del("t", "<c-h>")
vim.keymap.del("t", "<c-j>")
vim.keymap.del("t", "<c-k>")
vim.keymap.del("t", "<c-l>")
