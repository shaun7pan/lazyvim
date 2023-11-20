-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.cmd([[ hi NotifyBackground guibg = #000000 ]])

-- multi cursor alternative (visual highlight first, better than * cgn)

-- change the word, press `n` searching for the next, press `.` repeat.
vim.cmd([[nnoremap <leader>cw <cmd>let @/='\<'.expand('<cword>').'\>'<cr>"_ciw]])

-- virtual mode, select the change
vim.cmd([[xnoremap <leader>cw y<cmd>let @/=substitute(escape(@", '/'), '\n', '\\n', 'g')<cr>"_cgn]])
