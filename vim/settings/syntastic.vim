"mark syntax errors with :signs
let g:syntastic_enable_signs=1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
"automatically jump to the error when saving the file
let g:syntastic_auto_jump=0
"show the error list automatically
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list=0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
"don't care about warnings
let g:syntastic_quiet_messages = {'level': 'warnings'}
" Default to eslint. If you need jshint, you can override this in
" ~/.vimrc.after
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'

" I have no idea why this is not working, as it used to
" be a part of syntastic code but was apparently removed
" This will make syntastic find the correct ruby specified by mri
function! s:FindRubyExec()
    if executable("rvm")
        return system("rvm tools identifier")
    endif

    return "ruby"
endfunction

if !exists("g:syntastic_ruby_exec")
    let g:syntastic_ruby_exec = s:FindRubyExec()
endif
