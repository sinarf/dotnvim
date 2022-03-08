" vim signify configuration
let g:signify_vcs_list= ['git', 'svn']

" Fugitive mapping
nnoremap <leader>gg :Git<CR>
" git  log on current file
nnoremap <leader>gl :Gclog -- %<CR>
