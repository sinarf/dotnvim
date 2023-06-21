local command_center = require("command_center")
local noremap = { noremap = true }
local silent_noremap = { noremap = true, silent = true }

local category = 'LSP'

command_center.add({
  {
    desc = "Format Document",
    cmd = "<cmd>lua vim.lsp.buf.format({async = true})<cr>",
    keys = { "n", "<leader>lf", noremap },
    category = category,
  },
  {
    desc = "Show function signaure (hover)",
    cmd = "<CMD>lua vim.lsp.buf.hover()<CR>",
    keys = {
      { "n", "K",     silent_noremap },
      { "i", "<C-k>", silent_noremap },
    },
    category = category,
  },
})
