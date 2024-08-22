vim.g.mapleader = " "

vim.keymap.set("n", "<leader>w", "<cmd>w<cr>")
vim.keymap.set("n", "<leader>q", "<cmd>q<cr>")
vim.keymap.set("n", "<leader>e", "<cmd>Explore<cr>")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- Telescope
local telescope = require("telescope.builtin")
vim.keymap.set("n", "<leader>sf", telescope.find_files, {desc = "Find a file"})
vim.keymap.set("n", "<leader>sc", telescope.colorscheme, {desc = "List colorschemes"})

-- LSP
vim.keymap.set("n", "<leader>li", "<cmd>LspInfo<CR>", {desc = "Display LSP Info"})
vim.keymap.set("n", "<leader>lm", "<cmd>Mason<CR>", {desc = "Display Mason menu"})

-- Lazy
vim.keymap.set("n", "<leader>m", "<cmd>Lazy<CR>", {desc = "Display Lazy menu"})

-- Tab on visual mode
vim.keymap.set("v", "<Tab>", ">gv")
vim.keymap.set("v", "<S-Tab>", "<gv")
