return {
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",

        dependencies = {
            "williamboman/mason.nvim",
        },

        opts = {
            ensure_installed = {
                --------------------------------------------------
                -- LSP
                --------------------------------------------------
                "clangd",
                "pyright",
                "lua-language-server",
                "jdtls",
                "bash-language-server",
                "typescript-language-server",

                --------------------------------------------------
                -- Formatters
                --------------------------------------------------
                "clang-format",
                "stylua",
                "prettier",
                "ruff",

                --------------------------------------------------
                -- Linters
                --------------------------------------------------
                "eslint_d",

                --------------------------------------------------
                -- Debuggers
                --------------------------------------------------
                "debugpy",
                "codelldb",
            },

            auto_update = false,

            run_on_start = true,

            start_delay = 3000,

            debounce_hours = 24,
        },
    },
}
