-- use for plugins that require little to none config

return {
    "nvim-lua/plenary.nvim",
    "folke/neodev.nvim",
    {
      "LunarVim/bigfile.nvim",
      event = "BufReadPre",
      opts = {
        filesize = 2
      },
      config = function (_, opts)
        require('bigfile').setup(opts)
      end
    },
    {
      "fei6409/log-highlight.nvim",
      event = "BufReadPre *.log", -- Only load it for .log files
      config = function()
        require('log-highlight').setup({})
      end,
    }
}
