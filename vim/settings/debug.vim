" Console log from insert mode; Puts focus inside parentheses
imap col console.log()<Esc>==f(a
" Console log from visual mode on next line, puts visual selection inside parentheses
vmap col yocol<Esc>p
" Console log from normal mode, inserted on next line with word your on inside parentheses
nmap col yiwocol<Esc>p


nmap dug Odebugger<Esc>
nmap bid Obinding.pry<Esc>
