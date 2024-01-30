
local format_group = vim.api.nvim_create_augroup("format", { clear = true })


vim.api.nvim_create_autocmd("FileType", {
    group = format_group,
    pattern = { "sh" },
    callback = function()
        vim.keymap.set("n", "<localleader>lf", "<cmd>!shfmt -w %<cr>", { noremap = true, silent = true })
    end,
})

vim.api.nvim_create_autocmd("FileType", {
    group = format_group,
    pattern = { "Jenkinsfile", "groovy" },
    callback = function()
        vim.keymap.set("n", "<localleader>lf", ":!format_idea.sh %<CR>", { noremap = true, silent = true })
    end,
})
