return {
  "nvim-lualine/lualine.nvim",
  event = 'VeryLazy',
  dependencies = {
      "nvim-tree/nvim-web-devicons"
  },
  config = function()
      require('lualine').setup({
        options = {
          icons_enabled = true,
          theme = 'auto',
          component_separators = '',
          section_separators = { left = '', right = ''},
          disabled_filetypes = {
            statusline = {},
            winbar = {},
          },
          ignore_focus = {},
          always_divide_middle = true,
          always_show_tabline = true,
          globalstatus = true,
          refresh = {
            statusline = 100,
            tabline = 100,
            winbar = 100,
          }
        },
        sections = {
          lualine_a = {
              {
                  'mode',
                  seperator =
                  {
                      left = ''
                  },
                  right_padding = 2
              }
          },
          lualine_b = {'branch', 'diff'},
          lualine_c = {
            {
              'windows',
              show_filename_only = true,   -- Shows shortened relative path when set to false.
              show_modified_status = true, -- Shows indicator when the window is modified.

              mode = 0, -- 0: Shows window name
                        -- 1: Shows window index
                        -- 2: Shows window name + window index

              max_length = vim.o.columns * 2 / 3, -- Maximum width of windows component,
                                                  -- it can also be a function that returns
                                                  -- the value of `max_length` dynamically.
              filetype_names = {
                TelescopePrompt = 'Telescope',
                fzf = 'FZF',
                alpha = 'Alpha'
              }, -- Shows specific window name for that filetype ( { `filetype` = `window_name`, ... } )
            }
          },
          lualine_x = {'diagnostics', 'fileformat', 'filetype'},
          lualine_y = {'progress'},
          lualine_z = {
              {
                  'location',
                  seperator =
                  {
                      right = ''
                  },
                  left_padding = 2
              }
          }
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = {'filename'},
          lualine_x = {'location'},
          lualine_y = {},
          lualine_z = {}
        },
        tabline = {},
        winbar = {},
        inactive_winbar = {},
        extensions = {
          "nvim-tree",
          "mason",
          "nvim-dap-ui",
        }
      })
  end
}
