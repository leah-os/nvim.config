return { 
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end 
	},

	{
		"williamboman/mason-lspconfig.nvim",
			config = function()
				require("mason-lspconfig").setup({
					ensure_installed = { "lua_ls" }
				})
			end
	},

	{
		"williamboman/nvim-lspconfig",
			config = function()
				require("lspconfig").clangd.setup({
					flags = lsp_flags,
					on_attach = function(client, bufnr)
						local bufopts = { noremap=true, silent=true, buffer=bufnr }
						vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
					end
				})
			end
	},
}
