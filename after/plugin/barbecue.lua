local status_ok, barbecue = pcall(require, "barbecue")
if not status_ok then
    return
end

barbecue.setup {
  symbols = {
    ---Modification indicator.
    ---
    ---@type string
    modified = "●",

    ---Truncation indicator.
    ---
    ---@type string
    ellipsis = "…",

    ---Entry separator.
    ---
    ---@type string
    separator = "",
  },
  theme = "catppuccin", -- catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
}
