return {
	{
		"Civitasv/cmake-tools.nvim",

		dependencies = {
			"nvim-lua/plenary.nvim",
		},

		ft = {
			"c",
			"cpp",
		},

		opts = {
			cmake_build_directory = "build",

			cmake_generate_options = {
				"-DCMAKE_EXPORT_COMPILE_COMMANDS=1",
			},

			cmake_soft_link_compile_commands = true,

			cmake_compile_commands_from_lsp = true,
		},

		keys = {
			{
				"<leader>cg",
				"<cmd>CMakeGenerate<CR>",
				desc = "Generate",
			},

			{
				"<leader>cb",
				"<cmd>CMakeBuild<CR>",
				desc = "Build",
			},

			{
				"<leader>cr",
				"<cmd>CMakeRun<CR>",
				desc = "Run",
			},

			{
				"<leader>cd",
				"<cmd>CMakeDebug<CR>",
				desc = "Debug",
			},

			{
				"<leader>cc",
				"<cmd>CMakeClean<CR>",
				desc = "Clean",
			},

			{
				"<leader>cs",
				"<cmd>CMakeSelectBuildType<CR>",
				desc = "Build Type",
			},

			{
				"<leader>ct",
				"<cmd>CMakeSelectTarget<CR>",
				desc = "Target",
			},
		},
	},
}
