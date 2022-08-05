-- neovide configuration
-- Details https://github.com/neovide/neovide/wiki/Configuration
vim.cmd [[
    let g:neovide_cursor_antialiasing=v:true
    let g:neovide_transparency=0.9
    let g:neovide_fullscreen=v:false
    let g:neovide_cursor_vfx_mode = "railgun"
    let g:neovide_cursor_vfx_particle_lifetime=2
    let g:neovide_cursor_vfx_particle_density=7.0
    let g:neovide_cursor_vfx_particle_speed=10.0
    let g:neovide_cursor_vfx_particle_curl=1.0
]]

-- Handle the zoom, sourced from: https://github.com/neovide/neovide/issues/1301#issuecomment-1119370546
vim.g.gui_font_default_size = 16
vim.g.gui_font_size = vim.g.gui_font_default_size
-- vim.g.gui_font_face = "FiraCode Nerd Font"
vim.g.gui_font_face = "Hack Nerd Font"
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
