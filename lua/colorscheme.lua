vim.pack.add({ {src = "https://github.com/KijitoraFinch/nanode.nvim"} })

require("nanode").setup({
  transparent = false
})

vim.cmd("colorscheme nanode")
