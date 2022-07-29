-- note taking and documentation

-- Markdown Preview
vim.cmd [[
    " MarkdownPreview configuration "
    let g:mkdp_theme = 'light'
    let g:mkdp_auto_start = 0
    let g:mkdp_page_title = 'MarkdownPreview of ${name}'
    " vim-markdown configuration "
    let g:vim_markdown_folding_disabled = 1
    let g:vim_markdown_frontmatter = 1
    let g:vim_markdown_strikethrough = 1
]]


local notes_group = vim.api.nvim_create_augroup("notes", { clear = true })
-- autocmd BufRead today.md !archive_dailynote.py
vim.api.nvim_create_autocmd("BufRead", {
    group = notes_group,
    pattern = "today.md",
    command = ":!archive_dailynote.py<CR>",
})
vim.api.nvim_create_autocmd("FileType", {
    group = notes_group,
    pattern = "markdown",
    command = "setlocal spell",
})

-- FIXME: only activate this on Markdown files
local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap
keymap("n", "<localleader>l", ":MarkdownPreview<CR>", opts)
keymap("n", "<localleader>p", ":term mdcat %<CR>", opts)
