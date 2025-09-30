return {
  "nvimtools/none-ls.nvim",
  opts = function(_, opts)
    local nls = require("null-ls")
    opts.sources = opts.sources or {}

    -- Add biome formatting with unsafe fixes (removes unused imports, organizes imports, etc)
    table.insert(
      opts.sources,
      nls.builtins.formatting.biome.with({
        args = { "check", "--write", "--unsafe", "--stdin-file-path", "$FILENAME" },
      })
    )
  end,
}
