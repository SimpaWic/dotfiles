return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    close_if_last_window = false,
    filesystem = {
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        never_show = {
          ".git",
          ".DS_Store",
        },
      },
    },
    window = {
      position = "left",
    },
    event_handlers = {
      {
        event = "file_opened",
        handler = function()
          require("neo-tree.command").execute({ action = "close" })
        end,
      },
    },
  },
}
