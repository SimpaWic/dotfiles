return {
  "rebelot/kanagawa.nvim",
  lazy = true,
  priority = 1000,
  config = function()
    require("kanagawa").setup({
      compile = false,
      theme = "wave", -- wave, dragon, lotus
      background = {
        dark = "wave",
        light = "lotus",
      },
    })
  end,
}
