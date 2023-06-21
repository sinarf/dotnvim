local python_group = vim.api.nvim_create_augroup("python", { clear = true })

vim.api.nvim_create_autocmd("BufEnter", {
    group = python_group,
    pattern = "*.py",
    command = "setlocal colorcolumn=89"
})

