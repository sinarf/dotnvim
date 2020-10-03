" fzf mapping
" find files
nnoremap <leader>ff :Files<CR>
" find file in git
nnoremap <leader>fg :GFiles<CR>
" MRU
nnoremap <leader>fm :History<CR>
" Find in files
nnoremap <leader>fi :Rg<CR>

" Historique des commandes
nnoremap <leader>fh :History:<CR>

nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>fw :Windows<CR>

nnoremap <leader>fh :Helptags<CR>

" Empty value to disable preiew window altogether
let g:fzf_preview_window = ''
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }
