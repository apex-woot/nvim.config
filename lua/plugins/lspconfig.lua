return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        protols = {},
        sqls = {
          on_attach = function(client, bufnr)
            require("sqls").on_attach(client, bufnr) -- require sqls.nvim
          end,
        },
      },
    },
  },
}
