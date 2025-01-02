-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}
vim.g.mapleader = " "
local map = vim.keymap

----------------------
-- Universal keymap --
----------------------

-- Line wrapping
map.set({ "n", "i", "v" }, "<A-z>", function()
    vim.cmd("set wrap!")
end, { desc = "Toggle linewrapping" })

-----------------
-- Normal mode --
-----------------

-- Hint: see `:h vim.map.set()`
-- Better window navigation
map.set("n", "<C-h>", "<C-w>h", opts)
map.set("n", "<C-j>", "<C-w>j", opts)
map.set("n", "<C-k>", "<C-w>k", opts)
map.set("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
-- delta: 2 lines
map.set("n", "<C-Up>", ":resize -2<CR>", opts)
map.set("n", "<C-Down>", ":resize +2<CR>", opts)
map.set("n", "<C-Left>", ":vertical resize -2<CR>", opts)
map.set("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Window management
map.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
map.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
map.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- Tab management
map.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open New Tab" })
map.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
map.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
map.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to prev tab" })
map.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- Line number
map.set("n", "<leader>n", "<cmd>set nu!<CR>", { desc = "toggle line number" })
map.set("n", "<leader>rn", "<cmd>set rnu!<CR>", { desc = "toggle relative number" })

-- NvimTree
map.set("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })
map.set("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "nvimtree focus window" })

-- Bufferline
map.set("n", "<S-l>", "<CMD>BufferLineCycleNext<CR>", { desc = "Next Buffer" })
map.set("n", "<S-h>", "<CMD>BufferLineCyclePrev<CR>", { desc = "Previous Buffer" })

-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
map.set("v", "<", "<gv", opts)
map.set("v", ">", ">gv", opts)
