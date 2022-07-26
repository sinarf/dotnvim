-- fugitive plugin configuration

local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

keymap("n", "<leader>gg", ":Git<CR>", opts)
keymap("n", "<leader>gf", ":Git fetch<CR>", opts)
keymap("n", "<leader>gst", ":Git stash<CR>", opts)
keymap("n", "<leader>gsp", ":Git stash pop<CR>", opts)
keymap("n", "<leader>gl", ":Git log<CR>", opts)

-- git signs
require('gitsigns').setup()

local git_group = vim.api.nvim_create_augroup("git", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
    group = git_group,
    pattern = "gitcommit",
    command = "setlocal spell",
})
