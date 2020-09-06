" 
"         ___(_) _ _   __ _  _ _  / _|       __ __(_) _ __
"        (_-/| || ' \ / _` || '_||  _|  _    \ V /| || '  \
"        /__/|_||_||_|\__/_||_|  |_|   (_)    \_/ |_||_|_|_|
"
"
" source configuration files
source $HOME/.config/nvim/vimrc.conf.d/plug-config.vim
source $HOME/.config/nvim/vimrc.conf.d/global-settings.vim
source $HOME/.config/nvim/vimrc.conf.d/gui-settings.vim
source $HOME/.config/nvim/vimrc.conf.d/default-mapping.vim
source $HOME/.config/nvim/vimrc.conf.d/functions.vim
source $HOME/.config/nvim/vimrc.conf.d/coc.vim
source $HOME/.config/nvim/vimrc.conf.d/keys.vim
source $HOME/.config/nvim/vimrc.conf.d/fzf.vim
source $HOME/.config/nvim/vimrc.conf.d/python-dev.vim
source $HOME/.config/nvim/vimrc.conf.d/scm.vim

" automaticaly source vimrc on edition
autocmd! BufWritePost .vimrc,vimrc,$HOME/.config/nvim/* source $MYVIMRC

