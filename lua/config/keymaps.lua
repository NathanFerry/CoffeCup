local keymap = vim.keymap

vim.g.mapleader = " "

keymap.set("n", "<leader>w", "<cmd>w<cr>")
keymap.set("n", "<leader>q", "<cmd>q<cr>")
keymap.set("n", "<leader>Q", "<cmd>q!<cr>")
keymap.set("n", "<leader>e", "<cmd>Explore<cr>")
keymap.set("n", "<C-u>", "<C-u>zz")

-- Tab on visual mode
keymap.set("v", "<Tab>", ">gv")
keymap.set("v", "<S-Tab>", "<gv")

-- Hide highlights
keymap.set({ "n", "v" }, "<leader>/", "<cmd>noh<cr>")

-- Split window
keymap.set("n", "ss", "<cmd>split<CR>", { desc = "Split screen horizontaly" })
keymap.set("n", "sv", "<cmd>vsplit<CR>", { desc = "Split screen verticaly" })

-- Move between buffers
keymap.set("n", "s", "<C-w>")
--keymap.set("n", "sh", "<C-w>h", { desc = "Move to left buffer" })
--keymap.set("n", "sj", "<C-w>j", { desc = "Move to below buffer" })
--keymap.set("n", "sk", "<C-w>k", { desc = "Move to above buffer" })
--keymap.set("n", "sl", "<C-w>l", { desc = "Move to right buffer" })

-- Resize buffer
keymap.set("n", "<C-S-h>", "<C-w><")
keymap.set("n", "<C-S-j>", "<C-w>-")
keymap.set("n", "<C-S-k>", "<C-w>+")
keymap.set("n", "<C-S-l>", "<C-w>>")

-- Telescope
local telescope = require("telescope.builtin")
keymap.set("n", "<leader>sf", telescope.find_files, { desc = "Find a file" })
keymap.set("n", "<leader>sc", telescope.colorscheme, { desc = "List colorschemes" })

-- LSP
keymap.set("n", "<leader>li", "<cmd>LspInfo<CR>", { desc = "Display LSP Info" })
keymap.set("n", "<leader>lm", "<cmd>Mason<CR>", { desc = "Display Mason menu" })

-- Icon-Picker
vim.keymap.set("n", "<Leader><Leader>i", "<cmd>IconPickerNormal<cr>")
vim.keymap.set("n", "<Leader><Leader>y", "<cmd>IconPickerYank<cr>") --> Yank the selected icon into register
vim.keymap.set("i", "<C-e>", "<cmd>IconPickerInsert<cr>")

-- Lazy
keymap.set("n", "<leader>m", "<cmd>Lazy<CR>", { desc = "Display Lazy menu" })
