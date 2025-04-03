vim.g.mapleader = " "
-- open fuzzy finder
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

-- save
vim.keymap.set('n', '<leader>w', ':w<CR>')

-- file search
vim.keymap.set('n', '<leader>ee', ':Ex<CR>')
