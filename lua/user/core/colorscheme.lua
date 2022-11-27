-- Autor: Tadeu Ascoli
-- Country: Brazil
-- e-mail: tascoli@gmail.com

local colorscheme = 'onedark'

local status_ok, _  = pcall(vim.cmd, "colorscheme ".. colorscheme)
    if not status_ok then
        print("Colorscheme not found!!")
        return
    end


-- ONEDARK Settings

if colorscheme == 'onedark' then
    require('onedark').setup {style = 'darker'}
    return
end

-- NIGHTFOX Settings
--local night_opts = {'nightfox', 'nordfox', 'carbonfox', 'terafox'}     

if colorscheme == 'nightfox' then
    require('nightfox').setup({
        options = {
            styles = {
                comments = "italic",
                keywords = "bold",
                types = "italic,bold",}
            }
        })
end


