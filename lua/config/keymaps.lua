vim.g.mapleader = " "

vim.keymap.set("n", "<leader>w", "<cmd>w<cr>")
vim.keymap.set("n", "<leader>q", "<cmd>q<cr>")
vim.keymap.set("n", "<leader>e", "<cmd>Explore<cr>")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- Tab on visual mode
vim.keymap.set("v", "<Tab>", ">gv")
vim.keymap.set("v", "<S-Tab>", "<gv")

-- Split window
vim.keymap.set("n", "ss", "<cmd>split<CR>", { desc = "Split screen horizontaly" })
vim.keymap.set("n", "sv", "<cmd>vsplit<CR>", { desc = "Split screen verticaly" })

-- Move between buffers
vim.keymap.set("n", "sh", "<C-w>h", { desc = "Move to left buffer" })
vim.keymap.set("n", "sj", "<C-w>j", { desc = "Move to below buffer" })
vim.keymap.set("n", "sk", "<C-w>k", { desc = "Move to above buffer" })
vim.keymap.set("n", "sl", "<C-w>l", { desc = "Move to right buffer" })

-- Resize buffer
vim.keymap.set("n", "<C-S-h>", "<C-w><")
vim.keymap.set("n", "<C-S-j>", "<C-w>-")
vim.keymap.set("n", "<C-S-k>", "<C-w>+")
vim.keymap.set("n", "<C-S-l>", "<C-w>>")

-- Telescope
local telescope = require("telescope.builtin")
vim.keymap.set("n", "<leader>sf", telescope.find_files, { desc = "Find a file" })
vim.keymap.set("n", "<leader>sc", telescope.colorscheme, { desc = "List colorschemes" })

-- LSP
vim.keymap.set("n", "<leader>li", "<cmd>LspInfo<CR>", { desc = "Display LSP Info" })
vim.keymap.set("n", "<leader>lm", "<cmd>Mason<CR>", { desc = "Display Mason menu" })

-- Lazy
vim.keymap.set("n", "<leader>m", "<cmd>Lazy<CR>", { desc = "Display Lazy menu" })
