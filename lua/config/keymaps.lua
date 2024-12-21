-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- accelerated-jk.nvim
vim.keymap.set("n", "j", "<Plug>(accelerated_jk_gj)", {})
vim.keymap.set("n", "k", "<Plug>(accelerated_jk_gk)", {})

-- quit
vim.keymap.set("n", "<C-q>", ":q<CR>", { silent = true })

-- tmux navigation
vim.keymap.set("n", "<C-j>", ":<C-U>TmuxNavigateDown<cr>", { silent = true })
vim.keymap.set("n", "<C-k>", ":<C-U>TmuxNavigateUp<cr>", { silent = true })
vim.keymap.set("n", "<C-h>", ":<C-U>TmuxNavigateLeft<cr>", { silent = true })
vim.keymap.set("n", "<C-l>", ":<C-U>TmuxNavigateRight<cr>", { silent = true })

-- insert mode move
vim.keymap.set("i", "<C-h>", "<Left>", { desc = "move left", silent = true })
vim.keymap.set("i", "<C-l>", "<Right>", { desc = "move right", silent = true })
vim.keymap.set("i", "<C-j>", "<Down>", { desc = "move down", silent = true })
vim.keymap.set("i", "<C-k>", "<Up>", { desc = "move up", silent = true })

-- paste without yank
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "paste without yank", silent = true })
vim.keymap.set(
  "n",
  "<leader>bs",
  "<cmd>BufferLineSortByDirectory<CR>",
  { desc = "Buffer Sort by Directory", silent = true }
)

-- buffer close
-- vim.keymap.set("n", "<leader>bh", "<cmd>BufferLineCloseLeft<CR>", { desc = "Buffer Close Left", silent = true })
-- vim.keymap.set("n", "<leader>bl", "<cmd>BufferLineCloseRight<CR>", { desc = "Buffer Close Right", silent = true })
--
-- better escape
-- vim.keymap.set("i", "jk", "<Esc>", { desc = "escape", silent = true })

-- vim.keymap.set("n", "<leader>uo", ":TransparentToggle<CR>", { desc = "Enable", silent = true })
vim.keymap.set("n", "<leader>cj", ":%!yq -p yaml -o json<CR>", { desc = "Convert YAML to JSON", silent = true })
vim.keymap.set("i", "<S-CR>", "<Esc>o", { desc = "Insert new line", silent = true })

-- floating terminal
local lazyterm = function()
  Snacks.terminal({ "bash", "-l" }, { cwd = LazyVim.root(), ctrl_hjkl = false })
end
vim.keymap.set("n", "<leader>ft", lazyterm, { desc = "Terminal (Root Dir)" })
vim.keymap.set("n", "<leader>fT", function()
  Snacks.terminal()
end, { desc = "Terminal (cwd)" })
vim.keymap.set("n", "<c-/>", lazyterm, { desc = "Terminal (Root Dir)" })
vim.keymap.set("n", "<c-_>", lazyterm, { desc = "which_key_ignore" })
