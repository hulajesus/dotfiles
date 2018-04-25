" " Make nerdtree look nice
" let NERDTreeMinimalUI = 1
" let NERDTreeDirArrows = 1
" let g:NERDTreeWinSize = 30
"
" " auto open nerdtree at startup
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
"
" " NERDTress File highlighting
" function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
" exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
" exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
" endfunction
"
" call NERDTreeHighlightFile('jade', 'green', 'none', 'green', 'NONE')
" call NERDTreeHighlightFile('vim', '147', 'none', '#afafff', 'NONE')
" call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', 'NONE')
" call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', 'NONE')
" call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', 'NONE')
" call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', 'NONE')
" call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', 'NONE')
" call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', 'NONE')
" call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', 'NONE')
" call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', 'NONE')
" call NERDTreeHighlightFile('sql', 'cyan', 'none', 'cyan', 'NONE')
" call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', 'NONE')
" call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', 'NONE')
" call NERDTreeHighlightFile('js', '189', 'none', '#dfdfff', 'NONE')
" call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', 'NONE')
" call NERDTreeHighlightFile('ds_store', 'Gray', 'none', '#686868', 'NONE')
" call NERDTreeHighlightFile('gitconfig', 'Gray', 'none', '#686868', 'NONE')
" call NERDTreeHighlightFile('log', 'Gray', 'none', '#686868', 'NONE')
" call NERDTreeHighlightFile('gitignore', 'Gray', 'none', '#686868', 'NONE')
" call NERDTreeHighlightFile('bashrc', 'Gray', 'none', '#686868', 'NONE')
" call NERDTreeHighlightFile('bashprofile', 'Gray', 'none', '#686868', 'NONE')
" " source files
" call NERDTreeHighlightFile('.c', '11', 'NONE', 'NONE', 'NONE')
" call NERDTreeHighlightFile('h', '3', 'NONE', 'NONE', 'NONE')
" call NERDTreeHighlightFile('cc', '5', 'NONE', 'NONE', 'NONE')
" call NERDTreeHighlightFile('mm', '4', 'NONE', 'NONE', 'NONE')
" " shell scripts
" call NERDTreeHighlightFile('sh', '2', 'NONE', '#008000', 'NONE')
" call NERDTreeHighlightFile('bash', '2', 'NONE', 'NONE', 'NONE')
" call NERDTreeHighlightFile('zsh', '2', 'NONE', 'NONE', 'NONE')
" " makefiles
" call NERDTreeHighlightFile('mk', '13', 'NONE', 'NONE', 'NONE')
" call NERDTreeHighlightFile('makefile', '13', 'NONE', 'NONE', 'NONE')
" call NERDTreeHighlightFile('Makefile', '13', 'NONE', 'NONE', 'NONE')
