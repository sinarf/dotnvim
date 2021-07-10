local map = vim.api.nvim_set_keymap

-- sets the leader key 
map('n', '<Space>', '', {})
vim.g.mapleader = ' '

options = { noremap = true }
map('n', '<leader>n', ':bnext<cr>', options)
map('n', '<leader>p', ':bprev<cr>', options)

-- Telescope
map('n', '<leader>ff', ':Telescope find_files<cr>', options)
map('n', '<leader>fg', ':Telescope live_grep<cr>', options)
map('n', '<leader>fb', ':Telescope buffers<cr>', options)
map('n', '<leader>fh', ':Telescope help_tags<cr>', options)

-- open fugitive window
map('n', '<leader>g', ':Git<cr>', options)

