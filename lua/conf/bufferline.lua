local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
    return
end

bufferline.setup {
    options = {
        -- numbers = "ordinal",
        diagnostics = "nvim_lsp",
        -- separator_style = "slant",
        -- custom_filter = function(buf_number)
        --     if vim.bo[buf_number].filetype ~= "fugitive" then
        --         return true
        --     end
        --     if vim.bo[buf_number].filetype ~= "gitcommit" then
        --         return true
        --     end
        -- end,
    }
}
