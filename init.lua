require("config.lazy")
require("config.keymaps")

-- Relative line number
vim.opt.number = true
vim.opt.relativenumber = true

-- Spliting
vim.opt.splitbelow = true
vim.opt.splitright = true

-- ScrollOff
vim.opt.scrolloff = 10

-- Seting tab to use 4 spaces
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- disable line wraping
vim.opt.wrap = false

-- Setting virtualedit for visual block mode (Allow cursor to go further than last character)
vim.opt.virtualedit = "block"

-- Ignore case for Neovim command completion
vim.opt.ignorecase = true

-- Enable 24 bits colors
vim.opt.termguicolors = true
