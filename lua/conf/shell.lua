-- shell configuration
--
local shell_group = vim.api.nvim_create_augroup("shell", { clear = true })

vim.api.nvim_create_autocmd("BufWritePost", {
    group = shell_group,
    pattern = "*.sh",
    command = ":ShellCheck! -x",
})
vim.api.nvim_create_autocmd("FileType", {
    group = shell_group,
    pattern = "sh",
    command = ":setlocal tabstop=2",
})
vim.api.nvim_create_autocmd("FileType", {
    group = shell_group,
    pattern = "sh",
    command = ":setlocal shiftwidth=2",
})
