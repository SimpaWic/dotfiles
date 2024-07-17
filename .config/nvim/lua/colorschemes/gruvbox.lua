return {
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_foreground = "original"
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_transparent_background = 1
      vim.g.gruvbox_material_enable_italic = 1
      vim.g.gruvbox_material_enable_bold = 1
      vim.g.gruvbox_material_ui_contrast = "high"
    end,
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    version = false,
    config = function()
      require("gruvbox").setup({
        contrast = "hard",
        transparent_mode = true,
        overrides = {
          NoiceCmdlinePopupBorder = {
            bg = "NONE" --[["#1D2021"]],
            fg = "#83A598",
          },
          NoiceCmdlineIcon = {
            bg = "NONE" --[["#1D2021"]],
            fg = "#83A598",
          },
          NoiceCmdlinePopupTitle = {
            bg = "NONE" --[["#1D2021"]],
            fg = "#83A598",
          },
          NoiceCmdlinePopupBorderSearch = {
            bg = "NONE" --[["#1D2021"]],
            fg = "#fabd2f",
          },
          NoiceCmdlineIconSearch = {
            bg = "NONE" --[["#1D2021"]],
            fg = "#fabd2f",
          },
        },
      })
    end,
  },
}
