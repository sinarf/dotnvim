local command_center = require("command_center")
local noremap = { noremap = true }
local silent_noremap = { noremap = true, silent = true }

local category = 'config'

command_center.add({
  {
    desc = "Edit Neovim configuration",
    cmd = "<cmd>e $MYVIMRC<CR>",
    keys = { "n", "<leader>ev", noremap },
    category = category,
  },
  {
    desc = "Update Plugins",
    cmd = "<cmd>PackerSync<CR>",
    category = category,
  },
  {
    desc = "Edit Neovim plugins",
    cmd = "<cmd>e $HOME/.config/nvim/lua/plugins.lua<CR>",
    category = category,
  },
  {
    desc = "Toggle auto save",
    cmd = "<CMD>ASToggle<CR>",
    category = category,
  },
  -- buffers
  --keymap.set("n", "<leader>bda", ":%bdelete<CR>", opts) -- close all buffers and open Alpha
  {
    desc = "Close all buffers",
    cmd = "<cmd>%bdelete<cr>",
    category = category,
  },
  {
    desc = "Open Current file in vsCodium",
    cmd = "<cmd>! codium %<cr>",
    category = category,
  },
})
