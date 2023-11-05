vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set({"n", "v"}, "x", '"-x') -- do not yank text with x
keymap.set("n", "<Esc>", "<CMD>nohl<CR>")

keymap.set("n", "<S-l>", "<CMD>bnext<CR>")
keymap.set("n", "<S-h>", "<CMD>bprevious<CR>")
keymap.set("n", "<leader>bd", "<CMD>bdelete<CR>")

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>") -- close current split window

keymap.set("n", "<C-l>", "<C-w>l")
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
