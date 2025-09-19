return {
  {
    "saghen/blink.cmp",
    dependencies = {
      {
        "Kaiser-Yang/blink-cmp-git",
      },
    },
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      keymap = {
        preset = "default",
      },
      completion = {
        accept = {
          auto_brackets = {
            enabled = false,
          },
        },
        menu = {
          border = "none",
          min_width = 10,
          winhighlight = "Normal:Normal,FloatBorder:Normal,CursorLine:Visual,Search:None",
          draw = {
            treesitter = { "lsp" },
            columns = { { "kind_icon" }, { "label", "label_description", gap = 1 }, { "source_name", gap = 1 } },
            padding = 0,
          },
        },
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 200,
          window = {
            border = "none",
          },
        },
      },
      sources = {
        default = { "lsp", "path", "buffer", "git" },
        providers = {
          lsp = {
            name = "LSP",
            module = "blink.cmp.sources.lsp",
            score_offset = 1000,
          },
          path = {
            name = "Path",
            module = "blink.cmp.sources.path",
            score_offset = 500,
          },
          buffer = {
            name = "Buffer",
            module = "blink.cmp.sources.buffer",
            score_offset = 250,
          },
          git = {
            name = "Git",
            module = "blink-cmp-git",
            score_offset = 100,
          },
        },
      },
      signature = {
        enabled = false,
        window = {
          border = "none",
        },
      },
      cmdline = {
        enabled = true,
      },
    },
  },
}
