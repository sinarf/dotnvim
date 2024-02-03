-- neovide configuration
-- Details https://github.com/neovide/neovide/wiki/Configuration
vim.cmd [[
    "From https://github.com/aileot/vim-confirm-quit/blob/main/plugin/confirm-quit.vim

    if exists("g:neovide")
        let g:neovide_cursor_antialiasing=v:true
        let g:neovide_transparency=0.93
        let g:neovide_fullscreen=v:false
        let g:neovide_cursor_vfx_mode = "railgun"
        let g:neovide_cursor_vfx_particle_lifetime=2
        let g:neovide_cursor_vfx_particle_density=7.0
        let g:neovide_cursor_vfx_particle_speed=10.0
        let g:neovide_cursor_vfx_particle_curl=1.0
        let g:transparent_enabled = v:false
    else
        let g:transparent_enabled = v:true
        augroup confirm_quit
          au!
          " disable confirm quit when not on neovide"
        augroup END
        lua require('mini.animate').setup()
    end
]]

-- Handle the zoom, as if you were in a lesser editor that has those futile, yet handy, feature.
-- sourced from: https://github.com/neovide/neovide/issues/1301#issuecomment-1119370546
local font_size = 10
if vim.loop.os_uname().sysname == "Darwin" then
    font_size = 13
end

vim.g.gui_font_default_size = font_size
vim.g.gui_font_size = vim.g.gui_font_default_size
vim.g.gui_font_face = "FiraCode Nerd Font"
-- vim.g.gui_font_face = "Cascadia Code"
RefreshGuiFont = function()
    vim.opt.guifont = string.format("%s:h%s", vim.g.gui_font_face, vim.g.gui_font_size)
end

ResizeGuiFont = function(delta)
    vim.g.gui_font_size = vim.g.gui_font_size + delta
    RefreshGuiFont()
end

ResetGuiFont = function()
    vim.g.gui_font_size = vim.g.gui_font_default_size
    RefreshGuiFont()
end

-- Call function on startup to set default value
ResetGuiFont()

-- Keymaps
local opts = { noremap = true, silent = true }
vim.keymap.set({ 'n', 'i' }, "<C-=>", function() ResizeGuiFont(1) end, opts)
vim.keymap.set({ 'n', 'i' }, "<C-->", function() ResizeGuiFont(-1) end, opts)
vim.keymap.set({ 'n', 'i' }, "<C-BS>", function() ResetGuiFont() end, opts)
vim.keymap.set({ 'n', 'i' }, "<C-ScrollWheelUp>", function() ResizeGuiFont(1) end, opts)
vim.keymap.set({ 'n', 'i' }, "<C-ScrollWheelDown>", function() ResizeGuiFont(-1) end, opts)
-- End of zoom configuration
vim.keymap.set({ 'n' }, "<leader>nf", ":let g:neovide_fullscreen = v:true<CR>", opts)
vim.keymap.set({ 'n' }, "<leader>nF", ":let g:neovide_fullscreen = v:false<CR>", opts)
