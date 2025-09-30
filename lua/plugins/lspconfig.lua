return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      biome = {
        root_dir = function(fname)
          return require("lspconfig.util").root_pattern("biome.json", "biome.jsonc")(fname)
        end,
      },
      gopls = {
        settings = {
          gopls = {
            hints = {
              compositeLiteralFields = true,
              constantValues = true,
              parameterNames = true,
              assignVariableTypes = true,
            },
            usePlaceholders = true,
          },
        },
      },
      vtsls = {
        settings = {
          typescript = { inlayHints = { parameterNames = { enabled = "all" } } },
          javascript = { inlayHints = { parameterNames = { enabled = "all" } } },
        },
      },
      dockerls = {},
      docker_compose_language_service = {},
      marksman = {},
      lua_ls = {
        settings = {
          Lua = {
            workspace = { checkThirdParty = false },
            telemetry = { enable = false },
          },
        },
      },
      typos_lsp = {
        filetypes = { "*" },
        init_options = { codeActions = true },
      },
    },
  },
}
