return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        virtual_text = false,
        signs = true,
      },
      servers = {
        protols = {
          root_dir = function()
            return vim.fn.getcwd() -- Use current working directory, or adjust to your project root
          end,
          on_attach = function(client, bufnr)
            print("protols capabilities: " .. vim.inspect(client.server_capabilities))
            vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr, desc = "Hover documentation" })
            if client.server_capabilities.documentFormattingProvider then
              print("Formatting enabled")
              vim.api.nvim_create_autocmd("BufWritePre", {
                buffer = bufnr,
                callback = function()
                  vim.lsp.buf.format({ bufnr = bufnr })
                end,
              })
            else
              print("Formatting not supported by protols")
            end
          end,
        },
        sqls = {
          on_attach = function(client, bufnr)
            require("sqls").on_attach(client, bufnr)
          end,
        },
      },
    },
  },
}
