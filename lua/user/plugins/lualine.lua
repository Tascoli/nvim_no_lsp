-- Autor: Tadeu Ascoli
-- Country: Brazil
-- e-mail: tascoli@gmail.com

local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
  return
end

lualine.setup({
    options = {
      icons_enabled = true,
      theme = 'material',
      component_separators = { left = '', right = ''},
      section_separators = { left = '', right = ''},
      disabled_filetypes = {
        statusline = {},
        winbar = {},
      },
      ignore_focus = {},
      always_divide_middle = true,
      globalstatus = true,
      refresh = {
        statusline = 1000,
        tabline = 1000,
        winbar = 1000,
      }
    },
    sections = {
      lualine_a = {'mode'},
      lualine_b = {
          {'branch'},
          {'diff'},
          {'diagnostics'}
        },
      lualine_c = {'filename'},
      lualine_x = {'encoding', 'fileformat', 'filetype'},
      lualine_y = {'progress'},
      lualine_z = {'location'}
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {'filename'},
      lualine_x = {'location'},
      lualine_y = {},
      lualine_z = {}
    },
    tabline = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { require'tabline'.tabline_buffers },
        lualine_x = { require'tabline'.tabline_tabs },
        lualine_y = {},
        lualine_z = {},
  }, 
    winbar = {},
    inactive_winbar = {},
    extensions = {'nvim-tree'}
  })
