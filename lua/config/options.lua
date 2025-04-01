-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.lazyvim_prettier_needs_config = true
vim.g.lazyvim_blink_main = true

vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })

-- Improve input responsiveness
vim.opt.timeoutlen = 300 -- Short delay for mappings, but not too aggressive
vim.opt.ttimeoutlen = 1 -- Fast key repeat responsiveness

-- Reduce UI delays
vim.opt.updatetime = 50 -- Faster cursor events, LSP responsiveness
vim.opt.cmdheight = 0 -- Hide command line unless needed
vim.opt.signcolumn = "yes" -- Avoid text shifting
vim.opt.splitkeep = "cursor"

-- Essential options
vim.opt.spell = true
vim.opt.spelllang = { "en_us" }
vim.opt.fileencoding = "utf-8"
vim.opt.pumheight = 10 -- Pop-up menu height
vim.opt.smartcase = true -- Smart case search
vim.opt.smartindent = true -- Enable smart indentation
vim.opt.splitbelow = true -- Force horizontal splits below
vim.opt.splitright = true -- Force vertical splits to the right
vim.opt.swapfile = false -- Disable swap file for performance
vim.opt.termguicolors = true -- Enable 24-bit color
vim.opt.undofile = true -- Persistent undo

-- Editor behavior
vim.opt.expandtab = true -- Convert tabs to spaces
vim.opt.shiftwidth = 2 -- Indentation width
vim.opt.softtabstop = 2 -- Make tab key feel natural
vim.opt.tabstop = 2 -- How many spaces a tab counts as
vim.opt.wrap = false -- No line wrapping
vim.opt.breakindent = true -- Indent wrapped lines
vim.opt.number = true -- Enable line numbers
vim.opt.relativenumber = true -- Relative line numbers
vim.opt.numberwidth = 4 -- Keep number column width consistent
vim.opt.cursorline = false -- Don't highlight the current line
vim.opt.path:append({ "**" }) -- Search in subdirectories
vim.opt.wildignore:append({ "*/node_modules/*" }) -- Ignore node_modules

-- UI improvements
vim.opt.showcmd = false -- Don't show typed commands
vim.opt.ruler = false -- Hide the ruler
vim.opt.fillchars = { eob = " " } -- Remove ~ at end of buffer
vim.opt.laststatus = 0 -- Hide status bar when not needed
vim.opt.mouse = "" -- Disable mouse support

vim.diagnostic.config({
  virtual_lines = { current_line = true }, -- Enable virtual lines
  virtual_text = false, -- Disable virtual text to avoid overlap
})
