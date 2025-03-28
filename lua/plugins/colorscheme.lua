return {
  "rose-pine/neovim",
  source = "rose-pine/neovim",
  as = "rose-pine",
  config = function()
    require("rose-pine").setup({
      variant = "auto",
      dark_variant = "main",
      dim_inactive_windows = false,
      extend_background_behind_borders = true,

      enable = {
        terminal = true,
        legacy_highlights = true,
        migrations = true,
      },

      styles = {
        bold = true,
        italic = true,
        transparency = false,
      },

      groups = {
        border = "base", -- Make border the same color as background
        panel = "base", -- Ensure panel matches background

        link = "iris",
        error = "love",
        hint = "iris",
        info = "foam",
        note = "pine",
        todo = "rose",
        warn = "gold",

        git_add = "foam",
        git_change = "rose",
        git_delete = "love",
        git_dirty = "rose",
        git_ignore = "muted",
        git_merge = "iris",
        git_rename = "pine",
        git_stage = "iris",
        git_text = "rose",
        git_untracked = "subtle",

        h1 = "iris",
        h2 = "foam",
        h3 = "rose",
        h4 = "gold",
        h5 = "pine",
        h6 = "foam",
      },

      palette = {},

      highlight_groups = {
        VertSplit = { fg = "base", bg = "base" }, -- Hide vertical split
        WinSeparator = { fg = "base", bg = "base" }, -- Hide window separators
        MsgSeparator = { fg = "base", bg = "base" }, -- Hide command-line border when typing :
        NormalFloat = { bg = "base" }, -- Set floating window background
        FloatBorder = { fg = "base", bg = "base" }, -- Hide floating window border
        DiagnosticInfo = { fg = "muted", bg = "base" }, -- Hide floating window border
      },
    })
    vim.cmd("colorscheme rose-pine")
  end,
}
