lua << EOS
require('adoc_pdf_live').setup()
EOS

augroup filetype_asciidoctor
    autocmd!
    autocmd FileType asciidoctor setlocal spell
    autocmd FileType asciidoctor setlocal spelllang=en
    " Open source file in the browser 
    nnoremap <leader>os :! $BROWSER "file://%:p"<CR> 

    " Open generated HTML
    nnoremap <leader>oh :Asciidoctor2HTML<CR>:AsciidoctorOpenHTML<CR> 
    " Open generated PDF
    nnoremap <leader>op :Asciidoctor2PDF:AsciidoctorOpenPDF<CR>
    " autosave on lost focus.
    au FocusLost * :update
    set autowrite
    " Shadowing the gf command so it will create the file
    nnoremap gf :e <cfile><cr>
    
augroup END

