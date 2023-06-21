local command_center = require("command_center")
local noremap = { noremap = true }
local category = 'notes'

command_center.add({
  {
    -- You can pass in a key sequences as if you would type them in nvim
    desc = "Open Today Note",
    cmd = "<CMD>e $TODAY_NOTE<CR>",
    keys = { "n", "<leader>nt", noremap },
    category = category,
  },
  {
    -- You can pass in a key sequences as if you would type them in nvim
    desc = "Open WIP Note",
    cmd = "<CMD>e $WIP_NOTE<CR>",
    keys = { "n", "<leader>nw", noremap },
    category = category,
  },
  {
    -- You can pass in a key sequences as if you would type them in nvim
    desc = "Open Errand list",
    cmd = "<CMD>e $HOME/Sync/shop<CR>",
    keys = { "n", "<leader>ns", noremap },
    category = category,
  },
})
