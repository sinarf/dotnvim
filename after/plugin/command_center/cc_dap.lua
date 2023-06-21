local command_center = require("command_center")
local noremap = { noremap = true }
local category = 'debug'
local dap = require('dap')
local dapui = require('dapui')

command_center.add({
  {
    desc = "Debug: Start / Continue",
    cmd = function()
      dap.continue()
    end,
    keys = { "n", "<leader>dc", noremap },
    category = category,
  },
  {
    desc = "Debug: Toggle Breakpoint",
    cmd = function() dap.toggle_breakpoint() end,
    keys = { "n", "<leader>db", noremap },
    category = category,
  },
  {
    desc = "Debug: Clear Breakpoint",
    cmd = function() dap.clear_breakpoints() end,
    keys = { "n", "<leader>dz", noremap },
    category = category,
  },
  {
    desc = "Debug: Set conditional Breakpoint",
    cmd = function()
      dap.set_breakpoint(vim.fn.input({'Breakpoint condition: '}))
    end,
    keys = { "n", "<leader>dB", noremap },
    category = category,
  },
  {
    desc = "Debug: Step into",
    cmd = function()
      dap.step_into()
    end,
    keys = { "n", "<leader>di", noremap },
    category = category,
  },
  {
    desc = "Debug: Step over",
    cmd = function()
      dap.step_over()
    end,
    keys = { "n", "<leader>do", noremap },
    category = category,
  },
  {
    desc = "Debug: Run Last",
    cmd = function()
      dap.run_last()
    end,
    keys = { "n", "<leader>dl", noremap },
    category = category,
  },
  {
    desc = "Debug: Toggle DAP UI",
    cmd = function()
      dapui.toggle()
    end,
    keys = { "n", "<leader>dut", noremap },
    category = category,
  },
})
