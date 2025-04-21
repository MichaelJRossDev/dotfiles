return {
	"akinsho/toggleterm.nvim",
	opts = {
		direction = "float",
		float_opts = {
			border = "curved",
			winblend = 3,
		},
	},
	keys = {
		{ "<c-\\>", "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
		{
			"<leader>lg",
			function()
				local Terminal = require("toggleterm.terminal").Terminal
				local lazygit = Terminal:new({
					cmd = "lazygit",
					hidden = true,
					direction = "float",
					float_opts = {
						border = "double",
					},
				})
				lazygit:toggle()
			end,
			desc = "Toggle Lazygit",
		},
	},
}
