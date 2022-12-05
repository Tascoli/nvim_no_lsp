

-- Autoload init.lua
local autocmd = vim.api.nvim_create_autocmd

autocmd('BufWritePost', {pattern = 'init.lua', command = 'source $MYVIMRC'})

-- SHOW WHITHESPACE
-- MUST be inserted BEFORE the colorscheme command

vim.cmd [[autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red]]   -- TODO: - Review color for whitespace maybe 88(red)
-- vim.cmd [[autocmd BufWinEnter * match ExtraWhitespace /^\s* \s*\|\s\+$/]]
vim.cmd [[autocmd InsertLeave * match ExtraWhitespace /\s\+$/]]


-- TODO: - Review autocommand
-- Autocommand that reloads neovim whenever you save the plugins.lua file
-- vim.cmd([[
--  augroup packer_user_config
--    autocmd!
--    autocmd BufWritePost plugins_setup.lua source <afile> | PackerSync
-- autocmd('BufWritePost', {pattern = 'plugins_setup.lua', command = 'source <afile> | PackerSync'})
