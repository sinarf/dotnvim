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

-- require('onedark').setup {
--   style = 'warmer',
--   lualine = {
--     transparent = true, -- lualine center bar transparency
--   },
-- }
-- require('onedark').load()
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
        cmp = true,
        gitsigns = true,
        mason = true,
        telescope = true,
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})
require('catppuccin').load()
require("monokai-pro").setup()
vim.cmd([[colorscheme monokai-pro]])
