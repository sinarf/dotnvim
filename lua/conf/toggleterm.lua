require("toggleterm").setup({
    open_mapping = [[<c-\>]],
    autochdir    = true, -- when neovim changes it current directory the terminal will change it's own when next it's opened
    direction    = 'float',
    float_opts   = {
        -- The border key is *almost* the same as 'nvim_open_win'
        -- see :h nvim_open_win for details on borders however
        -- the 'curved' border is a custom border type
        -- not natively supported but implemented in this plugin.
        border = 'curved',
    },
})
