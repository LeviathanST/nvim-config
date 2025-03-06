local map = vim.keymap.set
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--- NOTE: Window
--- NOTE: Open and Close windows
map("n", "<leader>wv", "<C-w>v", { desc = "Split vertical window" })
map("n", "<leader>ws", "<C-w>s", { desc = "Split horizontal window" })

map("n", "<leader>wq", "<C-w>q", { desc = "Quit window" })
--- NOTE: Moving cursor to other windows
map("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
map("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
map("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
map("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

--- NOTE: Moving windows around
map("n", "<leader>l", "<C-w>L", { desc = "Move window to right" })
map("n", "<leader>k", "<C-w>K", { desc = "Move window to top" })
map("n", "<leader>j", "<C-w>J", { desc = "Move window to bot" })
map("n", "<leader>h", "<C-w>H", { desc = "Move window to left" })

--- NOTE: Window resizing
map("n", "<A-j>", "<C-w>-", { desc = "Decrease window height by 1" })
map("n", "<A-k>", "<C-w>+", { desc = "Increase window height by 1" })
map("n", "<A-l>", "<C-w><", { desc = "Derease window width by 1" })
map("n", "<A-h>", "<C-w>>", { desc = "Increase window width by 1" })
