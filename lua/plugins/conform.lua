return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      yaml = { "yamlfix" },
      javascript = { "biome-check", "biome" },
      javascriptreact = { "biome-check", "biome" },
      json = { "biome", "biome-check" },
      typescript = { "biome-check", "biome" },
      typescriptreact = { "biome-check", "biome" },
      go = { "goimports", "gofumt", "impl", "gopls" },
    },
    formatters = {
      yamlfix = {
        env = {
          YAMLFIX_SEQUENCE_STYLE = "block_style",
          YAMLFIX_WHITELINES = "1",
          YAMLFIX_LINE_LENGTH = "120",
        },
      },
    },
  },
}
