return {
  "folke/noice.nvim",
  opts = function(_, opts)
    opts.presets.bottom_search = false
    -- opts.lsp.signature = {
    --   auto_open = { enabled = false },
    -- }

    vim.keymap.set("i", "<C-x>", vim.lsp.buf.signature_help)
  end,
}
