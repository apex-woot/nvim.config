return {
  -- Rose-Pine theme
  {
    "rose-pine/neovim",
    source = "rose-pine/neovim",
    as = "rose-pine",
  },
  -- WhichKey plugin
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
      require("which-key").setup({
        -- Your WhichKey configuration (can be left empty for defaults)
        win = {
          border = "rounded", -- Set rounded border
          no_overlap = true, -- Prevent overlap with cursor
          padding = { 0, 1 }, -- [top/bottom, right/left]
          width = 40, -- Fixed width (adjust as needed)
          height = { min = 2, max = 40 }, -- Constrain height
          col = -1, -- Align to the right edge (-1 means rightmost column)
          row = -1, -- Align to the bottom (-1 means bottommost row)
          zindex = 1000, -- Ensure it stays on top
        },
      })

      -- Set custom highlights to match Rose-Pine main background
      vim.api.nvim_set_hl(0, "WhichKeyNormal", { bg = "#191724" }) -- Background color
      vim.api.nvim_set_hl(0, "WhichKeyBorder", { fg = "#403d52", bg = "#191724" }) -- Border (using Rose-Pine's 'muted')
      vim.api.nvim_set_hl(0, "WhichKeyTitle", { fg = "#e0def4", bg = "#191724" }) -- Title (using Rose-Pine's 'text')
    end,
  },
}
