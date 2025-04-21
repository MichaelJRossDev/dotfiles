return {
	{
		"tpope/vim-fugitive",
		cmd = {
			"Git",
			"G",
			"Gdiffsplit",
			"Gread",
			"Gwrite",
			"Gvdiffsplit",
			"Gedit",
		},
		keys = {
			{ "<leader>gs", "<cmd>Git<CR>",        desc = "Git status (Fugitive)" },
			{ "<leader>gc", "<cmd>Git commit<CR>", desc = "Git commit" },
			{ "<leader>gb", "<cmd>Git blame<CR>",  desc = "Git blame" },
			{ "<leader>gd", "<cmd>Gdiffsplit<CR>", desc = "Git diff (split)" },
			{ "<leader>gl", "<cmd>0Gclog<CR>",     desc = "Git log" },
		},
	},
	{
		"lewis6991/gitsigns.nvim",
		event = "BufReadPre",
		opts = {
		},
		keys = {
			-- Navigation
			{ "]c",         function() require("gitsigns").next_hunk() end,                desc = "Next hunk" },
			{ "[c",         function() require("gitsigns").prev_hunk() end,                desc = "Previous hunk" },

			-- Actions
			{ "<leader>ghs", function() require("gitsigns").stage_hunk() end,               desc = "Stage hunk" },
			{ "<leader>ghr", function() require("gitsigns").reset_hunk() end,               desc = "Reset hunk" },
			{ "<leader>ghS", function() require("gitsigns").stage_buffer() end,             desc = "Stage buffer" },
			{ "<leader>ghu", function() require("gitsigns").undo_stage_hunk() end,          desc = "Undo stage hunk" },
			{ "<leader>ghR", function() require("gitsigns").reset_buffer() end,             desc = "Reset buffer" },
			{ "<leader>ghp", function() require("gitsigns").preview_hunk() end,             desc = "Preview hunk" },
			{ "<leader>ghb", function() require("gitsigns").blame_line { full = true } end, desc = "Blame line (full)" },
			{ "<leader>ghd", function() require("gitsigns").diffthis() end,                 desc = "Diff this" },
			{ "<leader>ghD", function() require("gitsigns").diffthis("~") end,              desc = "Diff against previous" },
			{ "<leader>ght", function() require("gitsigns").toggle_deleted() end,           desc = "Toggle deleted" },

			-- Visual mode
			{
				"<leader>hs",
				function() require("gitsigns").stage_hunk { vim.fn.line("."), vim.fn.line("v") } end,
				mode = "v",
				desc = "Stage hunk (visual)",
			},
			{
				"<leader>hr",
				function() require("gitsigns").reset_hunk { vim.fn.line("."), vim.fn.line("v") } end,
				mode = "v",
				desc = "Reset hunk (visual)",
			},
		}

	},
	{
		{
			"NeogitOrg/neogit",
			dependencies = {
				"nvim-lua/plenary.nvim",
				"sindrets/diffview.nvim",
				"nvim-telescope/telescope.nvim",
			},
		}
	}
}
