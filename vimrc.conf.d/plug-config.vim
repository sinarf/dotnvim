" Plug configuration
" Set the directory where the plugin will be installed
call plug#begin('~/.cache/nvim/plugged')

" Sensible settings from tpope.
Plug 'tpope/vim-sensible'

" LifeHacks
Plug 'mhinz/vim-startify'
Plug 'wayhome/riv.vim'
Plug 'aklt/plantuml-syntax'
Plug 'scrooloose/vim-slumlord'
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" SCM
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'mattn/vim-gist'
Plug 'mattn/webapi-vim' " needed for vim-gist

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

call plug#end()

