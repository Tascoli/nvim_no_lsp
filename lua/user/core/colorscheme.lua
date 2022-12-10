-- Autor: Tadeu Ascoli
-- Country: Brazil
-- e-mail: tascoli@gmail.com

colorscheme = function()
    str = 'tokyonight'
    return str
end

-- local colorscheme = 'nightfox'

local status_ok, _  = pcall(vim.cmd, "colorscheme ".. colorscheme())
    if not status_ok then
        print("Colorscheme not found!!")
        return
    end

-- DARKPLUS
-- No settings

-- NIGHTFOX Settings
--local night_opts = {'nightfox', 'nordfox', 'carbonfox', 'terafox'}

if colorscheme() == 'nightfox' then
    require('nightfox').setup({
        options = {
            styles = {
                comments = "italic",
                keywords = "bold",
                types = "italic,bold",}
            }
        })
end

-- ONEDARK Settings

if colorscheme() == 'onedark' then
    require('onedark').setup {style = 'darker'}
    return
end

-- TOKYONIGHT
--
if colorscheme() == 'tokyonight' then
    require("tokyonight").setup({
  -- your configuration comes here
  -- or leave it empty to use the default settings
    style = "moon", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
    light_style = "day", -- The theme is used when the background is set to light
    transparent = false, -- Enable this to disable setting the background color
    terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
    styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "dark", -- style for sidebars, see below
    floats = "dark", -- style for floating windows
  },
    sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
    day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
    hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
    dim_inactive = false, -- dims inactive windows
    lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

  --- You can override specific color groups to use other groups or a hex color
  --- function will be called with a ColorScheme table
  ---@param colors ColorScheme
    on_colors = function(colors) end,

  --- You can override specific highlights to use other groups or a hex color
  --- function will be called with a Highlights and ColorScheme table
  ---@param highlights Highlights
  ---@param colors ColorScheme
    on_highlights = function(highlights, colors) end,
})
end

-- Gruvbox Settings
--
-- setup must be called before loading the colorscheme
-- Default options:
if colorscheme() == 'grubbox' then
    require("gruvbox").setup({
        undercurl = true,
        underline = true,
        bold = true,
        italic = true,
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true, -- invert background for search, diffs, statuslines and errors
        contrast = "", -- can be "hard", "soft" or empty string
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = false,
    })
end
