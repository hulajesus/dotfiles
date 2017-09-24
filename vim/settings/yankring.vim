let g:yankring_history_file = '.yankring-history'
let g:yankring_replace_n_nkey = ''

nnoremap ,yr :YRShow<CR>
nnoremap C-y :YRShow<CR>
nnoremap <silent> ,p :YRShow<CR>

map <F12> :call PasteToggle()<CR>
function! PasteToggle()
  let s:inPaste = &paste
    if !s:inPaste
        set paste
        set indentexpr=
    else
        set nopaste
" echo &indentexpr funcion eclim??
        set indentexpr=
    endif

endfunction
