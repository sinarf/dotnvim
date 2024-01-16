-- global neovim options
vim.o.clipboard = "unnamedplus"
vim.o.backup = false
vim.o.undofile = true
vim.o.autoread = true
-- search
vim.o.hlsearch = true
vim.o.smartcase = true
vim.o.ignorecase = true

vim.o.number = true
vim.o.relativenumber = false
vim.o.signcolumn = "yes"

vim.o.scrolloff = 8
vim.o.sidescrolloff = 8

vim.o.termguicolors = true
vim.o.mouse = "a"
-- vim.o.colorcolumn = '120'
vim.o.cursorline = true

-- spelling disable by default
vim.o.spelllang = "en,fr"
vim.o.spell = false

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.splitbelow = true

vim.o.list        = true
vim.opt.listchars = {
    tab      = "▶▷",
    eol      = "↲",
    trail    = "✖",
    extends  = "❯",
    precedes = "❮",
    space    = "·",
}

