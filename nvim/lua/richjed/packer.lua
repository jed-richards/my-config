-- This is a function that checks if packer.nvim is installed. If it is not
-- then it installs it.
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

return require('packer').startup(function(use)

    -- packer
    use 'wbthomason/packer.nvim'

    -- nvim-tree
    use 'nvim-tree/nvim-tree.lua'
    use 'nvim-tree/nvim-web-devicons'

    -- onenord colorscheme
    use 'rmehri01/onenord.nvim'

    -- lualine
    use 'nvim-lualine/lualine.nvim'

    -- telescope
    use {
        'nvim-telescope/telescope.nvim', 
        tag = '0.1.1',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- treesitter
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    
    -- This allows the use of :TSPlaygroundToggle
    use('nvim-treesitter/playground')

    -- Harpoon (allows to navigate files easily)
    use('theprimeagen/harpoon')

--------------------------------------------------------------------
-- How to load plugins
    -- My plugins here
    -- use 'foo1/bar1.nvim'
    -- use 'foo2/bar2.nvim'
--------------------------------------------------------------------

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)
