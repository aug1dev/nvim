return {
	{
		"mason-org/mason.nvim",
		build = ":MasonUpdate",
		opts = {},
	},
	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = { "mason-org/mason.nvim", "neovim/nvim-lspconfig" },
		opts = {
			ensure_installed = { "lua_ls", "clangd", "ols", "gopls" },
		},
	},
	{
		"saghen/blink.cmp",
		dependencies = "rafamadriz/friendly-snippets",
		version = "*",
		opts = {
			cmdline = {
      	enabled = false,
    	},
			keymap = {
				preset = "none",
				["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
				["<CR>"] = { "accept", "fallback" },
				["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
				["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
			},
			appearance = {
				use_nvim_cmp_as_default = true,
				nerd_font_variant = "mono",
			},
			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"saghen/blink.cmp",
		},
		config = function()
			local capabilities = require("blink.cmp").get_lsp_capabilities()
			vim.lsp.config("*", {
				capabilities = capabilities,
			})

			vim.api.nvim_create_autocmd("LspAttach", {
				group = vim.api.nvim_create_augroup("UserLspConfig", {}),
				callback = function(ev)
					local opts = { buffer = ev.buf, silent = true }
					local map = vim.keymap.set

					map("n", "gd", vim.lsp.buf.definition, opts)
					map("n", "gD", vim.lsp.buf.declaration, opts)
					map("n", "gr", vim.lsp.buf.references, opts)
					map("n", "gi", vim.lsp.buf.implementation, opts)
					map("n", "<leader>d", vim.diagnostic.open_float, opts)

					map("n", "K", vim.lsp.buf.hover, opts)
					map("n", "<C-k>", vim.lsp.buf.signature_help, opts)
					map("n", "gl", vim.diagnostic.open_float, opts)

					map("n", "<leader>rn", vim.lsp.buf.rename, opts)
					map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
				end,
			})
		end,
	},
}
