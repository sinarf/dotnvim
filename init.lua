require("plugins")
require("colorscheme")
require("options")
require("keymaps")

local init_group = vim.api.nvim_create_augroup("init_group", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", {
  group = init_group,
  pattern = "*/.config/nvim/**/*.lua",
  command = "source $MYVIMRC",
})
