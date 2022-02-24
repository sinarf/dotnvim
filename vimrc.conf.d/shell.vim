augroup filetype_sh
    autocmd!
    autocmd FileType sh :setlocal tabstop=2
    autocmd FileType sh :setlocal shiftwidth=2
    autocmd BufWritePost *.sh :ShellCheck! -x
augroup END
