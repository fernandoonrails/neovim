-- return {
    -- "catppuccin/nvim",
    -- lazy = true,
    -- name = "catppuccin",
    -- priority = 1000,
    --
    -- config = function()
    --  vim.cmd.colorscheme "catppuccin"
    -- end
-- }

return {
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
		require("rose-pine").setup({
			variant = "moon",
		})
		vim.cmd("colorscheme rose-pine")
	end

}
