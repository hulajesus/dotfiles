" ========================================
" General vim sanity improvements
" ========================================
"
"C-U
" alias yw to yank the entire word 'yank inner word'
" even if the cursor is halfway inside the word
" FIXME: will not properly repeat when you use a dot (tie into repeat.vim)
nnoremap ,yw yiww

" ,ow = 'overwrite word', replace a word with what's in the yank buffer
" FIXME: will not properly repeat when you use a dot (tie into repeat.vim)
nnoremap ,ow "_diwhp

"make Y consistent with C and D
nnoremap Y y$
function! YRRunAfterMaps()
  nnoremap Y   :<C-U>YRYankCount 'y$'<CR>
endfunction
nnoremap zf zMzo

" Make 0 go to the first character rather than the beginning
" of the line. When we're programming, we're almost always
" interested in working with text rather than empty space. If
" you want the traditional beginning of line, use ^
nnoremap 0 ^
vnoremap 0 ^
nnoremap ^ 0
vnoremap ^ 0

" forward tag list
nnoremap <C-g> :tag<CR>

" ,# Surround a word with #{ruby interpolation}
map ,# ysiw#
vmap ,# c#{<C-R>"}<ESC>

" ," Surround a word with "quotes"
map ," ysiw"
vmap ," c"<C-R>""<ESC>

" ,' Surround a word with 'single quotes'
map ,' ysiw'
vmap ,' c'<C-R>"'<ESC>

" ,) or ,( Surround a word with (parens)
" The difference is in whether a space is put in
map ,( ysiw(
map ,) ysiw)
vmap ,( c( <C-R>" )<ESC>
vmap ,) c(<C-R>")<ESC>

" ,[ Surround a word with [brackets]
map ,] ysiw]
map ,[ ysiw[
vmap ,[ c[ <C-R>" ]<ESC>
vmap ,] c[<C-R>"]<ESC>

" ,{ Surround a word with {braces}
map ,} ysiw}
map ,{ ysiw{
vmap ,} c{ <C-R>" }<ESC>
vmap ,{ c{<C-R>"}<ESC>

map ,` ysiw`

"Go to last edit location with ,.
nnoremap ,. '.

"When typing a string, your quotes auto complete. Move past the quote
"while still in insert mode by hitting Ctrl-a. Example:
"
" type 'foo<c-a>
"
" the first quote will autoclose so you'll get 'foo' and hitting <c-a> will
" put the cursor right after the quote
imap <C-w> <esc>wa

" ==== NERD tree
" Open the project tree and expose current file in the nerdtree with Ctrl-\
" " calls NERDTreeFind iff NERDTree is active, current window contains a modifiable file, and we're not in vimdiff
function! OpenNerdTree()
  if &modifiable && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
  else
    NERDTreeToggle
  endif
endfunction
nnoremap <silent> <C-\> :call OpenNerdTree()<CR>

" ,q to toggle quickfix window (where you have stuff like Ag)
" ,oq to open it back up (rare)
nmap <silent> ,qc :cclose<CR>
nmap <silent> ,qo :copen<CR>

"Move back and forth through previous and next buffers
"with ,z and ,x
nnoremap <silent> ,z :bp<CR>
nmap <silent> <S-Tab> :bnext<CR>
nnoremap <silent> ,x :bn<CR>

" ==============================
" Window/Tab/Split Manipulation
" ==============================
" Move between split windows by using the four directions H, L, K, J
" NOTE: This has moved to vim/settings/vim-tmux-navigator.vim.
" nnoremap <silent> <C-h> <C-w>h
" nnoremap <silent> <C-l> <C-w>l
" nnoremap <silent> <C-k> <C-w>k
" nnoremap <silent> <C-j> <C-w>j

" Make gf (go to file) create the file, if not existent
nnoremap <C-w>f :sp +e<cfile><CR>
nnoremap <C-w>gf :tabe<cfile><CR>

" Zoom in
map <silent> ,gz <C-w>o

" Create window splits easier. The default
" way is Ctrl-w,v and Ctrl-w,s. I remap
" this to vv and ss
nnoremap <silent> vv <C-w>v
nnoremap <silent> ss <C-w>s

" create <%= foo %> erb tags using Ctrl-k in edit mode
imap <silent> <C-K> <%=   %><Esc>3hi

" create <%= foo %> erb tags using Ctrl-j in edit mode
imap <silent> <C-J> <%  %><Esc>2hi

" ============================
" Shortcuts for everyday tasks
" ============================

" copy current filename into system clipboard - mnemonic: (c)urrent(f)ilename
" this is helpful to paste someone the path you're looking at
nnoremap <silent> ,cf :let @* = expand("%:~")<CR>
nnoremap <silent> ,pwd :let @* = expand("%:p:h")<CR>
nnoremap <silent> ,cr :let @* = expand("%")<CR>
nnoremap <silent> ,cn :let @* = expand("%:t")<CR>

"Clear current search highlight by double tapping //
" nmap <silent> // :nohlsearch<CR>
nmap <silent> <BS> :nohlsearch<CR>

"(v)im (c)ommand - execute current line as a vim command
nmap <silent> ,vc yy:<C-f>p<C-c><CR>

"(v)im (r)eload
nmap <silent> ,vr :so $MYVIMRC<CR>

"(e)dit (v)im/split
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
"(e)dit (z)sh/split
nnoremap <leader>ez :vsplit ~/.zshrc<CR>

:inoremap jk <esc>

" move vertically by visual line even relativenumber on
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
" nnoremap B 0
nnoremap E $

" highlight last inserted text
nnoremap gV `[v`]

nnoremap cc :%s/\<<C-r><C-w>\>/
vnoremap cc y:%s/\<<C-r><C-w>\>/

nnoremap <silent> yo :call YankOnce()<CR>o
function! YankOnce()
    let b:paste = &paste
    set paste
    autocmd InsertLeave *
          \ if exists('b:paste') |
          \   let &paste = b:paste |
          \   unlet b:paste |
          \ endif
endfunction

" Ctrl-a/e: Go to begin/end of line
inoremap <C-a> <esc>I
inoremap <C-e> <esc>A

" Ctrl-[fb]: Move left/right by word
cnoremap <C-b> <S-left>
cnoremap <C-f> <S-right>
inoremap <C-b> <S-left>
inoremap <C-f> <S-right>
nnoremap <C-b> <S-left>
nnoremap <C-f> <S-right>

" " Ctrl-[kj]: Move lines up/down
" nnoremap <silent> <C-j> :m '>+1<CR>gv=gv
" vnoremap <silent> <C-k> :m '<-2<CR>gv=gv

" Bash like keys for the command line
cnoremap <C-a> <home>

" Type ,hl to toggle highlighting on/off, and show current value.
noremap ,hl :set hlsearch! hlsearch?<CR>

" Resize windows with arrow keys
nnoremap <silent> <C-M-H> <C-W><
nnoremap <silent> <C-M-j> <C-W>+
nnoremap <silent> <C-M-k> <C-W>-
nnoremap <silent> <C-M-l> <C-W>>

" These are very similar keys. Typing 'a will jump to the line in the current
" file marked with ma. However, `a will jump to the line and column marked
" with ma.  It’s more useful in any case I can imagine, but it’s located way
" off in the corner of the keyboard. The best way to handle this is just to
" swap them: http://items.sjbach.com/319/configuring-vim-right
nnoremap ' `
nnoremap ` '
nmap mm :delmarks!<cr>

" ============================
" SplitJoin plugin
" ============================
nmap sj :SplitjoinSplit<cr>
nmap sk :SplitjoinJoin<cr>

" Get the current highlight group. Useful for then remapping the color
map ,hi :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>

" ,hp = html preview
map <silent> ,hp :!open -a Safari %<CR><CR>

" Map Ctrl-x and Ctrl-z to navigate the quickfix error list (normally :cn and
" :cp)
" nnoremap <silent> <C-x> :cn<CR>
" nnoremap <silent> <C-z> :cp<CR>
"
" imap <C-x> <esc>ddi

function PrettyJson()
  let &l:filetype='json'
  execute ":%!python -m json.tool"
endfunction

map <silent> <leader>json :call PrettyJson()<CR>

nnoremap <F4> :exec exists('syntax_on') ? 'syn off': 'syn on'<CR>

nmap /  <Plug>(incsearch-forward)
nmap ?  <Plug>(incsearch-backward)

nmap <C-space> :tn<CR>

" redraw
nnoremap <leader>l :nohlsearch<cr>:diffupdate<cr>:syntax sync fromstart<cr><c-l>
