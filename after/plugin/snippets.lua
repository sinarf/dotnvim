-- load friendly snippets
require("luasnip.loaders.from_vscode").lazy_load()

local luasnip = require 'luasnip'
luasnip.config.set_config {
    history = true,
    updateevents = "TextChanged,TextChangedI",
    enable_autosnippets = true,
}

vim.keymap.set("i", "<C-l>", function()
    if luasnip.choice_active() then
        luasnip.change_choice(1)
    end
end)
