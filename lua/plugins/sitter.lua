return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "lua" },
      sync_install = false,
      auto_install = true,
      ignore_install = {},
      modules = {},
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    })
    vim.o.foldmethod = "expr"
    vim.o.foldexpr = "v:lua.vim.lsp.foldexpr()"
  end,
}
