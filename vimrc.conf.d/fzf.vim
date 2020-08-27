" fzf mapping
" find files
nnoremap <leader>ff :Files<CR>
" find file in git
nnoremap <leader>fg :GFiles<CR>
" MRU
nnoremap <leader>fh :History<CR>
" Find in files
nnoremap <leader>fi :Rg<CR>

" Historique des commandes
nnoremap <leader>ch :History:<CR>

nnoremap <leader>bl :Buffers<CR>
nnoremap <leader>wl :Windows<CR>

" Empty value to disable preview window altogether
let g:fzf_preview_window = ''
