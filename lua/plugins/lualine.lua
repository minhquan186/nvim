return {
    "nvim-lualine/lualine.nvim",
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
            globalstatus = false,
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
            lualine_c = {'filename'},
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
            "nvim-tree"  
          }
        })
    end
}
