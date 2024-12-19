local util = require("lspconfig.util")

return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    ---@type lspconfig.options
    servers = {
      pbls = {},
      prismals = {},
      gopls = {
        root_dir = require("lspconfig.util").root_pattern("go.work", "go.mod", ".git"),
        settings = {
          gopls = {
            usePlaceholders = true,
            analyses = {
              unusedparams = true,
            },
            staticcheck = true,
            gofumpt = true,
            codelenses = {
              gc_details = true,
            },
          },
        },
      },
      yamlls = {
        settings = {
          editor = {
            tabSize = 4,
          },
          yaml = {
            format = {
              singleQuote = true,
              bracketSpacing = true,
            },
          },
          redhat = {
            telemetry = {
              enabled = false,
            },
          },
        },
      },
      biome = {},
      jsonls = {
        settings = {
          json = {
            allowComments = true,
          },
        },
      },
      htmx = {
        settings = {
          filetypes = { "html", "templ" },
        },
      },
      tailwindcss = {
        filetypes = { "templ", "astro", "javascript", "typescript", "react" },
        settings = {
          tailwindCSS = {
            includeLanguages = {
              templ = "html",
            },
          },
        },
      },
      templ = {
        default_config = {
          cmd = { "templ", "lsp" },
          filetypes = { "templ" },
          root_dir = function(fname)
            return util.root_pattern("go.work", "go.mod", ".git")(fname)
          end,
        },
        docs = {
          description = [[
      https://templ.guide

      The official language server for the templ HTML templating language.
      ]],
          default_config = {
            root_dir = [[root_pattern('go.work', 'go.mod', '.git')]],
          },
        },
      },
    },
  },
}
