return {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    dependencies = {
        "tribela/vim-transparent" -- Remove background
    },
    config = function()
        require("catppuccin").setup({
            custom_highlights = function(colors)
                return {
                    LineNr = { fg = colors.mauve }
                }
            end
        })

        vim.cmd.colorscheme("catppuccin-frappe")
    end
}
