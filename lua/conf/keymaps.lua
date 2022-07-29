-- keymaps
local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- open the file even if it does not exists, very handy in markdown.
keymap("n", "gf", ":e <cfile><CR>", opts)

-- buffer keymaps
keymap("n", "<leader>bn", ":bnext<CR>", opts)
keymap("n", "<leader>bp", ":bprevious<CR>", opts)
keymap("n", "<leader>bd", ":bdelete<CR>", opts)
keymap("n", "<leader>bda", ":%bdelete<CR>", opts)

-- window keymaps
keymap("n", "<leader>wh", "<C-w>h", opts)
keymap("n", "<leader>wj", "<C-w>j", opts)
keymap("n", "<leader>wk", "<C-w>k", opts)
keymap("n", "<leader>wl", "<C-w>l", opts)
keymap("n", "<leader>wo", "<C-w>o", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Edit vim configuration
keymap("n", "<leader>ev", ":e $MYVIMRC<CR>", opts)

-- telescope
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)
keymap("n", "<leader>fd", "<cmd>Telescope diagnostics<cr>", opts)
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>fi", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>fj", "<cmd>Telescope jumplist<cr>", opts)
keymap("n", "<leader>fk", "<cmd>Telescope keymaps<cr>", opts)
keymap("n", "<leader>fg", "<cmd>Telescope git_files<cr>", opts)
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opts)
keymap("n", "<leader>fm", "<cmd>Telescope file_browser<cr>", opts)
keymap("n", "<leader>fp", "<cmd>Telescope project<cr>", opts)
keymap("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", opts)
keymap("n", "<leader>ft", "<cmd>Telescope <cr>", opts)

-- trouble
keymap("n", "<leader>lt", "<cmd>TroubleToggle<cr>", opts)
keymap("n", "<leader>lw", "<cmd>TroubleToggle workspace_diagnostics<cr>", opts)
keymap("n", "<leader>ld", "<cmd>TroubleToggle document_diagnostics<cr>", opts)
keymap("n", "<leader>lq", "<cmd>TroubleToggle quickfix<cr>", opts)
keymap("n", "gR", "<cmd>TroubleToggle lsp_references<cr>", opts)
keymap("n", "gt", "<cmd>TroubleToggle lsp_type_definitions<cr>", opts)

-- Git
keymap("n", "<leader>gg", ":Git<CR>", opts)
keymap("n", "<leader>gf", ":Git fetch<CR>", opts)
keymap("n", "<leader>gl", ":Git log<CR>", opts)
keymap("n", "<leader>gb", ":Git blame<CR>", opts)

-- note taking
keymap("n", "<leader>nt", ":e $TODAY_NOTE<CR>", opts)
keymap("n", "<leader>nw", ":e $WIP_NOTE<CR>", opts)
keymap("n", "<leader>ns", ":e ~/Sync/shop<CR>", opts)
