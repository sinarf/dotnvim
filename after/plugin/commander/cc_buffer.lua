local commander = require("commander")
local noremap = { noremap = true }

local category = 'buffer'


commander.add({
  {
    desc = "Close buffer",
    cmd = "<cmd>e $HOME/.config/nvim/lua/plugins.lua<CR>",
    category = category,
    keys = { "n", "<leader>bd", noremap },
  },
  {
    desc = "Close all buffers",
    cmd = "<cmd>%bdelete<cr>",
    category = category,
    keys = { "n", "<leader>bda", noremap },
  },
})
