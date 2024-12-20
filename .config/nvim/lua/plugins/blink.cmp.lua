return {
  "saghen/blink.cmp",
  ---@param opts blink.cmp.Config
  opts = function(_, opts)
    opts.keymap = vim.tbl_extend("force", opts.keymap, {
      preset = "enter",
      ["<Tab>"] = { "select_next", "fallback" },
      ["<S-Tab>"] = { "select_prev", "fallback" },
    })

    opts.completion = vim.tbl_extend("force", opts.completion, {
      list = { selection = "auto_insert" },
    })
  end,
}
