let g:ale_sign_error = '✹'
let g:ale_sign_warning = '⚠'
let g:ale_echo_msg_format = '[#%linter%#] %s [%severity%]'
let g:ale_statusline_format = ['E•%d', 'W•%d', 'OK']
let g:ale_echo_msg_error_str = '✹'
let g:ale_echo_msg_warning_str = '⚠'

nmap <Leader>en <Plug>(ale_next)
nmap <Leader>ep <Plug>(ale_previous)

let g:ale_linters = {
\   'javascript': ['eslint'],
\}
