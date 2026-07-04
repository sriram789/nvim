return {
    {
        "folke/which-key.nvim",
        event = "VeryLazy",

        opts = {
            preset = "modern",
            delay = 300,
        },

        config = function(_, opts)
            local wk = require("which-key")
            wk.setup(opts)

            wk.add({
                { "<leader>f", group = "Find" },
                { "<leader>g", group = "Git" },
                { "<leader>b", group = "Buffers" },
                { "<leader>l", group = "LSP" },
                { "<leader>t", group = "Terminal" },
                { "<leader>d", group = "Debug" },
                { "<leader>w", group = "Window" },
            })
        end,
    },
}
