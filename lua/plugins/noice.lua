return {
  "folke/noice.nvim",
  opts = {
    cmdline = { enabled = false },
    messages = { enabled = false },
    routes = {
      { filter = { find = "No information available" }, opts = { skip = true } },
    },
  },
}
