return {
  {
    "ellisonleao/gruvbox.nvim",
    enabled = true,
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
      vim.cmd("colorscheme gruvbox")
    end,
  },
}