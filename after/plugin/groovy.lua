-- groovy configuration
local groovy_augroup = vim.api.nvim_create_augroup("groovy", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
    group = groovy_augroup,
    pattern = { "Jenkinsfile", "groovy" },
    command = ":setlocal tabstop=2",
})
vim.api.nvim_create_autocmd("FileType", {
    group = groovy_augroup,
    pattern = { "Jenkinsfile", "groovy" },
    command = ":setlocal shiftwidth=2",
})

vim.api.nvim_create_autocmd("BufEnter", {
    group = groovy_augroup,
    pattern = "*_ci/*.groovy",
    command = ":set filetype=Jenkinsfile",
})

vim.api.nvim_create_autocmd("FileType", {
    group = groovy_augroup,
    pattern = { "Jenkinsfile", "groovy" },
    callback = function()
        vim.keymap.set("n", "<localleader>lf", ":!format_idea.sh %<CR>", { noremap = true, silent = true })
    end,
})
