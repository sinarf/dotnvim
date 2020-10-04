" specific configuration for markdown

augroup filetype_markdown
    autocmd!
    autocmd BufNewFile,BufRead *.md,*.markdown setf=markdown
    " autosave 
    au FocusLost * silent! wa
    set autowrite
    " Shadowing the gf command so it will create the file
    nnoremap gf :e <cfile><cr>
augroup END
