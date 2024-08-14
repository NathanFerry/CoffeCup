return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim"
    },
    config = function()
        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")

        mason.setup({})

        mason_lspconfig.setup({
            ensure_install = {
                "lua_ls",
                "rust_analyzer"
            },

            automatic_installation = true -- auto-install configured servers (with lspconfig)
        })
    end,
}
