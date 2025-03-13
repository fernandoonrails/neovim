return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = { "lua", "typescript", "go", "rust" },
			highlight = { enabled = true },
			ident= { enabled = true },
		})

	end
}
