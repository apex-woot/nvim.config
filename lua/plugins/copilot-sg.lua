return {
  "zbirenbaum/copilot.lua",
  opts = {
    suggestion = {
      enabled = true, -- Enable it globally
      auto_trigger = true,
      hide_during_completion = vim.g.ai_cmp,
      keymap = {
        accept = false, -- handled by nvim-cmp / blink.cmp
        next = "<M-]>",
        prev = "<M-[>",
      },
    },
    panel = { enabled = false },
    filetypes = {
      sql = true,
      json = true,
      lua = true,
      toml = true,
      yml = true,
      dockerfile = true,
      markdown = true,
      ["*"] = false, -- Disable for all other file types
    },
  },
}
