local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
    vim.notify("Could not load module bufferline!")
    return
end

bufferline.setup {
    options = {
        buffer_close_icon = '󰅙',
        diagnostics = "nvim_lsp",
        separator_style = "thin",
        custom_filter = function(buf_number)
            if vim.bo[buf_number].filetype ~= "fugitive" then
                return true
            end
            if vim.bo[buf_number].filetype ~= "gitcommit" then
                return true
            end
            if vim.bo[buf_number].filetype ~= "alpha" then
                return true
            end
        end,
    }
}
