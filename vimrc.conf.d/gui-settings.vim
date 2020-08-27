if has("gui_running")
    if has('win32') || has('win64')
        set guifont=Cascadia\ Code:h12
    elseif has('unix')
        set guifont=Cascadia\ Code:h18
    endif

    colorscheme gruvbox
    set background=dark

    source $VIMRUNTIME/mswin.vim
    behave mswin
endif

