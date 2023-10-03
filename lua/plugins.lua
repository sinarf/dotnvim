-- Auto installation of lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Remap space as leader key
local opts = { noremap = true, silent = true }
vim.keymap.set("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = ","

require('lazy').setup({
    { -- LSP Configuration & Plugins
        'neovim/nvim-lspconfig',
        dependencies = {
            -- Automatically install LSPs to stdpath for neovim
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',

            -- Useful status updates for LSP
            {
                'j-hui/fidget.nvim',
                tag = 'legacy',
            },
            -- Additional lua configuration, makes nvim stuff amazing
            'folke/neodev.nvim',
        },
    },
    {
        "folke/trouble.nvim",
        dependencies = "kyazdani42/nvim-web-devicons",

    },
    {
        "williamboman/mason.nvim",
        "RubixDev/mason-update-all",
        'WhoIsSethDaniel/mason-tool-installer.nvim',
    },
    { -- Autocompletion
        'hrsh7th/nvim-cmp',
        dependencies = { 'hrsh7th/cmp-nvim-lsp',
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
    },
    "onsails/lspkind.nvim",
    "rafamadriz/friendly-snippets",
    {
        "benfowler/telescope-luasnip.nvim",
        module = "telescope._extensions.luasnip", -- if you wish to lazy-load
    },
    {                                             -- Highlight, edit, and navigate code
        'nvim-treesitter/nvim-treesitter',
        build = function()
            pcall(require('nvim-treesitter.install').update { with_sync = true })
        end,
        dependencies = {
            'nvim-treesitter/nvim-treesitter-textobjects',
        }
    },
    -- dap
    'mfussenegger/nvim-dap',
    'theHamsta/nvim-dap-virtual-text',
    'rcarriga/nvim-dap-ui',
    'mfussenegger/nvim-dap-python',

    -- Git related plugins
    {
        'NeogitOrg/neogit',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'sindrets/diffview.nvim'
        }
    },
    'lewis6991/gitsigns.nvim',
    'tpope/vim-fugitive',
    { -- github
        'pwntester/octo.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope.nvim',
            'kyazdani42/nvim-web-devicons',
        },
    },
    'martinda/Jenkinsfile-vim-syntax',
    "tpope/vim-vinegar",
    "pocco81/auto-save.nvim",
    "akinsho/toggleterm.nvim",
    "CRAG666/code_runner.nvim",
    "airblade/vim-rooter",
    'preservim/vimux',

    {
        'stevearc/conform.nvim',
        event = { "BufReadPre", "BufNewFile" }
    },

    -- testing
    {
        "nvim-neotest/neotest",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
            "antoinemadec/FixCursorHold.nvim"
        }
    },
    "nvim-neotest/neotest-python",
    "nvim-neotest/neotest-plenary",

    -- productivity tools
    'lukas-reineke/indent-blankline.nvim',
    'numToStr/Comment.nvim',
    "windwp/nvim-autopairs",
    'tpope/vim-sleuth',
    "folke/todo-comments.nvim",
    {
        "FeiyouG/commander.nvim",
        dependencies = { "nvim-telescope/telescope.nvim" }
    },
    'stevearc/overseer.nvim',
    'stevearc/dressing.nvim',
    'nvim-lualine/lualine.nvim',
    'kyazdani42/nvim-web-devicons',
    'goolord/alpha-nvim',
    'rcarriga/nvim-notify',
    "vigoux/notifier.nvim",
    {
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = 'kyazdani42/nvim-web-devicons'
    },
    {
        "utilyre/barbecue.nvim",
        name = "barbecue",
        version = "*",
        dependencies = {
            "SmiteshP/nvim-navic",
            "kyazdani42/nvim-web-devicons", -- optional dependency
        },
    },
    'norcalli/nvim-colorizer.lua',
    "folke/which-key.nvim",
    "xiyaowong/nvim-transparent",
    "aileot/vim-confirm-quit",
    -- colorscheme
    'navarasu/onedark.nvim',
    "ellisonleao/gruvbox.nvim",
    { 'dracula/vim',     name = 'dracula' },
    "arcticicestudio/nord-vim",
    { "catppuccin/nvim", name = "catppuccin" },
    'folke/tokyonight.nvim',
    'loctvl842/monokai-pro.nvim',

    -- Fuzzy Finder (files, lsp, etc)
    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = {
            'nvim-lua/plenary.nvim'
        }
    },

    -- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
        cond = vim.fn.executable 'make' == 1
    },
    "nvim-telescope/telescope-project.nvim",
    "nvim-telescope/telescope-file-browser.nvim",
    "nvim-telescope/telescope-media-files.nvim",
    "nvim-telescope/telescope-dap.nvim",

    -- note taking
    {
        "iamcco/markdown-preview.nvim",
        build = function() vim.fn["mkdp#util#install"]() end,
    },
})
