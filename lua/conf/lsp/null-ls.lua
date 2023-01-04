local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
    return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup {
    debug = false,
    sources = {
        formatting.prettier.with { extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" },
            -- Remove markdown from the filetypes list because prettier replace thing bullets points (*) are dash (-) which makes no sense and is stupidly ugly
            filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue", "css", "scss", "less",
                "html", "json", "jsonc", "yaml", "graphql", "handlebars" },
        },
        -- preview to split lines that are to long (will be default some day)
        formatting.black.with { extra_args = { "--experimental-string-processing" } },
        formatting.npm_groovy_lint,
        formatting.deno_fmt.with({
            filetypes = { "javascript", "javascriptreact", "json", "jsonc", "typescript", "typescriptreact" }
        }),
        formatting.shfmt,
        diagnostics.gitlint,
        -- FIXME: error notification when opening asciidoc document.
        -- diagnostics.vale.with({ filetypes = { "asciidoc" } }),

        -- disable warning line length warning
        diagnostics.markdownlint.with { extra_args = { "--disable MD013" } },
    },
}
