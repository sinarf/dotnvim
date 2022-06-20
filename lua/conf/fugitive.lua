-- fugitive plugin configuration

local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

keymap("n", "<leader>gg", ":Git<CR>", opts)
keymap("n", "<leader>gf", ":Git fetch<CR>", opts)
keymap("n", "<leader>gst", ":Git stash<CR>", opts)
keymap("n", "<leader>gsp", ":Git stash pop<CR>", opts)
