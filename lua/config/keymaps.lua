vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap

-- Save
keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })

-- Quit
keymap.set("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit" })

-- Clear search
keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Better window movement
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-l>", "<C-w>l")

-- Resize windows
keymap.set("n", "<C-Up>", ":resize -2<CR>")
keymap.set("n", "<C-Down>", ":resize +2<CR>")
keymap.set("n", "<C-Left>", ":vertical resize -2<CR>")
keymap.set("n", "<C-Right>", ":vertical resize +2<CR>")

-- Better indenting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- ============================
-- Diagnostics
-- ============================

-- Navigate diagnostics
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, {
	desc = "Previous Diagnostic",
})

vim.keymap.set("n", "]d", vim.diagnostic.goto_next, {
	desc = "Next Diagnostic",
})

-- Show diagnostics
vim.keymap.set("n", "<leader>ld", vim.diagnostic.open_float, {
	desc = "Line Diagnostics",
})

vim.keymap.set("n", "<leader>lD", vim.diagnostic.setloclist, {
	desc = "Diagnostics List",
})
