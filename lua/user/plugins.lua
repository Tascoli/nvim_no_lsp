local ensure_packer = function()
    
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
        if fn.empty(fn.glob(install_path)) > 0 then
            fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
            vim.cmd [[packadd packer.nvim]]
            return true
        end
            return false
    end
  
local packer_bootstrap = ensure_packer()

  
    -- Install your plugins here
return require('packer').startup(function(use)

    -- Plugin Mangager
    use "wbthomason/packer.nvim" -- Have packer manage itself

    use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins

    -- use 'nvim-tree/nvim-web-devicons'

    -- use {
    --   'nvim-lualine/lualine.nvim',
    --   requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    -- }

    -- use "EdenEast/nightfox.nvim" -- Colorscheme Nightfox
    
    use 'navarasu/onedark.nvim'

  
    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
      require('packer').sync()
    end
end)
