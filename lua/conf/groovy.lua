-- groovy configuration
local groovy_augroup = vim.api.nvim_create_augroup("groovy", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
    group = groovy_augroup,
    pattern = "groovy",
    command = ":setlocal tabstop=2",
})
vim.api.nvim_create_autocmd("FileType", {
    group = groovy_augroup,
    pattern = "groovy",
    command = ":setlocal shiftwidth=2",
})
