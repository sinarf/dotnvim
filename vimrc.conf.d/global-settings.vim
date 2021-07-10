"This file contains global config for vim

" change the leader keys
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
" searching
set incsearch
set ignorecase
set smartcase

" Make the clipboard work
set pastetoggle=<F2>
set clipboard=unnamed

" wrapping not cutting words in the middle: source : http://stackoverflow.com/questions/744159/word-wrap-in-gvim
set formatoptions=l
set lbr

" keep a backup of edited files
set backup
" make undos persistent
set undofile
" no spell checking by default, it can be enable manually
 
" SPELL CONFIGURATION | English and French
set spelllang=fr,en


let s:dir = '~/.local/share/vim'
if isdirectory(expand(s:dir))
    if &directory =~# '^\.,'
        let &directory = expand(s:dir) . '/swap//,' . &directory
    endif
    if &backupdir =~# '^\.,'
        let &backupdir = expand(s:dir) . '/backup//,' . &backupdir
    endif
    if exists('+undodir') && &undodir =~# '^\.\%(,\|$\)'
        let &undodir = expand(s:dir) . '/undo//,' . &undodir
    endif
endif

" set invisible characters
set listchars=tab:▶▷
set listchars+=eol:↲
set listchars+=trail:∙
set listchars+=extends:❯
set listchars+=precedes:❮
set listchars+=space:·

"vertical splits less gap between bars
set fillchars+=vert:│

" display the stuff
set list

" Enable the colorizer plugin
set termguicolors
lua require'colorizer'.setup()
