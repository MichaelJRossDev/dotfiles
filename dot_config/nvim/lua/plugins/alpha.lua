return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	dependencies = { "nvim-tree/nvim-web-devicons" }, -- for icons
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			"───────▄▀▀▀▀▀▀▀▀▀▀▄▄",
			"────▄▀▀░░░░░░░░░░░░░▀▄",
			"──▄▀░░░░░░░░░░░░░░░░░░▀▄",
			"──█░░░░░░░░░░░░░░░░░░░░░▀▄",
			"─▐▌░░░░░░░░▄▄▄▄▄▄▄░░░░░░░▐▌",
			"─█░░░░░░░░░░░▄▄▄▄░░▀▀▀▀▀░░█",
			"▐▌░░░░░░░▀▀▀▀░░░░░▀▀▀▀▀░░░▐▌",
			"█░░░░░░░░░▄▄▀▀▀▀▀░░░░▀▀▀▀▄░█",
			"█░░░░░░░░░░░░░░░░▀░░░▐░░░░░▐▌",
			"▐▌░░░░░░░░░▐▀▀██▄░░░░░░▄▄▄░▐▌",
			"─█░░░░░░░░░░░▀▀▀░░░░░░▀▀██░░█",
			"─▐▌░░░░▄░░░░░░░░░░░░░▌░░░░░░█",
			"──▐▌░░▐░░░░░░░░░░░░░░▀▄░░░░░█",
			"───█░░░▌░░░░░░░░▐▀░░░░▄▀░░░▐▌",
			"───▐▌░░▀▄░░░░░░░░▀░▀░▀▀░░░▄▀",
			"───▐▌░░▐▀▄░░░░░░░░░░░░░░░░█",
			"───▐▌░░░▌░▀▄░░░░▀▀▀▀▀▀░░░█",
			"───█░░░▀░░░░▀▄░░░░░░░░░░▄▀",
			"──▐▌░░░░░░░░░░▀▄░░░░░░▄▀",
			"─▄▀░░░▄▀░░░░░░░░▀▀▀▀█▀",
			"▀░░░▄▀░░░░░░░░░░▀░░░▀▀▀▀▄▄▄▄▄",
		}

		dashboard.section.buttons.val = {
			dashboard.button("f", "  Find File", ":Telescope find_files<CR>"),
			dashboard.button("p", "  Projects", ":Telescope projects<CR>"),
			dashboard.button("o", "󰉋  Open Oil", ":Oil<CR>"),
			dashboard.button("r", "  Recent Files", ":Telescope oldfiles<CR>"),
			dashboard.button("q", "  Quit", ":qa<CR>"),
		}

		dashboard.section.footer.val = "🚀 VSCode is Cringe"
		dashboard.opts.opts.noautocmd = true

		alpha.setup(dashboard.opts)
	end,
}
