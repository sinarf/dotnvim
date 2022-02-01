" specific configuration for markdown

augroup filetype_markdown
    autocmd!
    autocmd BufNewFile,BufRead *.md,*.markdown set filetype=markdown
    autocmd FileType markdown setlocal spell
    autocmd FileType markdown setlocal spelllang=fr,en
    autocmd BufRead today.md !archive_dailynote.py
    " autosave on lost focus.
    au FocusLost * silent! wa
    set autowrite
    " Shadowing the gf command so it will create the file
    nnoremap gf :e <cfile><cr>
augroup END

nnoremap <leader>nt :e $TODAY_NOTE <CR>
nnoremap <leader>nw :e $WIP_NOTE <CR>
