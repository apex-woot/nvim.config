-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.lazyvim_prettier_needs_config = true
vim.g.lazyvim_blink_main = true

vim.opt.spell = true
vim.opt.spelllang = { "en_us" }

vim.opt.updatetime = 3 -- Faster cursor responsiveness
vim.opt.cmdheight = 1 -- more space in the neovim command line for displaying messages
vim.opt.completeopt = { "menu", "menuone", "noselect" } -- mostly just for cmp
vim.opt.fileencoding = "utf-8" -- the encoding written to a file
vim.opt.pumheight = 10 -- pop up menu height
vim.opt.showtabline = 0 -- always show tabs
vim.opt.smartcase = true -- smart case
vim.opt.smartindent = true -- make indenting smarter again
vim.opt.splitbelow = true -- force all horizontal splits to go below current window
vim.opt.splitright = true -- force all vertical splits to go to the right of current window
vim.opt.swapfile = false -- creates a swapfile
vim.opt.termguicolors = true -- set term gui colors (most terminals support this)
vim.opt.undofile = true -- enable persistent undo
vim.opt.updatetime = 100 -- faster completion (4000ms default)
vim.opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.shiftwidth = 2 -- the number of spaces inserted for each indentation
vim.opt.cursorline = false -- highlight the current line
vim.opt.number = true -- set numbered lines
vim.opt.breakindent = true -- wrap lines with indent
vim.opt.relativenumber = true -- set relative numbered lines
vim.opt.numberwidth = 4 -- set number column width to 2 {default 4}
vim.opt.signcolumn = "yes" -- always show the sign column, otherwise it would shift the text each time
vim.opt.wrap = false -- display lines as one long line
vim.opt.path:append({ "**" }) -- Finding files - Search down into subfolders
vim.opt.wildignore:append({ "*/node_modules/*" })
vim.o.tabstop = 2 -- A TAB character looks like 4 spaces
vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 2 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 2 -- vim.opt.shiftwidth = 2
vim.opt.showcmd = false -- Don't show the command in the last line
vim.opt.ruler = false -- Don't show the ruler
vim.opt.fillchars = { eob = " " } -- change the character at the end of buffer
vim.opt.laststatus = 0 -- Always display the status line
vim.opt.splitkeep = "cursor"
vim.opt.mouse = ""
