" vimwiki configuration
"
let g:vimwiki_list = [{'path': '~/Sync/pkb/main/', 'syntax': 'markdown', 'ext': '.md'}]

au FileType vimwiki setlocal spell

augroup vimwikigroup
        autocmd!
        " automatically update links on read diary
         autocmd BufRead,BufNewFile diary.md VimwikiDiaryGenerateLinks
         autocmd FileType vimwiki setlocal spell
         autocmd FileType vimwiki setlocal spelllang=en,fr
         " change the working directory
         autocmd FileType vimwiki :cwd ~/Sync/pkb/main/
augroup end

" setup calendar
let g:calendar_monday = 1
let g:calendar_diary=$HOME.'/Sync/pkb/main/diary'
