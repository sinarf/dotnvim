local commander = require("commander")
local noremap = { noremap = true }

local category = 'config'

require("commander").setup({
  integration = {
    telescope = {
      enable = true,
      -- Optional, you can use any telescope supported theme
      theme = require("telescope.themes").commander
    }
  }
})

commander.add({
  {
    desc = "Edit Neovim configuration",
    cmd = "<cmd>e $MYVIMRC<CR>",
    keys = { "n", "<leader>ev", noremap },
    category = category,
  },
  {
    desc = "Edit Neovim plugins",
    cmd = "<cmd>e $HOME/.config/nvim/lua/plugins.lua<CR>",
    category = category,
  },
  {
    desc = "Update Neovim plugins",
    cmd = "<cmd>Lazy update<CR>",
    category = category,
  },
  {
    desc = "Pull Neovim config from origin",
    cmd = "<cmd>G pull<CR>",
    category = category,
  },
  {
    desc = "Toggle auto save",
    cmd = "<CMD>ASToggle<CR>",
    category = category,
  },
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
