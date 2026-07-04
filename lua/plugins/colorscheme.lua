return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,

        config = function()
            require("catppuccin").setup({
                flavour = "mocha",

                transparent_background = false,

                term_colors = true,

                integrations = {
                    telescope = true,
                    treesitter = true,
                    native_lsp = {
                        enabled = true,
                    },
                    cmp = true,
                    gitsigns = true,
                    notify = true,
                    mini = true,
                },
            })

            vim.cmd.colorscheme("catppuccin")
        end,
    },
}
