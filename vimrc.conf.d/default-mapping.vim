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
nnoremap <leader>cd :cd %:p:h<CR>

" Option for gvim 
if has('gui_running')
    " Size of GVim window
    set lines=50 columns=120
    " Don't display the menu or toolbar. Just the screen.
    " set guioptions-=m
    set guioptions-=T
endif

au FocusLost *.rst,*.md :w
