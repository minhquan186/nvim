return {
    "KijitoraFinch/nanode.nvim",
    priority = 1000,
    opts = {},
    config = function()
      require("nanode").setup({
        transparent = false,
      })
      vim.cmd("colorscheme nanode")
    end
}
