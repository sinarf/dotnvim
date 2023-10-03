-- keymaps
local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.keymap

-- open the file even if it does not exists, very handy in markdown.
keymap.set("n", "gf", ":e <cfile><CR>", opts)

-- window keymaps
keymap.set("n", "<leader>wh", "<C-w>h", opts)
keymap.set("n", "<leader>wj", "<C-w>j", opts)
keymap.set("n", "<leader>wk", "<C-w>k", opts)
keymap.set("n", "<leader>wl", "<C-w>l", opts)
keymap.set("n", "<leader>wo", "<C-w>o", opts)
keymap.set("n", "<leader>w=", "<C-w>=", opts)
keymap.set("n", "<leader>ww", "<C-w>", opts)

-- Move text up and down
keymap.set("v", "<A-j>", ":m .+1<CR>==", opts)
keymap.set("v", "<A-k>", ":m .-2<CR>==", opts)
keymap.set("v", "p", '"_dP', opts)

-- telescope
-- Most keymap will come from the command center plugin
keymap.set("n", "<leader>cc", "<cmd>Telescope commander<cr>", opts)

-- make hlsearch useful and not persistent
keymap.set("n", "<esc>", "<esc>:nohlsearch<CR><esc>", opts)

keymap.set("n", "<leader>rt", ":RunCode<CR>", { desc = "[R]un [T]his", unpack(opts) })

local keymaps_group = vim.api.nvim_create_augroup('keymaps', { clear = true })
vim.api.nvim_create_autocmd('BufWritePost', {
    command = 'source | lua vim.notify "Keymaps Updated"',
    group = keymaps_group,
    pattern = 'keymaps.lua',
})
