return {
	{
		"sindrets/diffview.nvim",

		dependencies = {
			"nvim-lua/plenary.nvim",
		},

		cmd = {
			"DiffviewOpen",
			"DiffviewClose",
		},

		keys = {
			{
				"<leader>gd",
				"<cmd>DiffviewOpen<CR>",
				desc = "Git Diff",
			},

			{
				"<leader>gD",
				"<cmd>DiffviewClose<CR>",
				desc = "Close Diff",
			},
		},

		opts = {},
	},
}
