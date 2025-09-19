return {
  "pwntester/octo.nvim",
  opts = {
    suppress_missing_scope = {
      projects_v2 = true,
    },
    mappings = {
      submit_win = {
        approve_review = { lhs = "<localleader>a", desc = "Approve review", mode = { "n", "i" } },
      },
    },
  },
}
