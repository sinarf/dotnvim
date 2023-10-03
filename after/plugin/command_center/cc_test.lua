
local commander = require("commander")
local noremap = { noremap = true }
local category = 'test'
local neotest = require('neotest')

commander.add({
  {
    desc = 'Run this test file',
    cmd = function ()
      neotest.run.run(vim.fn.expand('%'))
    end,
    keys = { "n", "<leader>tf", noremap },
    category = category,
  },
  {
    desc = 'Open Test summary',
    cmd = function ()
      neotest.summary.open()
    end,
    keys = { "n", "<leader>tso", noremap },
    category = category,
  },
  {
    desc = 'Close Test summary',
    cmd = function ()
      neotest.summary.close()
    end,
    keys = { "n", "<leader>tsc", noremap },
    category = category,
  },
  {
    desc = 'Toggle Test summary',
    cmd = function ()
      neotest.summary.toggle()
    end,
    keys = { "n", "<leader>tst", noremap },
    category = category,
  },
})
