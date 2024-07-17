return {
  "rebelot/kanagawa.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    theme = "lotus",
    background = {
      dark = "wave",
      light = "lotus",
    },
    transparent = true,
    colors = {
      theme = {
        all = {
          ui = {
            bg_gutter = "none",
          },
        },
      },
    },
    overrides = function(colors)
      local theme = colors.theme
      local palette = colors.palette

      return {
        NormalFloat = { bg = "none" },
        FloatBorder = { bg = "none" },
        FloatTitle = { bg = "none" },

        -- Save an hlgroup with dark background and dimmed foreground
        -- so that you can use it where your still want darker windows.
        -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
        NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

        -- Popular plugins that open floats will link to NormalFloat by default;
        -- set their background accordingly if you wish to keep them dark and borderless
        LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
        MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },

        TelescopeTitle = { fg = theme.ui.special, bold = true },
        TelescopePromptBorder = { bg = "none", fg = theme.ui.special },
        TelescopeResultsBorder = { bg = "none", fg = theme.ui.special },
        TelescopePreviewBorder = { bg = "none", fg = theme.ui.special },

        NoiceCmdlinePopupTitle = { bg = "NONE", fg = theme.ui.special },
        NoiceCmdlinePopupBorder = { bg = "NONE", fg = theme.ui.special },
        NoiceCmdlineIcon = { bg = "NONE", fg = theme.ui.special },
        NoiceCmdlinePopupBorderSearch = { bg = "NONE", fg = palette.autumnYellow },
        NoiceCmdlineIconSearch = { bg = "NONE", fg = palette.autumnYellow },

        SignColumn = { bg = "NONE" },
      }
    end,
  },
}
