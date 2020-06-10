function! GetVisual()
  let reg_save = getreg('"')
  let regtype_save = getregtype('"')
  let cb_save = &clipboard
  set clipboard&
  normal! ""gvy
  let selection = getreg('"')
  call setreg('"', reg_save, regtype_save)
  let &clipboard = cb_save
  return selection
endfunction

"grep the current word using K (mnemonic Kurrent)
" nnoremap <silent> K :Ag <cword><CR>
nmap <silent> K <Plug>CtrlSFCCwordPath<CR>

"grep visual selection
" vnoremap K :<C-U>execute "Ag " . GetVisual()<CR>
vmap K <Plug>CtrlSFVwordExec

"grep current word up to the next exclamation point using ,K
" nnoremap ,K viwf!:<C-U>execute "Ag " . GetVisual()<CR>
nmap ,K <Plug>CtrlSFCwordPath<left>

"grep for 'def foo'
" nnoremap <silent> ,gd :Ag 'def <cword>'<CR>

",gg = Grep! - using Ag the silver searcher
" open up a grep line, with a quote started for the search
" nnoremap ,gg :Ag ""<left>
nnoremap ,gg :CtrlSF ""<left>

"Grep for usages of the current file
" nnoremap ,gcf :exec "Ag " . expand("%:t:r")<CR>

let g:ctrlsf_regex_pattern = 1
let g:ctrlsf_auto_close = 0
let g:ctrlsf_position = 'right'
let g:ctrlsf_winsize = '40%'

" 替换函数。参数说明：
" confirm：是否替换前逐一确认
" wholeword：是否整词匹配
" replace：被替换字符串
function! Replace(confirm, wholeword, replace)
    wa
    let flag = ''
    if a:confirm
        let flag .= 'gec'
    else
        let flag .= 'ge'
    endif
    let search = ''
    if a:wholeword
        let search .= '\<' . escape(expand('<cword>'), '/\.*$^~[') . '\>'
    else
        let search .= expand('<cword>')
    endif
    let replace = escape(a:replace, '/\&~')
    execute '%s/' . search . '/' . replace . '/' . flag . '| update'
endfunction
" 不确认、非整词
nnoremap <Leader>R :call Replace(0, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 不确认、整词
nnoremap <Leader>rw :call Replace(0, 1, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、非整词
nnoremap <Leader>rc :call Replace(1, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、整词
nnoremap <Leader>rcw :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>
nnoremap <Leader>rwc :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>
