return {
	{
		"nvim-neotest/neotest",

		dependencies = {
			"nvim-neotest/nvim-nio",
			"nvim-lua/plenary.nvim",
			"antoinemadec/FixCursorHold.nvim",
			"nvim-treesitter/nvim-treesitter",

			-- Adapters
			"nvim-neotest/neotest-python",
			"nvim-neotest/neotest-jest",
		},

		keys = {
			{
				"<leader>tt",
				function()
					require("neotest").run.run()
				end,
				desc = "Run nearest test",
			},

			{
				"<leader>tf",
				function()
					require("neotest").run.run(vim.fn.expand("%"))
				end,
				desc = "Run test file",
			},

			{
				"<leader>td",
				function()
					require("neotest").run.run({ strategy = "dap" })
				end,
				desc = "Debug test",
			},

			{
				"<leader>ts",
				function()
					require("neotest").summary.toggle()
				end,
				desc = "Test Summary",
			},

			{
				"<leader>to",
				function()
					require("neotest").output.open({ enter = true })
				end,
				desc = "Test Output",
			},
		},

		config = function()
			require("neotest").setup({
				adapters = {
					require("neotest-python")({
						dap = { justMyCode = false },
					}),

					require("neotest-jest")({
						jestCommand = "npm test --",
					}),
				},
			})
		end,
	},
}
