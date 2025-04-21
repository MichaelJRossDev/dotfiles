return {
	"ahmedkhalf/project.nvim",
	event = "VeryLazy",
	opts = {
		detection_methods = { "pattern" },
		patterns = { ".git", "Makefile", "package.json", "lazy-lock.json"},
		manual_mode = false,
	},
	config = function(_, opts)
		require("project_nvim").setup(opts)
		require("telescope").load_extension("projects")
	end,
	keys = {
		{ "<leader>tp", "<cmd>Telescope projects<CR>", desc = "Find Projects" },
	},
}
