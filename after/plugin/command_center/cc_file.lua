local command_center = require("commander")

local category = 'file'

command_center.add({
  {
    desc = "Make executable",
    cmd = "<cmd>!chmod +x %<CR>",
    category = category,
  },
})
