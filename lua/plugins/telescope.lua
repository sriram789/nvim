return {
    {
        "nvim-telescope/telescope.nvim",
        branch = "0.1.x",

        dependencies = {
            "nvim-lua/plenary.nvim",
        },

        config = function()

            local telescope = require("telescope")

            telescope.setup({
                defaults = {
                    layout_strategy = "horizontal",

                    layout_config = {
                        prompt_position = "top",
                    },

                    sorting_strategy = "ascending",

                    winblend = 0,
                },
            })

            local builtin = require("telescope.builtin")

            vim.keymap.set("n", "<leader>ff", builtin.find_files,
                { desc = "Find Files" })

            vim.keymap.set("n", "<leader>fg", builtin.live_grep,
                { desc = "Live Grep" })

            vim.keymap.set("n", "<leader>fb", builtin.buffers,
                { desc = "Buffers" })

            vim.keymap.set("n", "<leader>fh", builtin.help_tags,
                { desc = "Help Tags" })

            vim.keymap.set("n", "<leader>fr", builtin.oldfiles,
                { desc = "Recent Files" })

        end,
    },
}
