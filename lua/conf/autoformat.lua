-- enable autoformatting on some filetypes
--
local format_group       = vim.api.nvim_create_augroup("format", { clear = true })
local filetypes_patterns = { "*.lua", "*.py" }

for _, filetype_pattern in ipairs(filetypes_patterns) do
    vim.api.nvim_create_autocmd("BufWritePre", {
        group = format_group,
        pattern = filetype_pattern,
        command = "lua vim.lsp.buf.formatting_sync()",
    })
end
