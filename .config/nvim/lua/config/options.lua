-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.expandtab = false -- Use tabs instead of spaces
opt.shiftwidth = 2 -- Size of an indent
opt.tabstop = 2 -- Number of spaces tabs count for

vim.api.nvim_create_autocmd("ColorScheme", {
  group = vim.api.nvim_create_augroup("custom_highlights_gruvboxmaterial", {}),
  pattern = "gruvbox-material",
  callback = function()
    local config = vim.fn["gruvbox_material#get_configuration"]()
    local palette = vim.fn["gruvbox_material#get_palette"](config.background, config.foreground, config.colors_override)
    local set_hl = vim.fn["gruvbox_material#highlight"]

    set_hl("TelescopeTitle", palette.green, palette.none)
    set_hl("CursorLine", palette.none, palette.bg3)
    set_hl("CursorLineNr", palette.orange, palette.none)
    set_hl("Folded", palette.none, palette.bg1)
  end,
})
