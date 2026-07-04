return {
	{
		"lewis6991/gitsigns.nvim",

		event = { "BufReadPre", "BufNewFile" },

		config = function()
			require("gitsigns").setup({
				current_line_blame = true,

				current_line_blame_opts = {
					delay = 500,
				},

				signs = {
					add = { text = "│" },
					change = { text = "│" },
					delete = { text = "_" },
					topdelete = { text = "‾" },
					changedelete = { text = "~" },
				},
			})

			local gs = require("gitsigns")

			vim.keymap.set("n", "]h", gs.next_hunk, { desc = "Next Git Hunk" })
			vim.keymap.set("n", "[h", gs.prev_hunk, { desc = "Previous Git Hunk" })

			vim.keymap.set("n", "<leader>gh", gs.preview_hunk, {
				desc = "Preview Hunk",
			})

			vim.keymap.set("n", "<leader>gs", gs.stage_hunk, {
				desc = "Stage Hunk",
			})

			vim.keymap.set("n", "<leader>gr", gs.reset_hunk, {
				desc = "Reset Hunk",
			})

			vim.keymap.set("n", "<leader>gb", gs.blame_line, {
				desc = "Blame Line",
			})
		end,
	},
}
