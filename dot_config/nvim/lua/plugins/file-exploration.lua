return {
	{
		'stevearc/oil.nvim',
		opts = {
			default_file_explorer = true,
			win_options = {
				winbar = "%{v:lua.require('oil').get_current_dir()}",
			},
			view_options = {
				show_hidden = true,
			}
		},
		dependencies = { { "nvim-tree/nvim-web-devicons", opts = {} } },
		lazy = false,
		keys = {
			{ "<leader>ee", function() require("oil").open() end, desc = "Open Oil file explorer" },
		}
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		event = "VimEnter",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
			-- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
		},
		---@module "neo-tree"
		---@type neotree.Config?
		opts = {
			filesystem = {
				hijack_netrw_behavior = "disabled",
			}
		},
		keys = {
			{ "<leader>e", "<cmd>Neotree toggle<CR>", desc = "Toggle Neo-tree" },
		}
	}
}
