local status_ok, barbecue = pcall(require, "barbecue")
if not status_ok then
    return
end

barbecue.setup {
  theme = "catppuccin", -- catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
}
