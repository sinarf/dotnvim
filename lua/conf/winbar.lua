local status_ok, winbar = pcall(require, "winbar")
if not status_ok then
    return
end

winbar.setup({
    enabled = true,
})
