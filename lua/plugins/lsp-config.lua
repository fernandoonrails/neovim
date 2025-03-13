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
		    ensure_installed = {
			    "lua_ls",
			    "ts_ls",
			    "gopls", -- golang
			    "rust_analyzer", -- rust
			    "zls" -- zig
		    },
	    })
    end
    },
    {
	    "neovim/nvim-lspconfig",
	    config = function()
		    local lspconfig = require("lspconfig")
		    lspconfig.lua_ls.setup({})
		    lspconfig.ts_ls.setup({})
		    lspconfig.gopls.setup({})
		    lspconfig.rust_analyzer.setup({})
		    lspconfig.zls.setup({})
		    vim.keymap.set('n', "K", vim.lsp.buf.hover, {})
		    vim.keymap.set('n', "gd", vim.lsp.buf.definition, {})
		    vim.keymap.set({ 'n', 'v'}, "<leader>ca", vim.lsp.buf.code_action, {})
		    local capabilities = require("blink.cmp").get_lsp_capabilities()
		    require('lspconfig').lua_ls.setup { capabilities = capabilities }

	    end
    },
}
