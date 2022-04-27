local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

require'nvim-tree'.setup()

keymap("n", "<leader>ee", ":NvimTreeToggle<CR>", opts)
