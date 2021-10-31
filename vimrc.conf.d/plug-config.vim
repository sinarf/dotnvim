" Plug configuration
" Set the directory where the plugin will be installed
call plug#begin('~/.cache/nvim/plugged')

" Sensible settings from tpope.
Plug 'tpope/vim-sensible'

" LifeHacks
Plug 'mhinz/vim-startify'
" Plantuml
Plug 'aklt/plantuml-syntax'

Plug 'scrooloose/vim-slumlord' 
" nvim in the browser
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

" PKG / doc / Notes taking
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'majutsushi/tagbar'
Plug 'blindFS/vim-taskwarrior'
Plug 'habamax/vim-asciidoctor'

" fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Telescope 
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
"Telescope optional dependencies
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" SCM
Plug 'tpope/vim-fugitive'
"Plug 'tpope/vim-rhubarb'

Plug 'mhinz/vim-signify'

Plug 'mattn/vim-gist'
Plug 'mattn/webapi-vim' 

" syntax file
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'thanethomson/vim-jenkinsfile'
Plug 'cespare/vim-toml'

" Developpement
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
Plug 'preservim/nerdcommenter'
Plug 'Chiel92/vim-autoformat'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-rooter'
Plug 'itspriddle/vim-shellcheck'
Plug 'editorconfig/editorconfig-vim'

" Eye candy
Plug 'morhetz/gruvbox'
Plug 'dracula/vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'liuchengxu/vim-which-key'
Plug 'norcalli/nvim-colorizer.lua'

call plug#end()

