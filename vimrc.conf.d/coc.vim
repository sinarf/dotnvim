"
" COC configuration
"
"Coc Extensions to install automaticaly
let g:coc_global_extensions = [
      \'coc-actions',
      \'coc-css',
      \'coc-explorer',
      \'coc-json', 
      \'coc-java',
      \'coc-java-debug',
      \'coc-git',
      \'coc-highlight',
      \'coc-html',
      \'coc-marketplace',
      \'coc-markdownlint',
      \'coc-powershell',
      \'coc-prettier',
      \'coc-python',
      \'coc-sql',
      \'coc-sh',
      \'coc-ultisnips',
      \'coc-xml',
      \'coc-yaml',
      \]

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> ga <Plug>(coc-codeaction)
nmap <silent> gn <Plug>(coc-diagnostic-next)

nmap <leader>rn <Plug>(coc-rename)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  COMPLETION
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  EXPLORER 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <space>ee :CocCommand explorer<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  SNIPPETS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

