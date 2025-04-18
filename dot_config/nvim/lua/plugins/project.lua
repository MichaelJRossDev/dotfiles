return {
	"ahmedkhalf/project.nvim",
	event = "VeryLazy",
	opts = {},
	config = function(_, opts)
		require("project_nvim").setup(opts)
		require("telescope").load_extension("projects")
	end,
	keys = {
		{ "<leader>tp", "<cmd>Telescope projects<CR>", desc = "Find Projects" },
	},
}
