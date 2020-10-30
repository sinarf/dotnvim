
colorscheme gruvbox
set background=dark

if has("unix")
    " transparency only on unix
    hi Normal ctermbg=NONE guibg=NONE
    hi NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE

    " set the color of the invisible characters
    " TODO use a color of the colorscheme, instead of an hardcoded one ;)
    hi NonText ctermfg=16 guifg=#4a4a59
    hi SpecialKey ctermfg=16 guifg=#4a4a59

endif
source $VIMRUNTIME/mswin.vim
behave mswin

set guifont=Cascadia\ Code:h12


