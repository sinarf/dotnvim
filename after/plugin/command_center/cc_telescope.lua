local command_center = require("command_center")
local noremap = { noremap = true }
local category = 'telescope'

command_center.add({
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
-- keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)
-- keymap.set("n", "<leader>fch", "<cmd>Telescope command_history<cr>", opts)
-- keymap.set("n", "<leader>fcl", "<cmd>Telescope commands<cr>", opts)
-- keymap.set("n", "<leader>fd", "<cmd>Telescope diagnostics<cr>", opts)
-- keymap.set("n", "<leader>fi", "<cmd>Telescope live_grep<cr>", opts)
-- keymap.set("n", "<leader>fj", "<cmd>Telescope jumplist<cr>", opts)
-- keymap.set("n", "<leader>fg", "<cmd>Telescope git_files<cr>", opts)
-- keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opts)
-- keymap.set("n", "<leader>fl", "<cmd>Telescope current_buffer_fuzzy_find<cr>", opts)
-- keymap.set("n", "<leader>fm", "<cmd>Telescope file_browser<cr>", opts)
-- keymap.set("n", "<leader>fp", ":lua require'telescope'.extensions.project.project{ display_type = 'full' }<CR>", opts)
-- keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", opts)
-- keymap.set("n", "<leader>ftd", "<cmd>TodoTelescope<cr>", opts)
-- keymap.set("n", "<leader>ftl", "<cmd>Telescope<cr>", opts)
-- keymap.set("n", "<leader>fs", "<cmd>Telescope luasnip<cr>", { desc = "[F]ind [S]nippet", unpack(opts) })
-- -- search for the current word in the current project
-- keymap.set("n", "<leader>fgt", "<cmd>Telescope grep_string<cr>", opts)
--
-- keymap.set('n', '<leader>/', function()
--   -- You can pass additional configuration to telescope to change theme, layout, etc.
--   require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
--       winblend = 10,
--       previewer = false,
--   })
-- end, { desc = '[/] Fuzzily search in current buffer]' })
--
