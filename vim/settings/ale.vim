let g:ale_sign_error = '✹'
let g:ale_sign_warning = '⚠'
let g:ale_echo_msg_format = '[#%linter%#] %s [%severity%]'
let g:ale_statusline_format = ['E•%d', 'W•%d', 'OK']
let g:ale_echo_msg_error_str = '✹'
let g:ale_echo_msg_warning_str = '⚠'
let g:ale_emit_conflict_warnings = 0

" let g:ale_lint_delay = 300
let g:ale_sign_column_always = 1
" Write this in your vimrc file
" let g:ale_lint_on_text_changed = 'never'
" You can disable this option too
" if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 0

" let g:ale_set_loclist = 0
" let g:ale_set_quickfix = 1
" let g:ale_open_list = 1

highlight clear ALEErrorSign
highlight clear ALEWarningSign

nmap <Leader>en <Plug>(ale_next)
nmap <Leader>ep <Plug>(ale_previous)

let g:ale_linters = {
\   'javascript': ['eslint'],
\   'java': [],
\   'c': [],
\   'cpp': [],
\}
