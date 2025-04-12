return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {},
	keys = {
		{
			"<leader>a",
			function() require("harpoon"):list():add() end,
			desc = "Harpoon: Add file"
		},
		{
			"<C-e>",
			function() require("harpoon").ui:toggle_quick_menu(require("harpoon"):list()) end,
			desc = "Harpoon: Toggle quick menu"
		},
		{
			"<C-1>",
			function() require("harpoon"):list():select(1) end,
			desc = "Harpoon: Go to file 1"
		},
		{
			"<C-2>",
			function() require("harpoon"):list():select(2) end,
			desc = "Harpoon: Go to file 2"
		},
		{
			"<C-3>",
			function() require("harpoon"):list():select(3) end,
			desc = "Harpoon: Go to file 3"
		},
		{
			"<C-4>",
			function() require("harpoon"):list():select(4) end,
			desc = "Harpoon: Go to file 4"
		},
		{
			"<C-S-N>",
			function() require("harpoon"):list():next() end,
			desc = "Harpoon: Next file"
		},
	},
}
