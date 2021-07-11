local map = vim.api.nvim_set_keymap

-- map the leader key
map('n', '<Space>', '', {})
vim.g.mapleader = ' '  -- 'vim.g' sets global variables

Options = { noremap = true }

-- mouvements
map('n', '<leader>n', ':bnext<cr>', Options)
map('n', '<leader>p', ':bprev<cr>', Options)
map('n', '<leader>h', '<C-W><C-H>', Options)
map('n', '<leader>j', '<C-W><C-J>', Options)
map('n', '<leader>k', '<C-W><C-K>', Options)
map('n', '<leader>l', '<C-W><C-L>', Options)


-- telescope mapping
map('n', '<leader>ft', ':Telescope<CR>', Options)
map('n', '<leader>ff', ':Telescope find_files<CR>', Options)
map('n', '<leader>fb', ':Telescope buffers<CR>', Options)
map('n', '<leader>fh', ':Telescope help_tags<CR>', Options)
-- edit nvim configuration
-- TODO instead of openning te root config file it would be nice to run telescope on the config directory
map('n', '<leader>ev', ':e $MYVIMRC<CR>', Options)

-- fugitive
map('n', '<leader>gg', ':Git<CR>', Options)

-- Toggle file explorer
map('n', '<leader>ee', ':NvimTreeToggle<CR>', Options)

