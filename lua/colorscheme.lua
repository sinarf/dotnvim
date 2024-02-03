vim.cmd [[
  set laststatus=3
  highlight WinSeparator guifg=None
]]

require "transparent".setup({
    extra_groups = { -- table/string: additional groups that should be cleared
        -- In particular, when you set it to 'all', that means all available groups
        -- example of akinsho/nvim-bufferline.lua
        "BufferLineTabClose",
        "BufferlineBufferSelected",
        "BufferLineFill",
        "BufferLineBackground",
        "BufferLineSeparator",
        "BufferLineIndicatorSelected",
    },
    exclude_group = {}, -- table: groups you don't want to clear
})

require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = {     -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = false,
    show_end_of_buffer = false, -- show the '~' characters after the end of buffers
    term_colors = true,
    dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
    },
    no_italic = false, -- Force no italic
    no_bold = false,   -- Force no bold
    styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    color_overrides = {},
    custom_highlights = {},
    integrations = {
        barbecue = {
            dim_dirname = true,
            bold_basename = true,
            dim_context = true,
            alt_background = false,
        },
        cmp = true,
        gitsigns = true,
        mason = true,
        neogit = true,
        telescope = true,
        treesitter = true,
        notify = true,
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})
require('catppuccin').load()


local colors = require("catppuccin.palettes").get_palette()
local TelescopeColor = {
    TelescopeMatching = {
        fg = colors.flamingo
    },
    TelescopeSelection = {
        fg = colors.text,
        bold = true
    },
    TelescopePromptBorder = {
        fg = colors.pink
    },
    TelescopeResultsBorder = {
        fg = colors.blue
    },
    TelescopePreviewBorder = {
        fg = colors.green
    },
    TelescopePromptTitle = {
        bg = colors.pink,
        fg = colors.mantle
    },
    TelescopeResultsTitle = {
        bg = colors.blue,
        fg = colors.mantle
    },
    TelescopePreviewTitle = {
        bg = colors.green,
        fg = colors.mantle
    },
}

for hl, col in pairs(TelescopeColor) do
    vim.api.nvim_set_hl(0, hl, col)
end
