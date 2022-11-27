-- Autor: Tadeu Ascoli
-- Country: Brazil
-- e-mail: tascoli@gmail.com

local status_ok, tabline = pcall(require, "tabline")
if not status_ok then
   return
end

tabline.setup({enable = false})
        
-- TODO -> Review config
--     use {
--       'kdheepak/tabline.nvim',
--       config = function()
--         require'tabline'.setup {
--           -- Defaults configuration options
--           enable = true,
--           options = {
--           -- If lualine is installed tabline will use separators configured in lualine by default.
--           -- These options can be used to override those settings.
--             section_separators = {'', ''},
--             component_separators = {'', ''},
--             max_bufferline_percent = 66, -- set to nil by default, and it uses vim.o.columns * 2/3
--             show_tabs_always = false, -- this shows tabs only when there are more than one tab or if the first tab is named
--             show_devicons = true, -- this shows devicons in buffer section
--             show_bufnr = false, -- this appends [bufnr] to buffer section,
--             show_filename_only = false, -- shows base filename only instead of relative path in filename
--             modified_icon = "+ ", -- change the default modified icon
--             modified_italic = false, -- set to true by default; this determines whether the filename turns italic if modified
--             show_tabs_only = false, -- this shows only tabs instead of tabs + buffers
--           }
--         }
--         vim.cmd[[
--           set guioptions-=e " Use showtabline in gui vim
--           set sessionoptions+=tabpages,globals " store tabpages and globals in session
--         ]]
--       end,
--       requires = { { 'hoob3rt/lualine.nvim', opt=true }, {'kyazdani42/nvim-web-devicons', opt = true} }
--     }
--
--     use {
--       'kdheepak/tabline.nvim',
--       config = function()
--         require'tabline'.setup {enable = false}
--       end,
--       requires = {'hoob3rt/lualine.nvim', 'kyazdani42/nvim-web-devicons'}
--     }
--     
--     require'lualine'.setup {
--       tabline = {
--         lualine_a = {},
--         lualine_b = {},
--         lualine_c = { require'tabline'.tabline_buffers },
--         lualine_x = { require'tabline'.tabline_tabs },
--         lualine_y = {},
--         lualine_z = {},
--       },
--     }
