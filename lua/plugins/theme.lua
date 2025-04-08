-- catppuccin theme
-- return {
--     "catppuccin/nvim",
--     lazy = true,
--     name = "catppuccin",
--     priority = 1000,
--
--     config = function()
-- 	    vim.cmd.colorscheme "catppuccin"
--     end
-- }





-- rose pine theme
return {
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
		require("rose-pine").setup({
			variant = "moon"
		})
		vim.cmd("colorscheme rose-pine")
	end
}





-- tokyo night theme
-- return {
-- 	"folke/tokyonight.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	opts = {},
--
-- 	config = function ()
-- 		vim.cmd("colorscheme tokyonight-storm")
-- 	end
-- }




-- dracula theme
-- return { 
-- 	"Mofiqul/dracula.nvim",
-- 	config = function ()
-- 		vim.cmd("colorscheme dracula")
-- 	end
--
-- }
