
local neotest = require("neotest")
neotest.setup({
  adapters = {
    require("neotest-python")({
      -- Extra arguments for nvim-dap configuration
      -- See https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for values
      dap = { justMyCode = false },
      -- Command line arguments for runner
      -- Can also be a function to return dynamic values
      args = { "--log-level", "DEBUG" },
      -- Runner to use. Will use pytest if available by default.
      -- Can be a function to return dynamic value.
      runner = "pytest",
      -- Custom python path for the runner.
      -- Can be a string or a list of strings.
      -- Can also be a function to return dynamic value.
      -- If not provided, the path will be inferred by checking for
      -- virtual envs in the local directory and for Pipenev/Poetry configs
      python = ".venv/bin/python",
      -- Returns if a given file path is a test file.
      -- NB: This function is called a lot so don't perform any heavy tasks within it.
      -- is_test_file = function(file_path)
      --   return file_path:match("/test_*.py$")
      -- end,
    }),
    require("neotest-plenary"),
  },
  benchmark = {
    enabled = true
  },
  consumers = {},
  default_strategy = "integrated",
  diagnostic = {
    enabled = true,
    severity = 1
  },
  discovery = {
    concurrent = 0,
    enabled = true
  },
  floating = {
    border = "rounded",
    max_height = 0.6,
    max_width = 0.6,
    options = {}
  },
  highlights = {
    adapter_name = "NeotestAdapterName",
    border = "NeotestBorder",
    dir = "NeotestDir",
    expand_marker = "NeotestExpandMarker",
    failed = "NeotestFailed",
    file = "NeotestFile",
    focused = "NeotestFocused",
    indent = "NeotestIndent",
    marked = "NeotestMarked",
    namespace = "NeotestNamespace",
    passed = "NeotestPassed",
    running = "NeotestRunning",
    select_win = "NeotestWinSelect",
    skipped = "NeotestSkipped",
    target = "NeotestTarget",
    test = "NeotestTest",
    unknown = "NeotestUnknown"
  },
  icons = {
    child_indent = "│",
    child_prefix = "├",
    collapsed = "─",
    expanded = "╮",
    failed = "",
    final_child_indent = " ",
    final_child_prefix = "╰",
    non_collapsible = "─",
    passed = "",
    running = "",
    running_animated = { "/", "|", "\\", "-", "/", "|", "\\", "-" },
    skipped = "",
    unknown = ""
  },
  jump = {
    enabled = false
  },
  log_level = 3,
  output = {
    enabled = true,
    open_on_run = "short"
  },
  output_panel = {
    enabled = true,
    open = "botright split | resize 15"
  },
  projects = {},
  quickfix = {
    enabled = false,
    open = true,
  },
  run = {
    enabled = true
  },
  running = {
    concurrent = true
  },
  status = {
    enabled = true,
    signs = true,
    virtual_text = true
  },
  strategies = {
    integrated = {
      height = 40,
      width = 120
    }
  },
  summary = {
    animated = true,
    enabled = true,
    expand_errors = true,
    follow = true,
    mappings = {
      attach = "a",
      clear_marked = "M",
      clear_target = "T",
      debug = "d",
      debug_marked = "D",
      expand = { "<CR>", "<2-LeftMouse>" },
      expand_all = "e",
      jumpto = "i",
      mark = "m",
      next_failed = "J",
      output = "o",
      prev_failed = "K",
      run = "r",
      run_marked = "R",
      short = "O",
      stop = "u",
      target = "t"
    },
    open = "botright vsplit | vertical resize 50"
  }
})

local test_group = vim.api.nvim_create_augroup("test", { clear = true })
vim.api.nvim_create_autocmd({
  "BufWritePost",
},
  {
    group = test_group,
    pattern = "*.py",
    callback = function()
      if neotest.run.get_last_run() then
        neotest.run.run_last()
      end
    end,
  }
)
