return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim"
    },
    config = function ()
        require("mason").setup()
        require("mason-lspconfig").setup()

        local on_attach = function(client, bufnr)

            local opts = { silent = true }
            local keymap = vim.keymap
            opts.buffer = bufnr

            opts.desc = "Show LSP references"
            keymap.set("n", "<leader>lR", "<cmd>Telescope lsp_references<CR>", opts)

            opts.desc = "Show LSP definitions"
            keymap.set("n", "<leader>ld", "<cmd>Telescope lsp_definitions<CR>", opts)

            opts.desc = "Go to declaration"
            keymap.set("n", "<leader>lD", vim.lsp.buf.declaration, opts)

            opts.desc = "Show LSP implementations"
            keymap.set("n", "<leader>li", "<cmd>Telescope lsp_implementations<CR>", opts)

            opts.desc = "Show LSP type definitions"
            keymap.set("n", "<leader>lt", "<cmd>Telescope lsp_type_definitions<CR>", opts)

            opts.desc = "See available code actions"
            keymap.set({ "n", "v" }, "<leader>la", vim.lsp.buf.code_action, opts)

            opts.desc = "Smart rename"
            keymap.set("n", "<leader>lr", vim.lsp.buf.rename, opts)

            opts.desc = "Show documentation for what is under cursor"
            keymap.set("n", "K", vim.lsp.buf.hover, opts)
        end

        require("mason-lspconfig").setup_handlers({
            function (server_name)
                require("lspconfig")[server_name].setup({
                    capabilities = require("cmp_nvim_lsp").default_capabilities(),
                    on_attach = on_attach
                })
            end,

            ["lua_ls"] = function()
                require("lspconfig").lua_ls.setup({
                    capabilities = require("cmp_nvim_lsp").default_capabilities(),
                    on_attach = on_attach,
                    settings = {
                        Lua = {
                            diagnostics = {
                                globals = { "vim" }
                            },
                            workspace = {
                                library = {
                                    [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                                    [vim.fn.stdpath("config") .. "/lua"] = true
                                }
                            }
                        }
                    }
                })
            end
        })
    end
}