return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "master",
        build = ":TSUpdate",

        event = { "BufReadPost", "BufNewFile" },

        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = {
                    "c",
                    "cpp",
                    "python",
                    "java",
                    "javascript",
                    "typescript",
                    "lua",
                    "bash",
                    "json",
                    "yaml",
                    "toml",
                    "cmake",
                    "markdown",
                    "markdown_inline",
                    "vim",
                    "vimdoc",
                },

                highlight = { enable = true },
                indent = { enable = true },

                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = "<C-space>",
                        node_incremental = "<C-space>",
                        node_decremental = "<BS>",
                    },
                },
            })
        end,
    },
}
