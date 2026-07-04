return {
    {
        "stevearc/conform.nvim",

        event = { "BufWritePre" },

        opts = {
            formatters_by_ft = {
                lua = { "stylua" },

                c = { "clang-format" },
                cpp = { "clang-format" },

                python = {
                    "isort",
                    "black",
                },

                javascript = { "prettier" },
                typescript = { "prettier" },

                json = { "prettier" },
                yaml = { "prettier" },
                markdown = { "prettier" },

                java = { "google-java-format" },

                bash = { "shfmt" },
            },

            format_on_save = {
                timeout_ms = 500,
                lsp_fallback = true,
            },
        },
    },
}
