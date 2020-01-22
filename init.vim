" init.vim file
" @author Michel Blavin
"
" change the leader keys
let mapleader = ","
let maplocalleader = ";"

set hidden
set relativenumber
set number

" wrapping not cutting words in the middle: source : http://stackoverflow.com/questions/744159/word-wrap-in-gvim
set formatoptions=l
set lbr

" Set the directory where the plugin will be installed
call plug#begin('~/.cache/nvim/plugged')

" 
Plug 'tpope/vim-sensible'

" LifeHacks
Plug 'https://gitlab.com/dbeniamine/todo.txt-vim.git'

" SCM
Plug 'mhinz/vim-signify'

" syntax file 
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'thanethomson/vim-jenkinsfile' 

" Developpement
Plug 'neoclide/coc.nvim'
Plug 'mikelue/vim-maven-plugin'

" Eye candy
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

colorscheme gruvbox
if has('win32') || has('win64')
"set guifont=Consolas:h12
	"set guifont=Monaco:h10
elseif has('unix')
	"set guifont=Ubuntu\ Mono\ 20
	set guifont=Fantasque\ Sans\ Mono\ 20
	"set guifont=OpenDyslexicMono\ 16
	"set guifont=Monaco\ 14
endif

source $VIMRUNTIME/mswin.vim
behave mswin
nnoremap <leader>ev :exe 'edit '.stdpath('config').'/init.vim'<CR>

"  markdown plugin : 
let g:vim_markdown_folding_disabled = 1
augroup filetype_markdown
	autocmd!
	autocmd BufNewFile,BufRead *.md setf=markdown
	autocmd FileType markdown setlocal spell spelllang=fr
	au FocusLost * silent! wa
augroup END
