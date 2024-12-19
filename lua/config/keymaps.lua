-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "jk", "<ESC>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>U", vim.cmd.UndotreeToggle)
vim.keymap.set("n", "s", "cl", { noremap = true, silent = true })

-- Quickfix navigation
vim.keymap.set("n", "<leader>qn", ":cnext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>qp", ":cprev<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>qc", ":cclose<CR>", { noremap = true, silent = true })
