return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    opts.formatters_by_ft = opts.formatters_by_ft or {}
    opts.formatters_by_ft.yaml = { "yamlfix" }
    opts.formatters_by_ft.go = { "goimports", "gofumt", "impl", "gopls" }
    opts.formatters_by_ft.lua = { "stylua" }

    opts.formatters = opts.formatters or {}
    opts.formatters.yamlfix = {
      env = {
        YAMLFIX_SEQUENCE_STYLE = "block_style",
        YAMLFIX_WHITELINES = "1",
        YAMLFIX_LINE_LENGTH = "120",
      },
    }

    -- Ensure biome uses unsafe flag to remove unused imports
    opts.formatters.biome = {
      args = { "check", "--write", "--unsafe", "--stdin-file-path", "$FILENAME" },
    }
  end,
}
