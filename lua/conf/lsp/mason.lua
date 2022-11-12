local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
    vim.notify("Could not find lspconfig", "")
    return
end


require("mason").setup {
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
        }
    }
}
require("mason-lspconfig").setup {
    ensure_installed = {
        "sumneko_lua",
        "pyright",
        "bashls"
    },
}

lspconfig.sumneko_lua.setup {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
}

lspconfig.pyright.setup {}

lspconfig.bashls.setup {}

lspconfig.bashls.setup {}
