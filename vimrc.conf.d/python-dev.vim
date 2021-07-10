augroup filetype_python
    autocmd!
    autocmd BufWritePost *.py call flake8#Flake8()
    autocmd BufWritePost *.py Pytest project
    autocmd BufWritePre *.py %s/\s\+$//e
augroup END

"Rope
let ropevim_vim_completion=1
let ropevim_extended_complete=1
"flake8
let g:flake8_show_in_gutter=1
"let g:flake8_show_in_file=1
