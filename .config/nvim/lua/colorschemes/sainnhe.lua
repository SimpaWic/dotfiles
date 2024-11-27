return {
  {
    "sainnhe/gruvbox-material",
    lazy = true,
    priority = 1000,
    config = function()
      -- vim.o.termguicolors = true
      -- vim.o.background = "dark" -- dark, light
      vim.g.gruvbox_material_foreground = "original" -- material, mix, original
      vim.g.gruvbox_material_background = "soft" -- hard, medium, soft
    end,
  },
  {
    "sainnhe/sonokai",
    lazy = true,
    priority = 1000,
    config = function()
      vim.g.sonokai_style = "default" -- default, atlantis, andromeda, shusia, maia, espresso
    end,
  },
  {
    "sainnhe/everforest",
    lazy = true,
    priority = 1000,
    config = function()
      -- vim.o.termguicolors = true
      -- vim.o.background = "light" -- dark, light
      -- contrast
      vim.g.everforest_background = "soft" -- hard, medium, soft
    end,
  },
  {
    "sainnhe/edge",
    lazy = true,
    priority = 1000,
    config = function() end,
  },
}
