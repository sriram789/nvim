return {
	{
		"stevearc/overseer.nvim",

		cmd = {
			"OverseerRun",
			"OverseerToggle",
		},

		opts = {},

		keys = {
			{
				"<leader>or",
				"<cmd>OverseerRun<CR>",
				desc = "Run Task",
			},

			{
				"<leader>ot",
				"<cmd>OverseerToggle<CR>",
				desc = "Task List",
			},

			{
				"<leader>oa",
				"<cmd>OverseerQuickAction<CR>",
				desc = "Quick Action",
			},

			{
				"<leader>oi",
				"<cmd>OverseerInfo<CR>",
				desc = "Task Info",
			},
		},

		config = function(_, opts)
			require("overseer").setup(opts)
		end,
	},
}
