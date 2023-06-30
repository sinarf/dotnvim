local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
local is_bootstrap = false
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    is_bootstrap = true
    vim.fn.system { 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path }
    vim.cmd [[packadd packer.nvim]]
end

require('packer').init(
    {
        -- avoid the too many files open on macOS
        max_jobs = 20,
    }
)

require('packer').startup(function(use)
    -- Package manager
    use 'wbthomason/packer.nvim'

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
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",

    }
    use {
        "williamboman/mason.nvim",
        "jose-elias-alvarez/null-ls.nvim",
        "jayp0521/mason-null-ls.nvim",
        "RubixDev/mason-update-all",
        'WhoIsSethDaniel/mason-tool-installer.nvim',
    }
    use { -- Autocompletion
        'hrsh7th/nvim-cmp',
        requires = { 'hrsh7th/cmp-nvim-lsp',
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip',
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-nvim-lua",
            "f3fora/cmp-spell",
            "hrsh7th/cmp-nvim-lsp-signature-help",
            "hrsh7th/cmp-emoji",
            "jc-doyle/cmp-pandoc-references",
            "joshzcold/cmp-jenkinsfile",
            "rcarriga/cmp-dap",
        },
    }
    use "onsails/lspkind.nvim"

    use "rafamadriz/friendly-snippets"
    use {
        "benfowler/telescope-luasnip.nvim",
        module = "telescope._extensions.luasnip", -- if you wish to lazy-load
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

    -- dap
    use 'mfussenegger/nvim-dap'
    use 'theHamsta/nvim-dap-virtual-text'
    use 'rcarriga/nvim-dap-ui'
    use 'mfussenegger/nvim-dap-python'

    -- Git related plugins
    use {
        'TimUntersberger/neogit',
        requires = {
            'nvim-lua/plenary.nvim',
            'sindrets/diffview.nvim'
        }
    }
    use 'lewis6991/gitsigns.nvim'
    use 'tpope/vim-fugitive'
    use { -- github
        'pwntester/octo.nvim',
        requires = {
            'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope.nvim',
            'kyazdani42/nvim-web-devicons',
        },
    }
    use 'martinda/Jenkinsfile-vim-syntax'
    use "tpope/vim-vinegar" -- better netrw
    use "pocco81/auto-save.nvim"
    use "akinsho/toggleterm.nvim"
    use "CRAG666/code_runner.nvim"
    use "airblade/vim-rooter"
    use 'preservim/vimux'

    -- testing
    use {
        "nvim-neotest/neotest",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
            "antoinemadec/FixCursorHold.nvim"
        }
    }
    use "nvim-neotest/neotest-python"
    use "nvim-neotest/neotest-plenary"


    -- productivity tools
    use 'lukas-reineke/indent-blankline.nvim' -- Add indentation guides even on blank lines
    use 'numToStr/Comment.nvim'               -- "gc" to comment visual regions/lines
    use "windwp/nvim-autopairs"
    use 'tpope/vim-sleuth'                    -- Detect tabstop and shiftwidth automatically
    use "folke/todo-comments.nvim"
    use {
        "FeiyouG/command_center.nvim",
        requires = { "nvim-telescope/telescope.nvim" }
    }
    use 'stevearc/overseer.nvim'
    use 'stevearc/dressing.nvim'
    -- eye candy
    use 'nvim-lualine/lualine.nvim' -- Fancier statusline
    use 'kyazdani42/nvim-web-devicons'
    use 'goolord/alpha-nvim'
    use 'rcarriga/nvim-notify'
    use "vigoux/notifier.nvim"
    use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }
    use({
        "utilyre/barbecue.nvim",
        tag = "*",
        requires = {
            "neovim/nvim-lspconfig",
            "SmiteshP/nvim-navic",
            "nvim-tree/nvim-web-devicons", -- optional dependency
        },
        after = "nvim-web-devicons",       -- keep this if you're using NvChad
        config = function()
        end,
    })
    use 'norcalli/nvim-colorizer.lua'
    use "folke/which-key.nvim"
    use "xiyaowong/nvim-transparent"
    use "aileot/vim-confirm-quit" -- because it is too easy to quit vim sometimes
    -- colorscheme
    use 'navarasu/onedark.nvim' -- Theme inspired by Atom
    use { "ellisonleao/gruvbox.nvim" }
    use { 'dracula/vim', as = 'dracula' }
    use "arcticicestudio/nord-vim"
    use { "catppuccin/nvim", as = "catppuccin" }
    use 'folke/tokyonight.nvim'

    -- Fuzzy Finder (files, lsp, etc)
    use { 'nvim-telescope/telescope.nvim', branch = '0.1.x', requires = { 'nvim-lua/plenary.nvim' } }

    -- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make', cond = vim.fn.executable 'make' == 1 }
    use "nvim-telescope/telescope-project.nvim"
    use "nvim-telescope/telescope-file-browser.nvim"
    use "nvim-telescope/telescope-media-files.nvim" -- preview media files
    use "nvim-telescope/telescope-dap.nvim"

    -- note taking
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })
    -- Add custom plugins to packer from ~/.config/nvim/lua/custom/plugins.lua
    local has_plugins, plugins = pcall(require, 'custom.plugins')
    if has_plugins then
        plugins(use)
    end

    if is_bootstrap then
        require('packer').sync()
    end
end)


-- When we are bootstrapping a configuration, it doesn't
-- make sense to execute the rest of the init.lua.
--
-- You'll need to restart nvim, and then it will work.
if is_bootstrap then
    print '=================================='
    print '    Plugins are being installed'
    print '    Wait until Packer completes,'
    print '       then restart nvim'
    print '=================================='
    return
end

local packer_group = vim.api.nvim_create_augroup('Packer', { clear = true })
vim.api.nvim_create_autocmd('BufWritePost', {
    command = 'source | PackerSync',
    group = packer_group,
    pattern = 'plugins.lua',
})
