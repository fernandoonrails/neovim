return {
    {
        "williamboman/mason.nvim",
	config = function()
	    require("mason").setup()
	end
    },
    {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    config = function()
	    require("mason-lspconfig").setup({
		    ensure_installed = {
			    "lua_ls",
			    "ts_ls",
			    "gopls", -- golang
			    "rust_analyzer", -- rust
			    "vue-language-server" -- vue
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
		    lspconfig.zls.setup({})
		    vim.keymap.set('n', "K", vim.lsp.buf.hover, {})
		    vim.keymap.set('n', "gd", vim.lsp.buf.definition, {})
		    vim.keymap.set({ 'n', 'v'}, "<leader>ca", vim.lsp.buf.code_action, {})
		    local capabilities = require("blink.cmp").get_lsp_capabilities()
		    require('lspconfig').lua_ls.setup { capabilities = capabilities }

	    end
    },
    {
        "neovim/nvim-lspconfig",
	    opts = {
	        servers = {
		    volar = {
		        init_options = {
			    vue = {
			        hybridMode = true,
			    },
		    },
		},
		vtsls = {},
	    },
	},
    }
}
