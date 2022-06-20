-- fugitive plugin configuration

local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

keymap("n", "<leader>gg", ":Git<CR>", opts)


local fugitive_group = vim.api.nvim_create_augroup("shell", { clear = true })

-- perform a git fetch when using fugitive
vim.api.nvim_create_autocmd(
    "FileType", {
        group = fugitive_group,
        pattern = "fugitive",
        command = ":Git fetch",
})
