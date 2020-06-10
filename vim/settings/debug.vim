" javascript
" Console log from insert mode; Puts focus inside parentheses
autocmd FileType javascript imap <buffer> col console.log()<Esc>==f(a
" Console log from visual mode on next line, puts visual selection inside parentheses
autocmd FileType javascript vmap <buffer> col yocol<Esc>p
" Console log from normal mode, inserted on next line with word your on inside parentheses
autocmd FileType javascript nmap <buffer> col yiwocol<Esc>p

" ruby
autocmd FileType ruby nmap <buffer> dug Odebugger<Esc>
autocmd FileType ruby nmap <buffer> bid Obinding.pry<Esc>
