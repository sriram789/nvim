return {
	{
		"folke/todo-comments.nvim",

		dependencies = {
			"nvim-lua/plenary.nvim",
		},

		event = "VeryLazy",

		opts = {},

		keys = {
			{
				"]t",
				function()
					require("todo-comments").jump_next()
				end,
				desc = "Next Todo",
			},

			{
				"[t",
				function()
					require("todo-comments").jump_prev()
				end,
				desc = "Previous Todo",
			},

			{
				"<leader>xt",
				"<cmd>TodoTrouble<CR>",
				desc = "Todo List",
			},

			{
				"<leader>st",
				"<cmd>TodoTelescope<CR>",
				desc = "Search Todos",
			},
		},
	},
}
