-- Autor: Tadeu Ascoli
-- Country: Brazil
-- e-mail: tascoli@gmail.com

local fn = vim.fn

local ensure_packer = function()

    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
        if fn.empty(fn.glob(install_path)) > 0 then
            fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
            vim.cmd [[packadd packer.nvim]]
            return true
        end
        return false
end

local packer_bootstrap = ensure_packer()


-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
    print("Packer doesn't works!!!")
    return
end

-- Have packer use a popup window
packer.init {
    -- snapshot = "july-24",
    snapshot_path = fn.stdpath 'config' .. '/snapshots',
    max_jobs = 50,
        display = {
            open_fn = function()
            return require('packer.util').float { border = 'rounded' }
            end,
        prompt_border = 'rounded', -- Border style of prompt popups.
    },
}

-- Install your plugins here
return require('packer').startup(function(use)

    -- Plugin Mangager
    use 'wbthomason/packer.nvim'    -- Have packer manage itself

    use 'nvim-lua/plenary.nvim'     -- Useful lua functions used ny lots of plugins


-------------------------------------
----  BASIC PLUGINS ----
-------------------------------------

    -- Devicons
    use 'nvim-tree/nvim-web-devicons'

    -- Nvim Tree
    use {'nvim-tree/nvim-tree.lua',
        requires = { 'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly', -- optional, updated every week. (see issue #1193)
    }

    -- Lualine
    use {'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
        }

    -- Bufferline
    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

    -- Comment with 'gcc'
    use {'numToStr/Comment.nvim',}

    -- Todo Comments
    use {"folke/todo-comments.nvim", requires = "nvim-lua/plenary.nvim"}

    --Telescope
    use {'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
        }

    -- Toggleterm - Terminal on  nvim
    use {"akinsho/toggleterm.nvim", tag = '*'}

    -- Colorizer
    use 'norcalli/nvim-colorizer.lua'   -- See colors in your file


-------------------------------------
---- COLORSCHEME Section
-------------------------------------
    -- Colorscheme Darkplus
    use 'martinsione/darkplus.nvim'
    -- Colorscheme Nightfox
    use 'EdenEast/nightfox.nvim'
    -- Colorscheme Onedark
    use 'navarasu/onedark.nvim'
    -- Colorscheme Tokyonight
--    use 'folke/tokyonight.nvim'
    -- Colorscheme Gruvbox
    use 'ellisonleao/gruvbox.nvim'

-------------------------------------
---- LSP AND COMPLETION SECTION ----
-------------------------------------

    use { -- Autocompletion
        'hrsh7th/nvim-cmp',
        requires = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip',
            'hrsh7th/cmp-path', 'hrsh7th/cmp-buffer', 'hrsh7th/cmp-cmdline',
        },
    }

    use { -- Highlight, edit, and navigate code
        'nvim-treesitter/nvim-treesitter',
        run = function()
        pcall(require('nvim-treesitter.install').update { with_sync = true })
        end,
    }

    use { -- Additional text objects via treesitter
        'nvim-treesitter/nvim-treesitter-textobjects',
        after = 'nvim-treesitter',
    }
    use { -- LSP Configuration & Plugins
        'neovim/nvim-lspconfig',
        requires = {
        -- Automatically install LSPs to stdpath for neovim
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',

        -- Useful status updates for LSP
        'j-hui/fidget.nvim',

        -- Additional lua configuration, makes nvim stuff amazing
        'folke/neodev.nvim',
        },
    }

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins

    if packer_bootstrap then
    require('packer').sync()
    end
end)
