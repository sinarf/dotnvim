local lsp_group = vim.api.nvim_create_augroup("lsp", { clear = true })
vim.api.nvim_create_autocmd('User', {
    group = lsp_group,
    pattern = 'MasonUpdateAllComplete',
    callback = function()
        vim.notify('mason-update-all has finished')
    end,
})

local global_group = vim.api.nvim_create_augroup("global_autocmd", { clear = true })
-- Always checks if a file has been changed when entering a buffer.
vim.api.nvim_create_autocmd('BufEnter', {
    group = global_group,
    pattern = '*',
    command = "checktime",
})

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
    group = global_group,
    pattern = '*',
    callback = function()
        require("lint").try_lint()
    end,
})
