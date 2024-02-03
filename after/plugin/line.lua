local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
    vim.notify("Could not load module lualine!")
    return
end

lualine.setup {
    options = {
        theme = "catppuccin",
        component_separators = {
            left = ' ',
            right = ' ',
        },
        section_separators = {
            left = ' ',
            right = ' ',
        },
    },
    extensions = {
        'mason',
        'oil',
        'quickfix',
        'trouble',
    },
}
