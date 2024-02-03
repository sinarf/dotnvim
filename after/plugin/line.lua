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
            left = '',
            right = ''
        },
    },
    sections = {
        lualine_a = {
            {
                'mode', separator = {
                left = ''
            },
                right_padding = 2
            },
        },
        lualine_b = { 'filename', 'branch' },
        lualine_c = { 'fileformat' },
        lualine_x = {},
        lualine_y = { 'filetype', 'progress' },
        lualine_z = {
            {
                'location',
                separator = {
                    right = ''
                },
                left_padding = 2
            },
        },
    },
    extensions = {
        'aerial',
        'mason',
        'oil',
        'quickfix',
        'trouble',
    },
}
