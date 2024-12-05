return {
  "NMAC427/guess-indent.nvim",
  lazy = false,
  config = function()
    require("guess-indent").setup({})
    require("which-key").add({
      { "<leader>ci", desc = "indentation", icon = { icon = "󰉶" } },
      { "<leader>cit", desc = "tabs", icon = { icon = " " } },
      { "<leader>cit2", icon = { icon = " " } },
      { "<leader>cit4", icon = { icon = " " } },
      { "<leader>cis", desc = "spaces", icon = { icon = "󱁐" } },
      { "<leader>cis2", icon = { icon = "󱁐" } },
      { "<leader>cis4", icon = { icon = "󱁐" } },
    })
  end,
  keys = {
    {
      "<leader>cit2",
      "<Cmd>set noexpandtab<CR><Cmd>set tabstop=2<CR><Cmd>set shiftwidth=2<CR><Cmd>%retab!<CR>",
      noremap = true,
      desc = "retab to tabs (2 space width)",
    },
    {
      "<leader>cit4",
      "<Cmd>set noexpandtab<CR><Cmd>set tabstop=4<CR><Cmd>set shiftwidth=4<CR><Cmd>%retab!<CR>",
      noremap = true,
      desc = "retab to tabs (4 space width)",
    },
    {
      "<leader>cis2",
      "<Cmd>set expandtab<CR><Cmd>set tabstop=2<CR><Cmd>set shiftwidth=2<CR><Cmd>%retab!<CR>",
      noremap = true,
      desc = "retab to 2 spaces",
    },
    {
      "<leader>cis4",
      "<Cmd>set expandtab<CR><Cmd>set tabstop=4<CR><Cmd>set shiftwidth=4<CR><Cmd>%retab!<CR>",
      noremap = true,
      desc = "retab to 4 spaces",
    },
  },
}
