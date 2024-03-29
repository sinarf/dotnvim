local commander = require("commander")
local noremap = { noremap = true }

local category = 'buffer'


commander.add({
  {
    desc = "Close buffer",
    cmd = "<cmd>bdelete<CR>",
    category = category,
    keys = { "n", "<leader>bd", noremap },
  },
  {
    desc = "Close all buffers",
    cmd = "<cmd>%bdelete | Alpha<cr>",
    keys = { "n", "<leader>bda", noremap },
    category = category,
  },
})
