return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<leader>bf",
      function()
        require("telescope.builtin").current_buffer_fuzzy_find()
      end,
      desc = "Find in current buffer",
    },
  },
}
