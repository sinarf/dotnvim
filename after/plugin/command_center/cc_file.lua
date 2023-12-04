local command_center = require("command_center")

local category = 'file'

command_center.add({
  {
    desc = "Make executable",
    cmd = "<cmd>!chmod +x %<CR>",
    category = category,
  },
})
