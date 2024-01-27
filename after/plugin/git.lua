local status_ok, neogit = pcall(require, "neogit")
if not status_ok then
  vim.notify("Could not load module neogit!")
  return
end

neogit.setup(
  {
    disable_hint = true,
    git_services = {
      ["github.com"] = "https://github.com/${owner}/${repository}/compare/${branch_name}?expand=1",
      ["bitbucket.org"] = "https://bitbucket.org/${owner}/${repository}/pull-requests/new?source=${branch_name}&t=1",
      ["gitlab.com"] =
      "https://gitlab.com/${owner}/${repository}/merge_requests/new?merge_request[source_branch]=${branch_name}",
      ["framagit.org"] =
      "https://framagit.org/${owner}/${repository}/merge_requests/new?merge_request[source_branch]=${branch_name}",
    },
    graph_style = "unicode",
    integrations = {
      diffview = true,
      telescope = true,
    },
    mappings = {
      popup = {
        ["o"] = "LogPopup", -- Default is 'l', I love the plugin but I think overriding hjkl is pretty stupid
      },
    },
    signs = {
      item = { "", "" },
      section = { "", "" },
    },
    status = {
      recent_commit_count = 40,
    },
  }
)
-- git signs
require('gitsigns').setup()

local git_group = vim.api.nvim_create_augroup("git", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
  group = git_group,
  pattern = "gitcommit",
  command = "setlocal spell",
})
