local status_ok, neogit = pcall(require, "neogit")
if not status_ok then
  vim.notify("Could not load module neogit!")
  return
else
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
end

require('gitsigns').setup()
require('git-conflict').setup()

local git_wt_status_ok, git_worktree = pcall(require, "git_worktree")
if git_wt_status_ok then
  git_worktree.setup()

  git_worktree.on_tree_change(function(op, metadata)
    if op == git_worktree.Operations.Switch then
      print("Switched from " .. metadata.prev_path .. " to " .. metadata.path)
    end
  end)
else
  vim.notify("Could not load module git_worktree!")
end


local git_group = vim.api.nvim_create_augroup("git", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
  group = git_group,
  pattern = "gitcommit",
  command = "setlocal spell",
})


-- vim.api.nvim_create_autocmd('User', {
--   group = git_group,
--   pattern = 'GitConflictDetected',
--   callback = function()
--     vim.notify('Conflict detected in ' .. vim.fn.expand('<afile>'))
--   end
-- })
--
-- vim.api.nvim_create_autocmd('User', {
--   group = git_group,
--   pattern = 'GitConflictResolved',
--   callback = function()
--     vim.notify('Conflict resolved in ' .. vim.fn.expand('<afile>'))
--   end
-- })
