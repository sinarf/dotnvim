" Windows navigation
set splitright splitbelow
nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader>l <C-W><C-L>
nnoremap <leader>h <C-W><C-H>
nnoremap ww <C-w>

" keymaping to edit this file.
nnoremap <leader>ev :e $MYVIMRC<CR>


" switch to the directory of the current file
nnoremap <leader>. :cd %:p:h<CR>

au FocusLost *.rst,*.md :w

" Autoformat
nnoremap <leader>f :Autoformat<CR>
