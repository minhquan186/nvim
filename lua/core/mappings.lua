-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}
vim.g.mapleader = " "
local map = vim.keymap

-----------------
-- Normal mode --
-----------------

-- Hint: see `:h vim.map.set()`
-- Better window navigation
map.set('n', '<C-h>', '<C-w>h', opts)
map.set('n', '<C-j>', '<C-w>j', opts)
map.set('n', '<C-k>', '<C-w>k', opts)
map.set('n', '<C-l>', '<C-w>l', opts)

-- Resize with arrows
-- delta: 2 lines
map.set('n', '<C-Up>', ':resize -2<CR>', opts)
map.set('n', '<C-Down>', ':resize +2<CR>', opts)
map.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
map.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
map.set('v', '<', '<gv', opts)
map.set('v', '>', '>gv', opts)
