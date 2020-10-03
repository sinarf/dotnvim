" fzf mapping
" find files
nnoremap <leader>ff :Files<CR>
" Find in files
nnoremap <leader>fi :Rg<CR>

" find file in git
nnoremap <leader>fgf :GFiles<CR>
nnoremap <leader>fgs :GFiles?<CR>
nnoremap <leader>fgc :Commits<CR>


nnoremap <leader>fl :Lines<CR>
" current buffer
nnoremap <leader>fbc :BCommits<CR>
nnoremap <leader>fbl :BLines<CR>
nnoremap <leader>fbo :Buffers<CR>

" History 
" commands 
nnoremap <leader>fhc :History:<CR>
" files
nnoremap <leader>fhf :History<CR>
"search 
nnoremap <leader>fhs :History/<CR>

nnoremap <leader>fw :Windows<CR>

" Empty value to disable preiew window altogether
let g:fzf_preview_window = ''
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }
