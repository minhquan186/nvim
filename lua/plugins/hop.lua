return {
    "smoka7/hop.nvim",
    version = "*",
    opts = {
      keys = 'etovxqpdygfblzhckisuran'
    },
    config = function ()
      require('hop').setup()
      -- normal mode (easymotion-like)
      vim.api.nvim_set_keymap("n", "<Leader><Leader>b", "<cmd>HopWordBC<CR>", {noremap=true})
      vim.api.nvim_set_keymap("n", "<Leader><Leader>w", "<cmd>HopWordAC<CR>", {noremap=true})
      vim.api.nvim_set_keymap("n", "<Leader><Leader>j", "<cmd>HopLineAC<CR>", {noremap=true})
      vim.api.nvim_set_keymap("n", "<Leader><Leader>k", "<cmd>HopLineBC<CR>", {noremap=true})
      vim.api.nvim_set_keymap("n", "<Leader><Leader>f", "<cmd>HopChar1<CR>", {noremap=true})

      -- visual mode (easymotion-like)
      vim.api.nvim_set_keymap("v", "<Leader><Leader>w", "<cmd>HopWordAC<CR>", {noremap=true})
      vim.api.nvim_set_keymap("v", "<Leader><Leader>b", "<cmd>HopWordBC<CR>", {noremap=true})
      vim.api.nvim_set_keymap("v", "<Leader><Leader>j", "<cmd>HopLineAC<CR>", {noremap=true})
      vim.api.nvim_set_keymap("v", "<Leader><Leader>k", "<cmd>HopLineBC<CR>", {noremap=true})
      vim.api.nvim_set_keymap("v", "<Leader><Leader>f", "<cmd>HopChar1<CR>", {noremap=true})
    end
}
