local status_ok, notify = pcall(require, "notify")
if not status_ok then
    return
end
notify.setup {
    background_colour = "#00000",
    fps = 30,
    icons = {
        DEBUG = "",
        ERROR = "",
        INFO = "",
        TRACE = "✎",
        WARN = ""
    },
    level = 2,
    minimum_width = 50,
    render = "default",
    stages = "slide",
    timeout = 5000,
    top_down = false
}

vim.notify = notify
