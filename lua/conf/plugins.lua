local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print "Installing packer close and reopen Neovim..."
    vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
local packer_group = vim.api.nvim_create_augroup("packer", { clear = true })
-- autocmd BufRead today.md !archive_dailynote.py
vim.api.nvim_create_autocmd("BufWritePost", {
    group = packer_group,
    pattern = "plugins.lua",
    command = "source <afile> | PackerSync",
})
-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    },
}

return packer.startup(function(use)
    -- Global plugins
    use "wbthomason/packer.nvim"
    use "nvim-lua/popup.nvim"
    use "nvim-lua/plenary.nvim"
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use "nvim-treesitter/nvim-treesitter-textobjects"
    use "lukas-reineke/indent-blankline.nvim"
    use { "akinsho/bufferline.nvim", tag = "v2.*" }
    use "pocco81/auto-save.nvim"
    use "rcarriga/nvim-notify"
    use "fgheng/winbar.nvim"
    use "tpope/vim-eunuch"
    use "tpope/vim-vinegar"
    use "kylechui/nvim-surround"

    -- It's all fuzzy and fun
    use "nvim-telescope/telescope.nvim"
    use "nvim-telescope/telescope-media-files.nvim"
    use "nvim-telescope/telescope-project.nvim"
    use "nvim-telescope/telescope-file-browser.nvim"
    use "nvim-telescope/telescope-dap.nvim"

    -- Development
    use "airblade/vim-rooter"
    use "tpope/vim-fugitive"
    use "lewis6991/gitsigns.nvim"
    use "tpope/vim-commentary"
    use "windwp/nvim-autopairs"
    use "akinsho/toggleterm.nvim"

    -- cmp plugins
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-path"
    use "hrsh7th/cmp-cmdline"
    use "saadparwaiz1/cmp_luasnip"
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-nvim-lua"
    use "f3fora/cmp-spell"
    use "hrsh7th/cmp-nvim-lsp-signature-help"
    use "hrsh7th/cmp-emoji"
    use "KadoBOT/cmp-plugins"
    use "jc-doyle/cmp-pandoc-references"
    use "rcarriga/cmp-dap"

    -- snippets
    use "L3MON4D3/LuaSnip"
    use "rafamadriz/friendly-snippets"

    -- LSP
    use "neovim/nvim-lspconfig"
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"
    use 'mfussenegger/nvim-dap'
    use 'theHamsta/nvim-dap-virtual-text'
    use 'rcarriga/nvim-dap-ui'
    use 'mfussenegger/nvim-dap-python'
    use "jose-elias-alvarez/null-ls.nvim"
    use "folke/trouble.nvim"
    use "folke/todo-comments.nvim"

    -- Poetry virtual environment
    vim.g.venom_loaded = 1
    use {
        'rafi/vim-venom',
        ft = { 'python' },
        config = 'require("venom").setup()'
    }

    -- Documentation and Notes taking
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })
    use "godlygeek/tabular"
    use "preservim/vim-markdown"

    -- eye candy
    use 'kyazdani42/nvim-web-devicons'
    use 'nvim-lualine/lualine.nvim'
    use 'goolord/alpha-nvim'
    -- use 'tribela/vim-transparent'
    use 'norcalli/nvim-colorizer.lua'
    use "folke/which-key.nvim"
    use "xiyaowong/nvim-transparent"

    -- colorscheme
    use "ghifarit53/tokyonight-vim"
    use { 'dracula/vim', as = 'dracula' }
    use "morhetz/gruvbox"
    use "arcticicestudio/nord-vim"
    use 'navarasu/onedark.nvim'

    -- learning curve
    use {
        'glacambre/firenvim',
        run = function() vim.fn['firenvim#install'](0) end
    }
    use "ThePrimeagen/vim-be-good"

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
