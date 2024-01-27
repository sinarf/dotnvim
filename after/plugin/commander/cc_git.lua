local commander = require("commander")
local noremap = { noremap = true }
local category = 'git'

commander.add({
  {
    desc = "neogit",
    cmd = "<cmd>Neogit<cr>",
    keys = { "n", "<leader>gg", noremap },
    category = category,
  },
  {
    desc = "Checkout git branches",
    cmd = "<CMD>Telescope git_branches<CR>",
    keys = { "n", "<leader>gbc", noremap },
    category = category,
  },
  {
    desc = "Git Blame current change",
    cmd = "<CMD>Gitsigns blame_line<CR>",
    keys = { "n", "<leader>gbl", noremap },
    category = category,
  },
  {
    desc = "Git Blame current file",
    cmd = "<CMD>G blame<CR>",
    keys = { "n", "<leader>gbf", noremap },
    category = category,
  },
  {
    desc = 'Git Previous change',
    cmd = "<CMD>Gitsigns prev_hunk<CR>",
    keys = { "n", "<leader>gp", noremap },
    category = category,
  },
  {
    desc = 'Git Next change',
    cmd = "<CMD>Gitsigns next_hunk<CR>",
    keys = { "n", "<leader>gn", noremap },
    category = category,
  },
  {
    desc = 'Git reset current change',
    cmd = "<CMD>Gitsigns reset_hunk<CR>",
    keys = { "n", "<leader>gr", noremap },
    category = category,
  },
  {
    desc = 'Git history with diff',
    cmd = "<CMD>DiffviewFileHistory<CR>",
    keys = { "n", "<leader>gdf", noremap },
    category = category,
  },
  {
    desc = 'Git Conflict in quicklist',
    cmd = "<CMD>GitConflictListQf<CR>",
    keys = { "n", "<leader>gcl", noremap },
    category = category,
  },

})
