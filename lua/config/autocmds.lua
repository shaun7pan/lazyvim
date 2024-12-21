-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
--

-- change the word, press `n` searching for the next, press `.` repeat.
-- vim.cmd([[nnoremap <leader>cw <cmd>let @/='\<'.expand('<cword>').'\>'<cr>"_ciw]])

-- virtual mode, select the change
-- vim.cmd([[xnoremap <leader>cw y<cmd>let @/=substitute(escape(@", '/'), '\n', '\\n', 'g')<cr>"_cgn]])
