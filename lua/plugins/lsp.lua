return {
    {
      "mason-org/mason.nvim",
      lazy = false,
      config = function ()
        require("mason").setup()
      end
    },
    {
      "mason-org/mason-lspconfig.nvim",
      opts = {},
      dependencies = {
        {
          "mason-org/mason.nvim",
          opts = {}
        },
        "neovim/nvim-lspconfig",
      },
    {
      "neovim/nvim-lspconfig",
      lazy = false,
      config = function ()

        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        local lspconfig = require("lspconfig")

        -- Lua LSP
        require("neodev").setup()
        lspconfig.lua_ls.setup({
          capabilities = capabilities,
          settings = {
            Lua = {
              completion = {
                callSnippet = "Replace"
              }
            }
          }
        })

        -- Python LSP
        lspconfig.pylsp.setup({
          capabilities = capabilities,
          settings = {
            pylsp = {
              plugins = {
                pycodestyle = {
                  ignore = {"W391"},
                  maxLineLength = 100,
                }
              }
            }
          }
        })

        -- C/C++ LSP (clangd)
        lspconfig.clangd.setup({
          capabilities = capabilities,
        })

        -- Keymapping
        vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
        vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
        vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
      end
    },
  }
}
