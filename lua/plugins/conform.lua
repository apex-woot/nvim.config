return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      yaml = { "yamlfix" },
      javascript = function(bufnr)
        if require("conform").get_formatter_info("biome", bufnr).available then
          return { "biome", lsp_format = "never" }
        else
          return { lsp_format = "fallback" }
        end
      end,
      javascriptreact = function(bufnr)
        if require("conform").get_formatter_info("biome", bufnr).available then
          return { "biome", lsp_format = "never" }
        else
          return { lsp_format = "fallback" }
        end
      end,
      json = function(bufnr)
        if require("conform").get_formatter_info("biome", bufnr).available then
          return { "biome", lsp_format = "never" }
        else
          return { lsp_format = "fallback" }
        end
      end,
      typescript = function(bufnr)
        if require("conform").get_formatter_info("biome", bufnr).available then
          return { "biome", lsp_format = "never" }
        else
          return { lsp_format = "fallback" }
        end
      end,
      typescriptreact = function(bufnr)
        if require("conform").get_formatter_info("biome", bufnr).available then
          return { "biome", lsp_format = "never" }
        else
          return { lsp_format = "fallback" }
        end
      end,
      go = { "goimports", "gofumt", "impl", "gopls" },
      lua = { "stylua" },
    },
    formatters = {
      yamlfix = {
        env = {
          YAMLFIX_SEQUENCE_STYLE = "block_style",
          YAMLFIX_WHITELINES = "1",
          YAMLFIX_LINE_LENGTH = "120",
        },
      },
      -- Add biome formatter configuration
      biome = {
        command = "biome",
        args = {
          "check",
          "--write",
          -- "--unsafe",
          "--stdin-file-path",
          "$FILENAME",
        },
        stdin = true,
        cwd = require("conform.util").root_file({
          "biome.json",
          "biome.jsonc",
        }),
      },
    },
  },
}
