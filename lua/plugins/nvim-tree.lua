return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = true,
    cmd = "NvimTreeToggle",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      -- disable netrw
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1
      require("nvim-tree").setup({
          filters = {
                dotfiles = true,
                git_ignored = false,
          }
      })
    end,
}
