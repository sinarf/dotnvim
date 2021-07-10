local map = vim.api.nvim_set_keymap

-- map the leader key
map('n', '<Space>', '', {})
vim.g.mapleader = ' '  -- 'vim.g' sets global variables

options = { noremap = true }

-- mouvment 
map('n', '<leader>n', ':bnext<cr>', options)
map('n', '<leader>p', ':bprev<cr>', options)
map('n', '<leader>h', '<C-W><C-H>', options)
map('n', '<leader>j', '<C-W><C-J>', options)
map('n', '<leader>k', '<C-W><C-K>', options)
map('n', '<leader>l', '<C-W><C-L>', options)

-- telescope mapping
map('n', '<leader>ft', ':Telescope<CR>', options)
map('n', '<leader>ff', ':Telescope find_files<CR>', options)
map('n', '<leader>fb', ':Telescope buffers<CR>', options)
map('n', '<leader>fh', ':Telescope help_tags<CR>', options)

-- fugitive
map('n', '<leader>gg', ':Git<CR>', options)

-- Toggle file explorer
map('n', '<leader>e', ':NvimTreeToggle<CR>', options)

