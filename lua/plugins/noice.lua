return {
	{
		"folke/noice.nvim",

		event = "VeryLazy",

		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},

		opts = {
			lsp = {
				progress = {
					enabled = true,
				},

				hover = {
					enabled = true,
				},

				signature = {
					enabled = true,
				},
			},

			presets = {
				bottom_search = false,
				command_palette = true,
				long_message_to_split = true,
				inc_rename = false,
				lsp_doc_border = true,
			},
		},
	},

	{
		"rcarriga/nvim-notify",

		opts = {
			timeout = 3000,
			render = "wrapped-default",
		},
	},
}
