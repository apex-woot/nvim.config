return {
  "folke/trouble.nvim",
  keys = {
    {
      "<leader>cS",
      "<cmd>Trouble lsp toggle focus=true win.position=right<cr>",
      desc = "LSP references/definitions/... (Trouble)",
    },
    { "<leader>xx", "<cmd>Trouble diagnostics toggle focus=true<cr>", desc = "Diagnostics (Trouble)" },
    {
      "<leader>xX",
      "<cmd>Trouble diagnostics toggle focus=true filter.buf=0<cr>",
      desc = "Buffer Diagnostics (Trouble)",
    },
    { "<leader>cs", "<cmd>Trouble symbols toggle focus=true<cr>", desc = "Symbols (Trouble)" },
  },
}
