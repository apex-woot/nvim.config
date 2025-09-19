-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local opts = { noremap = true, silent = true }
vim.keymap.set("i", "jk", "<ESC>", opts)

-- Quickfix navigation
vim.keymap.set("n", "<leader>qn", ":cnext<CR>", opts)
vim.keymap.set("n", "<leader>qp", ":cprev<CR>", opts)
vim.keymap.set("n", "<leader>qc", ":cclose<CR>", opts)


-- SMOOOTH SCROLLING
-- vim.keymap.set("n", "<C-K>", '<Cmd>call smoothie#do("\\<C-U>")<CR>', { noremap = true })
-- vim.keymap.set("n", "<C-J>", '<Cmd>call smoothie#do("\\<C-D>")<CR>', { noremap = true })
