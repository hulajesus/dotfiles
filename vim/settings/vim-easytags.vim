let g:easytags_cmd = '/usr/local/bin/ctags'
let g:easytags_async = 1
set tags=tags;
let g:easytags_dynamic_files = 2
let g:easytags_events = ['BufWritePost']
let g:easytags_languages = {
\   'javascript': {
\       'cmd': 'jsctags',
\       'args': [],
\       'fileoutput_opt': '-f',
\       'stdout_opt': '-f-',
\       'recurse_flag': '-R'
\   }
\}
