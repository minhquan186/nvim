-----------------
-- Add Plugins --
-----------------

vim.pack.add({
  { src = "https://github.com/folke/which-key.nvim" }, -- Whichkey
  { src = "https://github.com/nvim-tree/nvim-web-devicons" }, -- Icons
  { src = "https://github.com/lewis6991/gitsigns.nvim" }, -- Gitsigns
  { src = "https://github.com/nvim-mini/mini.pairs" }, -- Auto bracket
  { src = "https://github.com/nvim-mini/mini.indentscope" }, -- Indentation highlight
  { src = "https://github.com/nvim-mini/mini.files" }, -- File Explorer
  { src = "https://github.com/nvim-lua/plenary.nvim" }, -- Plenary, nvim-telescope dependency
  { src = "https://github.com/nvim-telescope/telescope.nvim" }, -- Telescope
  { src = "https://github.com/mason-org/mason.nvim" }, -- Mason for LSP server
  { src = "https://github.com/saghen/blink.cmp", version = vim.version.range("^1") }, -- Completion
})

---------------------
-- Plugins' config --
---------------------

require("which-key").setup({})
require("nvim-web-devicons").setup({})
require("gitsigns").setup({ signcolumn = true })
require("mini.pairs").setup({})
require("mini.indentscope").setup({})
require("mini.files").setup({})
require("mason").setup({})

-- Telescope
local telescope = require("telescope")
local actions = require("telescope.actions")
-- Action setup
telescope.setup({
  defaults = {
    path_display = { "smart" },
    mappings = {
      i = {
        ["<C-k>"] = actions.move_selection_previous, -- move to prev result
        ["<C-j>"] = actions.move_selection_next, -- move to next result
        ["<C-q>"] = actions.smart_send_to_qflist  + actions.open_qflist,
      },
    },
  },
})

-- Completion config
require('blink.cmp').setup({
    fuzzy = { implementation = 'prefer_rust_with_warning' },
    signature = { enabled = true },
    keymap = {
        preset = "default",
        ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
        ['<C-e>'] = { 'hide', 'fallback' },
        ['<CR>'] = { 'accept', 'fallback' },

        ['<Tab>'] = { 'snippet_forward', 'fallback' },
        ['<S-Tab>'] = { 'snippet_backward', 'fallback' },

        ['<Up>'] = { 'select_prev', 'fallback' },
        ['<Down>'] = { 'select_next', 'fallback' },
        ['<C-p>'] = { 'select_prev', 'fallback_to_mappings' },
        ['<C-n>'] = { 'select_next', 'fallback_to_mappings' },

        ['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
        ['<C-f>'] = { 'scroll_documentation_down', 'fallback' },

        ['<C-k>'] = { 'show_signature', 'hide_signature', 'fallback' },
    },

    appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = "normal",
    },

    completion = {
        documentation = {
            auto_show = true,
            auto_show_delay_ms = 200,
        },
        ghost_text = {
          enabled = false
        }
    },

    cmdline = {
        keymap = {
            preset = 'inherit',
            ['<CR>'] = { 'accept_and_enter', 'fallback' },
        },
    },

    sources = { default = { "lsp", "buffer", "snippets", "path" } }
})
