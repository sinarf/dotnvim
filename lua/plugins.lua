-- plugin managment using packer

local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

return require('packer').startup(function(use)

    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- fuzzy find
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use 'nvim-telescope/telescope-github.nvim'

    -- File explorer
    use {
        'kyazdani42/nvim-tree.lua',
        require = {
            'kyazdani42/nvim-web-devicons'
        }
    }

    -- Source controls plugins
    use 'tpope/vim-fugitive'
    use {
        'lewis6991/gitsigns.nvim',
        requires = {
        'nvim-lua/plenary.nvim'
        },
        config = function()
        require('gitsigns').setup()
    end
    }

    -- note taking
    use 'godlygeek/tabular'
    use 'plasticboy/vim-markdown'

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'kabouzeid/nvim-lspinstall'
    use 'hrsh7th/nvim-compe'

    -- rooter
    use 'airblade/vim-rooter'
    -- colorscheme
    use {'dracula/vim', as = 'dracula'}

end)


