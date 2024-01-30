local commander = require("commander")
local noremap = { noremap = true }
local category = 'telescope'

commander.add({
  {
    desc = "Telescope",
    cmd = "<CMD>Telescope<CR>",
    keys = { "n", "<leader>ft", noremap },
    category = category,
  },
  {
    desc = "Browse file",
    cmd = "<CMD>Telescope file_browser<CR>",
    keys = { "n", "<leader>fm", noremap },
    category = category,
  },
  {
    desc = "Help pages",
    cmd = "<CMD>Telescope help_tags<CR>",
    keys = { "n", "<leader>fh", noremap },
    category = category,
  },
  {
    desc = "Search inside current buffer",
    cmd = "<CMD>Telescope current_buffer_fuzzy_find<CR>",
    keys = { "n", "<leader>fg", noremap },
    category = category,
  },
  {
    desc = "Buffer List",
    cmd = "<CMD>Telescope buffers<CR>",
    keys = { "n", "<leader>fb", noremap },
    category = category,
  },
  {
    desc = "Project List",
    cmd = "<CMD>lua require'telescope'.extensions.project.project{ display_type = 'full' }<CR>",
    keys = { "n", "<leader>fp", noremap },
    category = category,
  },

  {
    desc = "Project TODO",
    cmd = "<CMD>TodoTelescope<CR>",
    category = category,
  },

  {
    desc = "Find string in project",
    cmd = "<CMD>Telescope live_grep<CR>",
    keys = { "n", "<leader>fi", noremap },
    category = category,
  },
  {
    desc = "Find the string the cursor in project",
    cmd = "<CMD>Telescope grep_string<CR>",
    keys = { "n", "<leader>fu", noremap },
    category = category,
  },
  {
    desc = "Diagnostics",
    cmd = "<CMD>Telescope diagnostics<CR>",
    keys = { "n", "<leader>fd", noremap },
    category = category,
  },
  {
    desc = "MRU",
    cmd = "<CMD>Telescope oldfiles<CR>",
    keys = { "n", "<leader>fr", noremap },
    category = category,
  },
  {
    desc = "Jumplist",
    cmd = "<CMD>Telescope jumplist<CR>",
    category = category,
  },
  {
    desc = "Find files in project",
    cmd = "<CMD>Telescope find_files<CR>",
    keys = { "n", "<leader>ff", noremap },
    category = category,
  },
  {
    desc = "Find hidden files",
    cmd = "<CMD>Telescope find_files hidden=true<CR>",
    category = category,
  },
  {
    desc = "Show document symbols",
    cmd = "<CMD>Telescope lsp_document_symbols<CR>",
    keys = { "n", "<leader>fs", noremap },
    category = category,
  },
  {
    desc = "Find snippet",
    cmd = "<CMD>Telescope luasnip<CR>",
    category = category,
  },
})
