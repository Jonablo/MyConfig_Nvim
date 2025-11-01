-- Basic settings
-- opt or' o (It's the same)
vim.g.mapleader = " "
vim.o.number = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- This keymap clears search
vim.keymap.set("n", "<leader>h", ":nohlsearh<CR>")
