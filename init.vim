"
" change the leader keys
"
let mapleader = " "
let maplocalleader = ","

" enable this for debug
"set verbose=9

set hidden
set number relativenumber
set cursorline
set tabstop=4
set shiftwidth=4
set expandtab
set mouse=a
set encoding=utf-8

" wrapping not cutting words in the middle: source : http://stackoverflow.com/questions/744159/word-wrap-in-gvim
set formatoptions=l
set lbr

" Set the directory where the plugin will be installed
call plug#begin('~/.cache/nvim/plugged')

" Sensible settings from tpope.
Plug 'tpope/vim-sensible'

" LifeHacks
Plug 'https://gitlab.com/dbeniamine/todo.txt-vim.git'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-startify'

" SCM
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'mattn/vim-gist'
Plug 'mattn/webapi-vim' " needed for vim-gist
Plug 'jaxbot/github-issues.vim'

" syntax file
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'thanethomson/vim-jenkinsfile'

" Developpement
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Chiel92/vim-autoformat'
Plug 'preservim/nerdcommenter'

" Python
Plug 'vim-scripts/indentpython.vim'
Plug 'nvie/vim-flake8' " PEP8 checking
Plug 'python-rope/ropevim' " refactoring

" Eye candy
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'vim-scripts/ScrollColors'

call plug#end()

colorscheme gruvbox
"navigate colorschemes
map <silent><F3> :NEXTCOLOR<cr>
map <silent><F2> :PREVCOLOR<cr>

if has('win32') || has('win64')
    set guifont=Consolas:h12
    "set guifont=Monaco:h10
elseif has('unix')
    "set guifont=Fantasque\ Sans\ Mono\ 20
    set guifont=DejaVu\ Sans\ Mono:h14
    "set guifont=OpenDyslexicMono\ 16
    "set guifont=Monaco\ 14
endif

source $VIMRUNTIME/mswin.vim
behave mswin
set encoding=utf-8

" some stuff are not publicly availlable
source ~/Sync/config/vim/secretsauce.vim

" Windows navigation
set splitright splitbelow
nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader>l <C-W><C-L>
nnoremap <leader>h <C-W><C-H>
nnoremap ww <C-w>

" keymaping to edit this file.
nnoremap <leader>ev :exe 'edit '.stdpath('config').'/init.vim'<CR>

" NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" switch to the directory of the current file
nnoremap <leader>cd :cd %:p:h<CR>
" Autoformat access everywhere
nnoremap <leader>a :Autoformat<CR>
"Simple scripts runner
nnoremap <leader>r :w<CR>:terminal %<CR>

nnoremap <leader>m :FZFMru<CR>
nnoremap <leader>p :FZF<CR>

" Swich spelllang
nnoremap <leader>se :set spelllang=en<CR>
nnoremap <leader>sf :set spelllang=fr<CR>

"  markdown plugin :
let g:vim_markdown_folding_disabled = 1
augroup filetype_markdown
    autocmd!
    autocmd BufNewFile,BufRead *.md,*.markdown setf=markdown
    autocmd FileType markdown setlocal spelllang=en_us
    au FocusLost * silent! wa
augroup END

augroup filetype_python
    autocmd!
    autocmd BufWritePost *.py call flake8#Flake8()
augroup END

" autoformat on write
augroup autoformat
    autocmd!
    " All files
    "au BufWrite * :Autoformat
    " Only certain files
    au BufWrite *.ts,*.js,*.html,*.css,*.json :Autoformat<CR>
augroup END

" vim signify configuration
let g:signify_vcs_list= ['git', 'svn']

"  markdown plugin :
let g:vim_markdown_folding_disabled = 1


"
" COC configuration
"
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Bash IDE
let g:BASH_AuthorName   = 'Michel Blavin AKA sinarf'
let g:BASH_Email        = 'sinarf@sinarf.org'

"Rope
let ropevim_vim_completion=1
let ropevim_extended_complete=1
"flake8
let g:flake8_show_in_gutter=1
"let g:flake8_show_in_file=1
"
" FZF Most recent files
"
command! FZFMru call fzf#run({
            \ 'source':  reverse(s:all_files()),
            \ 'sink':    'edit',
            \ 'options': '-m -x +s',
            \ 'down':    '40%' })

function! s:all_files()
    return extend(
                \ filter(copy(v:oldfiles),
                \        "v:val !~ 'fugitive:\\|NERD_tree\\|^/tmp/\\|.git/'"),
                \ map(filter(range(1, bufnr('$')), 'buflisted(v:val)'), 'bufname(v:val)'))
endfunction

