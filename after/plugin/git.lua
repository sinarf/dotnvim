local neogit = require("neogit")

neogit.setup {
  -- customize displayed signs
  signs = {
    -- { CLOSED, OPENED }
    section = { "", "" },
    item = { "", "" },
    hunk = { "", "" },
  },
  integrations = {
    diffview = true
  },
}
-- git signs
require('gitsigns').setup()

local git_group = vim.api.nvim_create_augroup("git", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
    group = git_group,
    pattern = "gitcommit",
    command = "setlocal spell",
})
