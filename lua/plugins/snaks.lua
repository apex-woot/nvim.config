return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    -- Your existing configuration
    bigfile = { enabled = true },
    dashboard = { enabled = true },
    explorer = { enabled = false },
    indent = { enabled = true },
    input = { enabled = true },
    picker = { enabled = true },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    scope = { enabled = true },
    scroll = { enabled = false },
    statuscolumn = { enabled = true },
    words = { enabled = true },
  },
  config = function(_, opts)
    -- Setup snacks.nvim with the provided opts
    require("snacks").setup(opts)

    -- Function to set the preview background to Rosé Pine "main"
    local function set_snacks_preview_bg()
      -- Set the preview content background (assumed group)
      vim.api.nvim_set_hl(0, "SnacksPickerPreview", {
        bg = "#191724", -- Rosé Pine "main" background
      })
      -- Set the general picker border (if it affects the preview)
      vim.api.nvim_set_hl(0, "SnacksPickerBorder", {
        bg = "#191724",
        fg = "#e0def4", -- Rosé Pine text color for contrast
      })
      -- Set the preview-specific border (for consistency)
      vim.api.nvim_set_hl(0, "SnacksPickerPreviewBorder", {
        bg = "#191724",
        fg = "#e0def4",
      })
    end

    -- Apply initially
    set_snacks_preview_bg()

    vim.api.nvim_create_user_command("SnacksHighlights", function()
      require("snacks.picker").highlights({ pattern = "hl_group:^Snacks" })
    end, { desc = "Show Snacks highlight groups" })
  end,
}
