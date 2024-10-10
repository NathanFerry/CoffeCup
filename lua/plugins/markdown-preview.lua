return {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && npm install",
    init = function()
        vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
    keys = {
        { "<leader>pp", "<cmd>MarkdownPreview<cr>", desc = "Open preview" },
        { "<leader>pq", "<cmd>MarkdownPreviewStop<cr>", desc = "Close preview" },
    },
}
