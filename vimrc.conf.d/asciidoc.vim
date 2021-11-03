lua << EOS
require('adoc_pdf_live').setup()
EOS

augroup filetype_asciidoctor
    autocmd!
    autocmd FileType asciidoctor setlocal spell
    autocmd FileType asciidoctor setlocal spelllang=fr,en
    " autosave on lost focus.
    au FocusLost * silent! wa
    set autowrite
    " Shadowing the gf command so it will create the file
    nnoremap gf :e <cfile><cr>
augroup END

