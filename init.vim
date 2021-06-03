"         ___(_) _ _   __ _  _ _  / _|       __ __(_) _ __
"        (_-/| || ' \ / _` || '_||  _|  _    \ V /| || '  \
"        /__/|_||_||_|\__/_||_|  |_|   (_)    \_/ |_||_|_|_|
"
"
" source configuration files

if has("win64")

    source $HOME/AppData/Local/nvim/vimrc.conf.d/plug-config.vim
    source $HOME/AppData/Local/nvim/vimrc.conf.d/global-settings.vim
    source $HOME/AppData/Local/nvim/vimrc.conf.d/gui-settings.vim
    source $HOME/AppData/Local/nvim/vimrc.conf.d/default-mapping.vim
    source $HOME/AppData/Local/nvim/vimrc.conf.d/functions.vim
    source $HOME/AppData/Local/nvim/vimrc.conf.d/coc.vim
    source $HOME/AppData/Local/nvim/vimrc.conf.d/fzf.vim
    source $HOME/AppData/Local/nvim/vimrc.conf.d/python-dev.vim
    source $HOME/AppData/Local/nvim/vimrc.conf.d/scm.vim
    source $HOME/AppData/Local/nvim/vimrc.conf.d/markdown.vim
    source $HOME/AppData/Local/nvim/vimrc.conf.d/sessions.vim

    " this one should be last so it overrides others
    source $HOME/AppData/Local/nvim/vimrc.conf.d/firenvim.vim
else
    source $HOME/.config/nvim/vimrc.conf.d/plug-config.vim
    source $HOME/.config/nvim/vimrc.conf.d/global-settings.vim
    source $HOME/.config/nvim/vimrc.conf.d/gui-settings.vim
    source $HOME/.config/nvim/vimrc.conf.d/default-mapping.vim
    source $HOME/.config/nvim/vimrc.conf.d/functions.vim
    source $HOME/.config/nvim/vimrc.conf.d/coc.vim
    source $HOME/.config/nvim/vimrc.conf.d/fzf.vim
    source $HOME/.config/nvim/vimrc.conf.d/keys.vim
    source $HOME/.config/nvim/vimrc.conf.d/python-dev.vim
    source $HOME/.config/nvim/vimrc.conf.d/scm.vim
    source $HOME/.config/nvim/vimrc.conf.d/markdown.vim
    source $HOME/.config/nvim/vimrc.conf.d/sessions.vim

    " this one should be last so it overrides others
    source $HOME/.config/nvim/vimrc.conf.d/firenvim.vim

endif

let SECRET_FILE = $HOME . "/Sync/config/vim/secretsauce.vim"
if filereadable($SECRET_FILE)
    source $SECRET_FILE
endif

" automatically source vimrc on edition
autocmd! BufWritePost .vimrc,vimrc,$HOME/.config/nvim/* source $MYVIMRC
