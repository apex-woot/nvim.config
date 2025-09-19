-- Options are automatically loaded before lazy.nvim startup
-- Default options from LazyVim: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

-- LazyVim-specific settings
vim.g.lazyvim_prettier_needs_config = true
vim.g.lazyvim_blink_main = true -- Assuming this is a custom flag; kept as-is

-- -- Performance Optimizations
vim.opt.synmaxcol = 300 -- Limit syntax highlighting for long lines
-- vim.opt.timeoutlen = 200 -- Short mapping delay
-- vim.opt.ttimeoutlen = 5 -- Fast key repeat
-- vim.opt.updatetime = 10 -- Fast cursor/LSP updates (0.11-friendly)
-- vim.opt.swapfile = false -- No swap files
-- vim.opt.undofile = true -- Persistent undo
-- vim.opt.undodir = vim.fn.expand("~/.nvim/undo") -- Ensure directory exists
-- vim.opt.foldmethod = "indent" -- Fast folding
-- vim.opt.foldlevelstart = 99 -- Start with all folds open
vim.opt.redrawtime = 500 -- Faster redraw timeout (0.11 optimization)

-- UI Feel Improvements
vim.opt.termguicolors = true -- 24-bit color
vim.opt.number = true -- Line numbers
vim.opt.relativenumber = true -- Relative numbers
vim.opt.signcolumn = "yes" -- Stable sign column
vim.opt.showcmd = true -- Show typed commands (will display in statusline with cmdheight=0)
vim.opt.ruler = false -- Hide ruler
-- vim.opt.laststatus = 0 -- Minimal statusline (LazyVim might override)
vim.opt.cmdheight = 0 -- Compact cmdline (shows only when needed)
vim.opt.scrolloff = 8 -- Context around cursor
vim.opt.sidescrolloff = 8 -- Horizontal context
vim.opt.fillchars = { eob = " ", vert = " ", diff = "╱" } -- Clean UI, 0.11 diff support
vim.opt.smoothscroll = true -- Smooth scrolling (0.11 feature)

-- Editor Behavior (unchanged)
vim.opt.spell = true
vim.opt.spelllang = { "en_us" }
vim.opt.fileencoding = "utf-8"
vim.opt.pumheight = 10
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.splitkeep = "cursor"
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.tabstop = 2
vim.opt.wrap = false
vim.opt.breakindent = true
vim.opt.numberwidth = 4
vim.opt.cursorline = false
vim.opt.path:append({ "**" })
vim.opt.wildignore:append({ "*/node_modules/*" })
vim.opt.mouse = "" -- Mouse disabled

-- Diagnostics (adjusted for 0.11)
vim.diagnostic.config({
  virtual_text = {
    spacing = 4,
    prefix = "●",
  },
  signs = {
    priority = 10,
    text = {
      [vim.diagnostic.severity.ERROR] = " ",
      [vim.diagnostic.severity.WARN] = " ",
      [vim.diagnostic.severity.HINT] = " ",
      [vim.diagnostic.severity.INFO] = " ",
    },
  },
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

-- Neovim 0.11-specific tweaks
vim.opt.shortmess:append("I") -- Disable intro message
vim.opt.diffopt:append("linematch:60") -- Improved diff algorithm (0.11)
