" vimwiki configuration
"
let g:vimwiki_list = [{'path': '~/Sync/pkb/main/', 'syntax': 'markdown', 'ext': '.md'}]

au FileType vimwiki setlocal spell

augroup vimwikigroup
        autocmd!
        " automatically update links on read diary
         autocmd BufRead,BufNewFile diary.md VimwikiDiaryGenerateLinks
 augroup end
