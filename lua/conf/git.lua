-- fugitive plugin configuration

-- git signs
require('gitsigns').setup()

local git_group = vim.api.nvim_create_augroup("git", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
    group = git_group,
    pattern = "gitcommit",
    command = "setlocal spell",
})
