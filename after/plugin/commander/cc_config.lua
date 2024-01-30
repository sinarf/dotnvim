local commander = require("commander")
local noremap = { noremap = true }

local category = 'config'

require("commander").setup({
  components = {
    "DESC",
    "KEYS",
    "CAT",
  },
  sort_by = {
    "DESC",
  },
  integration = {
    telescope = {
      enable = true,
      -- Optional, you can use any telescope supported theme
      theme = require("telescope.themes").commander
    },
    lazy = {
      -- Set to true to automatically add all key bindings set through lazy.nvim
      enable = false,
      -- Set to true to use plugin name as category for each keybinding added from lazy.nvim
      set_plugin_name_as_cat = false
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
    cmd = "<cmd>%bdelete | Alpha<cr>",
    keys = { "n", "<leader>bda", noremap },
    category = category,
  },
  {
    desc = "Open Current file in vsCodium",
    cmd = "<cmd>! codium %<cr>",
    category = category,
  },
})
