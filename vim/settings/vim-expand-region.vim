" Extend the global default
call expand_region#custom_text_objects({
      \ 'ii' :0,
      \ 'ai' :0,
      \ 'ia' :0,
      \ 'ae' :1,
      \ 'af' :1,
      \ 'if' :1,
      \ 'at' :1,
      \ 'it' :1,
      \ })

" Use the global default + the following for ruby
call expand_region#custom_text_objects('ruby', {
      \ 'ir' :0,
      \ 'ar' :0,
      \ 'i:' :0,
      \ 'a:' :0,
      \ })
