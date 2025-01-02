return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function ()
    vim.wo.foldmethod = 'expr'
    vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
    vim.wo.foldtext = 'v:lua.vim.treesitter.foldtext()'

    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = {
        "lua", "vim", "vimdoc", "query",
        "python", "bash",
        "c", "cpp",
        "make", "cmake",
        "bitbake"
      },
      sync_install = true,
      highlight = {
        enable = true,
        use_languagetree = true,
      },
      indent = { enable = true },
    })
  end
}
