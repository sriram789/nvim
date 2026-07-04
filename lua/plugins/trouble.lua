return {
	{
		"folke/trouble.nvim",

		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},

		cmd = "Trouble",

		opts = {},

		keys = {
			{
				"<leader>xx",
				"<cmd>Trouble diagnostics toggle<cr>",
				desc = "Diagnostics",
			},

			{
				"<leader>xX",
				"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
				desc = "Buffer Diagnostics",
			},

			{
				"<leader>xs",
				"<cmd>Trouble symbols toggle focus=false<cr>",
				desc = "Symbols",
			},

			{
				"<leader>xl",
				"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
				desc = "LSP Definitions / References",
			},

			{
				"<leader>xq",
				"<cmd>Trouble qflist toggle<cr>",
				desc = "Quickfix List",
			},

			{
				"<leader>xt",
				"<cmd>Trouble todo toggle<cr>",
				desc = "TODOs",
			},
		},
	},
}
