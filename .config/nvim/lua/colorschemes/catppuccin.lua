return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  opts = {
    flavour = "auto", -- latte, frappe, macchiato, mocha
    background = { -- :h background
      light = "latte",
      dark = "macchiato",
    },
    transparent_background = false,
    show_end_of_buffer = true, -- shows the '~' characters after the end of buffers
    dim_inactive = {
      enabled = true, -- dims the background color of inactive window
      shade = "dark",
      percentage = 0.15, -- percentage of the shade to apply to the inactive window
    },
  },
}
