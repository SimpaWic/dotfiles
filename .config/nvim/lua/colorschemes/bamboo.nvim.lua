return {
  "ribru17/bamboo.nvim",
  lazy = true,
  priority = 1000,
  config = function()
    -- vim.o.background = "light"
    require("bamboo").setup({
      style = "light", -- 'vulgaris' (regular), 'multiplex' (greener), and 'light'
    })
  end,
}
