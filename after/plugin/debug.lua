local dap = require("dap")

require("nvim-dap-virtual-text").setup({
  options = {
    initialize_timeout_sec = 10,
  }
})
require('dap-python').setup()

dap.adapters.bashdb = {
  type = 'executable';
  command = vim.fn.stdpath("data") .. '/mason/packages/bash-debug-adapter/bash-debug-adapter';
  name = 'bashdb';
}

dap.configurations.sh = {
  {
    type = 'bashdb';
    request = 'launch';
    name = "Launch file";
    showDebugOutput = true;
    pathBashdb = vim.fn.stdpath("data") .. '/mason/packages/bash-debug-adapter/extension/bashdb_dir/bashdb';
    pathBashdbLib = vim.fn.stdpath("data") .. '/mason/packages/bash-debug-adapter/extension/bashdb_dir';
    trace = true;
    file = "${file}";
    program = "${file}";
    cwd = '${workspaceFolder}';
    pathCat = "cat";
    pathBash = "/bin/bash";
    pathMkfifo = "mkfifo";
    pathPkill = "pkill";
    args = {};
    env = {};
    terminalKind = "integrated";
  }
}

local dapui = require("dapui")

dapui.setup()

-- Open and close dap ui automagically
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

table.insert(dap.configurations.python, {
  type = 'python',
  request = 'launch',
  name = 'Custom - stop on entry',
  program = '${file}',
  stopOnEntry = true,
  -- ... more options, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings
}
)
