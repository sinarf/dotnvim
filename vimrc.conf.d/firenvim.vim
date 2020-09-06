" configuration for the browser plugin firenvim
" see plugin doc : https://github.com/glacambre/firenvim
function! s:IsFirenvimActive(event) abort
    if !exists('*nvim_get_chan_info')
        return 0
    endif
    let l:ui = nvim_get_chan_info(a:event.chan)
    return has_key(l:ui, 'client') && has_key(l:ui.client, 'name') &&
                \ l:ui.client.name =~? 'Firenvim'
endfunction

function! OnUIEnter(event) abort
    if s:IsFirenvimActive(a:event)
        " Put firenvim specific configuration HERE
        " don't want status to take space 
        set laststatus=0
        "enable markdown filetype for github
        au BufEnter github.com_*.txt set filetype=markdown
        set guifont=Cascadia\ Code:h8
    endif
endfunction
autocmd UIEnter * call OnUIEnter(deepcopy(v:event))

