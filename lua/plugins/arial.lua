return {
	{
		"stevearc/aerial.nvim",

		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},

		opts = {
			layout = {
				default_direction = "right",
				min_width = 30,
			},

			attach_mode = "window",

			show_guides = true,

			filter_kind = false,
		},

		keys = {
			{
				"<leader>a",
				"<cmd>AerialToggle!<CR>",
				desc = "Aerial Outline",
			},
		},
	},
}
