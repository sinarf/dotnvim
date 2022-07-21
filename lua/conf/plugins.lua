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
-- FIXME use the new lua syntax for autocmd
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

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
    use "lukas-reineke/indent-blankline.nvim"
    use { "akinsho/bufferline.nvim", tag = "v2.*" }
    use "Pocco81/AutoSave.nvim"

    use "kyazdani42/nvim-tree.lua"

    -- It's all fuzzy and fun
    use "nvim-telescope/telescope.nvim"
    use "nvim-telescope/telescope-media-files.nvim"
    use "nvim-telescope/telescope-project.nvim"
    use "nvim-telescope/telescope-file-browser.nvim"

    -- Development
    use "airblade/vim-rooter"
    use "tpope/vim-fugitive"
    use "lewis6991/gitsigns.nvim"
    use "tpope/vim-commentary"
    use({ "windwp/nvim-autopairs" })
    use { "akinsho/toggleterm.nvim", tag = 'v1.*' }

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
    use "dmitmel/cmp-digraphs"
    use "hrsh7th/cmp-emoji"
    use "KadoBOT/cmp-plugins"
    use "jc-doyle/cmp-pandoc-references"

    -- snippets
    use "L3MON4D3/LuaSnip"
    use "rafamadriz/friendly-snippets"

    -- LSP
    use "neovim/nvim-lspconfig"
    use "williamboman/nvim-lsp-installer"
    use "jose-elias-alvarez/null-ls.nvim"
    use "folke/trouble.nvim"

    -- Documentation and Notes taking
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

    -- eye candy
    use 'kyazdani42/nvim-web-devicons'
    use 'nvim-lualine/lualine.nvim'
    use 'goolord/alpha-nvim'
    use 'tribela/vim-transparent'
    use 'norcalli/nvim-colorizer.lua'

    -- colorscheme
    use { 'dracula/vim', as = 'dracula' }
    use "morhetz/gruvbox"

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
