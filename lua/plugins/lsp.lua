return {
	{
		'saghen/blink.cmp',
		dependencies = { 'rafamadriz/friendly-snippets' },
		version = '1.*',
		opts = {
			keymap = {
				preset = 'enter',

				["<tab>"] = { 'select_next', 'fallback' },
				["<s-tab>"] = { 'select_prev', 'fallback' },
				['<C-e>'] = false,
				['<C-space>'] = { function(cmp) cmp.show({ providers = { 'snippets' } }) end },
			},

			appearance = {
				nerd_font_variant = 'mono'
			},

			completion = { documentation = { auto_show = false } },

			sources = {
				default = { 'lsp', 'path', 'snippets', 'buffer' },
			},

			fuzzy = { implementation = "prefer_rust_with_warning" }
		},
		opts_extend = { "sources.default" }
	},
	{
		"williamboman/mason.nvim",
		opts = {}
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = {
			"williamboman/mason.nvim",
			"neovim/nvim-lspconfig",
		},
		opts = function()
			local capabilities = require("blink.cmp").get_lsp_capabilities()

			return {
				handlers = {
					function(server_name)
						require("lspconfig")[server_name].setup({capabilities = capabilities})
					end,
				},
			}
		end,
	}
}
