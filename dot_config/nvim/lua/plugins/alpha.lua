return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")
		local header = {
			[[                                                                       ]],
			[[                                                                     ]],
			[[       ████ ██████           █████      ██                     ]],
			[[      ███████████             █████                             ]],
			[[      █████████ ███████████████████ ███   ███████████   ]],
			[[     █████████  ███    █████████████ █████ ██████████████   ]],
			[[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
			[[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
			[[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
			[[                                                                       ]],
		}

		dashboard.section.header.val = header
		dashboard.section.buttons.val = {
			dashboard.button("f", "🕵️‍♂️  Find File", ":Telescope find_files<CR>"),
			dashboard.button("p", "🚀  Projects", ":Telescope projects<CR>"),
			dashboard.button("o", "📂  Open Oil", ":Oil<CR>"),
			dashboard.button("r", "⏳  Recent Files", ":Telescope oldfiles<CR>"),
			dashboard.button("n", "📝 New File", ":enew<CR>"),
			dashboard.button("q", "🚫  Quit", ":qa<CR>"),
		}

		dashboard.section.footer.val = "🚀 VSCode is Cringe"
		dashboard.opts.opts.noautocmd = true

		alpha.setup(dashboard.opts)
	end,
}
