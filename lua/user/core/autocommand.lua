

-- Automatically source and re-compile packer whenever you save this init.lua
local packer_group = vim.api.nvim_create_augroup('Packer', { clear = true })
vim.api.nvim_create_autocmd('BufWritePost', {
  command = 'source <afile> | PackerCompile',
  group = packer_group,
  pattern = vim.fn.expand '$MYVIMRC',
})

-- SHOW WHITHESPACE
-- MUST be inserted BEFORE the colorscheme command

vim.cmd [[autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red]]   -- TODO: - Review color for whitespace maybe 88(red)
-- vim.cmd [[autocmd BufWinEnter * match ExtraWhitespace /^\s* \s*\|\s\+$/]]
vim.cmd [[autocmd InsertLeave * match ExtraWhitespace /\s\+$/]]


-- Treesitter Setup
--
-- vim.opt.foldmethod     = 'expr'
-- vim.opt.foldexpr       = 'nvim_treesitter#foldexpr()'
---WORKAROUND
    -- vim.api.nvim_create_autocmd({'BufEnter','BufAdd','BufNew','BufNewFile','BufWinEnter'}, {
    -- group = vim.api.nvim_create_augroup('TS_FOLD_WORKAROUND', {}),
    --     callback = function()
    --         vim.opt.foldmethod     = 'expr'
    --         vim.opt.foldexpr       = 'nvim_treesitter#foldexpr()'
    --     end
    -- })
---ENDWORKAROUND
local vim = vim
local api = vim.api
local M = {}
-- function to create a list of commands and convert them to autocommands
-------- This function is taken from https://github.com/norcalli/nvim_utils
function M.nvim_create_augroups(definitions)
    for group_name, definition in pairs(definitions) do
        api.nvim_command('augroup '..group_name)
        api.nvim_command('autocmd!')
        for _, def in ipairs(definition) do
            local command = table.concat(vim.tbl_flatten{'autocmd', def}, ' ')
            api.nvim_command(command)
        end
        api.nvim_command('augroup END')
    end
end


local autoCommands = {
    -- other autocommands
    open_folds = {
        {"BufReadPost,FileReadPost", "*", "normal zR"}
    }
}

M.nvim_create_augroups(autoCommands)


-- TODO: - Review autocommand
-- Autocommand that reloads neovim whenever you save the plugins.lua file
-- vim.cmd([[
--  augroup packer_user_config
--    autocmd!
--    autocmd BufWritePost plugins_setup.lua source <afile> | PackerSync
-- autocmd('BufWritePost', {pattern = 'plugins_setup.lua', command = 'source <afile> | PackerSync'})
