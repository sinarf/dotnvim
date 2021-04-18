" fzf mapping
" find files
nnoremap <leader>ff :Files<CR>
" Find in files
nnoremap <leader>fi :Rg 

" find file in git
nnoremap <leader>fgf :GFiles<CR>
" in git status 
nnoremap <leader>fgs :GFiles?<CR>
" git log
nnoremap <leader>fgc :Commits<CR>

nnoremap <leader>fl :Lines<CR>

" BUFFERS 
nnoremap <leader>fbb :Buffers<CR>
" current buffer
nnoremap <leader>fbc :BCommits<CR>
nnoremap <leader>fbl :BLines<CR>

" HISTORY 
" commands 
nnoremap <leader>fhc :History:<CR>
" files
nnoremap <leader>fhf :History<CR>
"search 
nnoremap <leader>fhs :History/<CR>

" WINDOWS 
nnoremap <leader>fw :Windows<CR>

" Empty value to disable preview window altogether
let g:fzf_preview_window = ''
" layout as a popup
"let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }
