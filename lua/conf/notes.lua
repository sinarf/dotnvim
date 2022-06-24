-- note taking and documentation

-- Markdown Preview
vim.cmd [[
    let g:mkdp_theme = 'light'
    let g:mkdp_auto_start = 0
    let g:mkdp_page_title = 'MarkdownPreview of ${name}'
]]

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

keymap("n", "<leader>np", "<Plug>MarkdownPreview", opts)

-- note taking
keymap("n", "<leader>nt", ":e $TODAY_NOTE<CR>", opts)
keymap("n", "<leader>nw", ":e $WIP_NOTE<CR>", opts)
keymap("n", "<leader>ns", ":e ~/Sync/shop<CR>", opts)


local notes_group = vim.api.nvim_create_augroup("notes", { clear = true })
-- autocmd BufRead today.md !archive_dailynote.py
vim.api.nvim_create_autocmd("BufRead", {
    group = notes_group,
    pattern = "today.md",
    command = ":!archive_dailynote.py<CR>",
})
