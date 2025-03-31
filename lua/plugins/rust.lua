return {
{
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require("lspconfig")

		vim.g.lazyvim_rust_diagnostics = "rust-analyzer"

		lspconfig.rust_analyzer.setup({})
		local opts = {
			servers = {
				bacon_ls = {
					enabled = diagnostics == "bacon-ls",
				},
				rust_analyzer = { enabled = false },
			},
		}
		vim.keymap.set('n', "K", vim.lsp.buf.hover, {})
		vim.keymap.set('n', "gd", vim.lsp.buf.definition, {})
		vim.keymap.set({ 'n', 'v'}, "<leader>ca", vim.lsp.buf.code_action, {})
		local capabilities = require("blink.cmp").get_lsp_capabilities()
		require('lspconfig').lua_ls.setup { capabilities = capabilities }

	end
}
}
