" Make it beautiful - colors and fonts

if has("gui_running")
  "tell the term has 256 colors
  set t_Co=256

  " Show tab number (useful for Cmd-1, Cmd-2.. mapping)
  " For some reason this doesn't work as a regular set command,
  " (the numbers don't show up) so I made it a VimEnter event
  autocmd VimEnter * set guitablabel=%N:\ %t\ %M

  set lines=60
  set columns=190

  " it make scroll slow
  " set macligatures
  if has("gui_gtk2")
    set guifont=Monaco\ for\ Powerline\ 15
  else
    " set guifont=Fira\ Code\ Light:h15
    set guifont=Source\ Code\ Pro\ Light\ for\ Powerline:h15
  end
else
  let g:CSApprox_loaded = 1
endif

colorscheme hybrid

set transparency=1
