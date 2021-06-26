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
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" Gesttion des sessions
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'

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
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 

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
Plug 'erietz/vim-terminator'
Plug 'airblade/vim-rooter'

" Python
Plug 'vim-scripts/indentpython.vim'
Plug 'nvie/vim-flake8' " PEP8 checking
Plug 'python-rope/ropevim' " refactoring
Plug 'alfredodeza/pytest.vim' " test

" Eye candy
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'liuchengxu/vim-which-key'
Plug 'camspiers/animate.vim'
Plug 'camspiers/lens.vim'
Plug 'norcalli/nvim-colorizer.lua'

call plug#end()

