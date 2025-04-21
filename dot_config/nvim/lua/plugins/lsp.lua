return {
	-- Mason (LSP Installer)
	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate", -- Auto-update registry
		config = function()
			require("mason").setup()
		end,
	},

	-- Mason LSPConfig (Bridge between Mason and nvim-lspconfig)
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "neovim/nvim-lspconfig" },
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "rust_analyzer" }, -- Add your LSPs
				automatic_installation = true,
			})
		end,
	},

	-- nvim-lspconfig (LSP configurations)
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")

			-- Function to set up LSP keybindings
			local function on_attach(_, bufnr)
				local opts = { buffer = bufnr, silent = true }
				-- vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
				-- vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
				-- vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
				-- vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
				vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format { async = true } end, opts)
			end

			-- Configure LSP servers
			local servers = {
				lua_ls = {
					settings = {
						Lua = { diagnostics = { globals = { "vim" } } },
					},
				},
				rust_analyzer = {},
			}

			for server, config in pairs(servers) do
				config.on_attach = on_attach
				config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
				lspconfig[server].setup(config)
			end
		end,
	},
	{
		"nvimdev/lspsaga.nvim",
		event = "LspAttach",
		dependencies = {
			"nvim-treesitter/nvim-treesitter", -- required for some lspsaga features
			"nvim-tree/nvim-web-devicons", -- optional, for icons
		},
		opts = {
			-- you can customize Lspsaga UI here
			ui = {
				border = "rounded",
				code_action = "🔧",
			},
			lightbulb = {
				enable = true,
				sign = false,
				virtual_text = true,
			},
			symbol_in_winbar = {
				enable = true,
			},
			diagnostic = {
				show_code_action = true,
				show_source = true,
			},
		},
		keys = {
			{ "gd",         "<cmd>Lspsaga goto_definition<CR>",            desc = "Goto Definition (Lspsaga)" },
			{ "gr",         "<cmd>Lspsaga finder<CR>",                     desc = "LSP Finder (Lspsaga)" },
			{ "K",          "<cmd>Lspsaga hover_doc<CR>",                  desc = "Hover Doc (Lspsaga)" },
			{ "<leader>ca", "<cmd>Lspsaga code_action<CR>",                mode = { "n", "v" },                     desc = "Code Action (Lspsaga)" },
			{ "<leader>rn", "<cmd>Lspsaga rename<CR>",                     desc = "Rename (Lspsaga)" },
			{ "<leader>dl", "<cmd>Lspsaga show_line_diagnostics<CR>",      desc = "Line Diagnostics (Lspsaga)" },
			{ "<leader>db", "<cmd>Lspsaga show_buf_diagnostics<CR>",       desc = "Buffer Diagnostics (Lspsaga)" },
			{ "<leader>dw", "<cmd>Lspsaga show_workspace_diagnostics<CR>", desc = "Workspace Diagnostics (Lspsaga)" },
			{ "[d",         "<cmd>Lspsaga diagnostic_jump_prev<CR>",       desc = "Prev Diagnostic (Lspsaga)" },
			{ "]d",         "<cmd>Lspsaga diagnostic_jump_next<CR>",       desc = "Next Diagnostic (Lspsaga)" },
		},
	},
	{
		"ray-x/lsp_signature.nvim",
		event = "InsertEnter",
		opts = {
			bind = true,
			handler_opts = {
				border = "rounded"
			}
		},
	}
}
