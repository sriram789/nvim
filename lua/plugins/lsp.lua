return {
    {
        "neovim/nvim-lspconfig",

        event = {
            "BufReadPre",
            "BufNewFile",
        },

        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "saghen/blink.cmp",
        },

        config = function()
            ----------------------------------------------------------
            -- Blink capabilities
            ----------------------------------------------------------

            local capabilities = require("blink.cmp").get_lsp_capabilities()

            ----------------------------------------------------------
            -- Diagnostics
            ----------------------------------------------------------

            vim.diagnostic.config({
                virtual_text = true,
                underline = true,
                update_in_insert = false,
                severity_sort = true,

                float = {
                    border = "rounded",
                },
            })

            ----------------------------------------------------------
            -- LSP Keymaps
            ----------------------------------------------------------

            vim.api.nvim_create_autocmd("LspAttach", {
                callback = function(event)
                    local opts = {
                        buffer = event.buf,
                        silent = true,
                    }

                    local map = vim.keymap.set

                    map("n", "gd", vim.lsp.buf.definition, opts)
                    map("n", "gD", vim.lsp.buf.declaration, opts)
                    map("n", "gr", vim.lsp.buf.references, opts)
                    map("n", "gi", vim.lsp.buf.implementation, opts)

                    map("n", "K", vim.lsp.buf.hover, opts)
                    map("n", "<C-k>", vim.lsp.buf.signature_help, opts)

                    map("n", "<leader>rn", vim.lsp.buf.rename, opts)
                    map("n", "<leader>ca", vim.lsp.buf.code_action, opts)

                    map("n", "[d", vim.diagnostic.goto_prev, opts)
                    map("n", "]d", vim.diagnostic.goto_next, opts)

                    map("n", "<leader>d", vim.diagnostic.open_float, opts)
                end,
            })

            ----------------------------------------------------------
            -- Lua
            ----------------------------------------------------------

            vim.lsp.config("lua_ls", {
                capabilities = capabilities,

                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { "vim" },
                        },

                        workspace = {
                            checkThirdParty = false,
                        },

                        telemetry = {
                            enable = false,
                        },
                    },
                },
            })

            ----------------------------------------------------------
            -- C / C++
            ----------------------------------------------------------

            vim.lsp.config("clangd", {
                capabilities = capabilities,
            })

            ----------------------------------------------------------
            -- Python
            ----------------------------------------------------------

            vim.lsp.config("pyright", {
                capabilities = capabilities,
            })

            ----------------------------------------------------------
            -- Java
            ----------------------------------------------------------

            vim.lsp.config("jdtls", {
                capabilities = capabilities,
            })

            ----------------------------------------------------------
            -- JavaScript / TypeScript
            ----------------------------------------------------------

            vim.lsp.config("ts_ls", {
                capabilities = capabilities,
            })

            ----------------------------------------------------------
            -- Bash
            ----------------------------------------------------------

            vim.lsp.config("bashls", {
                capabilities = capabilities,
            })

            ----------------------------------------------------------
            -- Enable Servers
            ----------------------------------------------------------

            vim.lsp.enable("lua_ls")
            vim.lsp.enable("clangd")
            vim.lsp.enable("pyright")
            vim.lsp.enable("jdtls")
            vim.lsp.enable("ts_ls")
            vim.lsp.enable("bashls")
        end,
    },
}
