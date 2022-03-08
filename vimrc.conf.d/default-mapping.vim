" Windows navigation
set splitright splitbelow
nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader>l <C-W><C-L>
nnoremap <leader>h <C-W><C-H>

" resize windows
nnoremap <leader>wl :vertical resize +10<CR>
nnoremap <leader>wL :vertical resize -10<CR>
nnoremap <leader>wH :resize -10<CR>
nnoremap <leader>wh :resize +10<CR>

" full size window
nnoremap <leader>wo <C-W><C-O>

" buffers
nnoremap <leader>bn :bn<CR>
nnoremap <leader>bp :bp<CR>
nnoremap <leader>bd :bd<CR>

" keymaping to edit this file.
nnoremap <leader>ev :e $MYVIMRC<CR>

" switch to the directory of the current file
nnoremap <leader>. :cd %:p:h<CR>

au FocusLost *.rst,*.md :update

" when you can't escape
inoremap jj <Esc>

" Tabs
nnoremap  <C-t> :tabnew<CR>
nnoremap  <C-Tab> :tabnext<CR>
nnoremap  <C-S-Tab> :tabprevious<CR>

" Disable Ex mode mapping
nnoremap Q <Nop>

" run current file

nnoremap  <leader>r :! ./%<CR>
