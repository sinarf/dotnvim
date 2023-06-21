local command_center = require("command_center")
local noremap = { noremap = true }
local category = 'trouble'

command_center.add({
  {
    desc = "Trouble workspace diagnostics",
    cmd = "<cmd>TroubleToggle workspace_diagnostics<cr>",
    category = category,
  },
  {
    desc = "Trouble lsp_references",
    cmd = "<cmd>TroubleToggle lsp_references<cr>",
    keys = { "n", "gR", noremap },
    category = category,
  },
  {
    desc = "Trouble lsp_type_definitions",
    cmd = "<cmd>TroubleToggle lsp_type_definitions<cr>",
    keys = { "n", "gt", noremap },
    category = category,
  },
})
