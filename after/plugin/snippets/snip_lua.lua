local status_ok, luasnip = pcall(require, "luasnip")
if not status_ok then
    vim.notify("Could not load module luasnip!")
    return
end

local s = luasnip.snippet
local t = luasnip.text_node
local i = luasnip.insert_node
local extras = require("luasnip.extras")
local rep = extras.rep


luasnip.add_snippets("lua", {
    s(
        "req_safe", {
            t('local status_ok, '), i(1, 'mod_name'), t(' = pcall(require, "'), rep(1), t({ '")', "" }),
            t({ 'if not status_ok then', "" }),
            t('   vim.notify("Could not load module '), rep(1), t({ '!")', "" }),
            t({ '    return', 'end' }),
        }
    ),
})
