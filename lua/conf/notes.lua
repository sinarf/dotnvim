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

