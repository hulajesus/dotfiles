call plug#begin('~/.vim/bundle')

" appearance
Plug 'itchyny/lightline.vim'
Plug 'kshenoy/vim-signature'
Plug 'w0ng/vim-hybrid'

" git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'

" language
" Plug 'sheerun/vim-polyglot'
Plug 'honza/vim-snippets'
Plug 'w0rp/ale'
Plug 'mattn/emmet-vim', { 'for': ['html', 'css', 'erb', 'haml'] }

Plug 'SirVer/ultisnips', { 'on': [] }
Plug 'Valloric/YouCompleteMe', { 'on': [] }
augroup load_us_ycm
  autocmd!
  autocmd InsertEnter * call plug#load('ultisnips', 'YouCompleteMe')
                     \| call youcompleteme#Enable()
                     \| autocmd! load_us_ycm
augroup END

Plug 'isRuslan/vim-es6'
Plug 'JulesWang/css.vim'
Plug 'fatih/vim-go'
Plug 'keith/tmux.vim'
Plug 'othree/html5.vim'
Plug 'ethereum/vim-solidity'
Plug 'othree/nginx-contrib-vim'
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'

" project
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'
" Plug 'xolox/vim-misc'
Plug 'ludovicchabant/vim-gutentags'
Plug 'janko-m/vim-test'
Plug 'ton/vim-bufsurf'
" Plug 'majutsushi/tagbar'

" ruby
Plug 'ecomba/vim-ruby-refactoring', { 'for': 'ruby' }
Plug 'tpope/vim-rails', { 'for': 'ruby' }
" Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
" Plug 'ck3g/vim-change-hash-syntax', { 'for': 'ruby' }
Plug 'tpope/vim-bundler', { 'for': 'ruby' }

" search
" Plug 'haya14busa/incsearch.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'vim-scripts/IndexedSearch'
Plug 'skwp/greplace.vim'
Plug 'Lokaltog/vim-easymotion'

" textobjects
Plug 'kana/vim-textobj-user'
Plug 'austintaylor/vim-indentobject'
Plug 'coderifous/textobj-word-column.vim'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-line'
Plug 'christoomey/vim-sort-motion'
Plug 'lucapette/vim-textobj-underscore', { 'for': 'ruby' }
Plug 'wellle/targets.vim'

" improvement
Plug 'AndrewRadev/splitjoin.vim' " Plug 'Raimondi/delimitMate'
Plug 'briandoll/change-inside-surroundings.vim'
Plug 'junegunn/vim-easy-align'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-abolish'
Plug 'bkad/CamelCaseMotion'
Plug 'tmhedberg/matchit'
Plug 'terryma/vim-multiple-cursors'
Plug 'christoomey/vim-tmux-navigator'
Plug 'sjl/gundo.vim'
Plug 'skwp/YankRing.vim'
Plug 'tpope/vim-endwise', { 'for': ['lua', 'elixir', 'ruby', 'sh', 'zsh', 'vim', 'c', 'cpp' ] }
Plug 'tpope/vim-ragtag'
Plug 'luochen1990/rainbow'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tommcdo/vim-exchange'
" Plug 'powerman/vim-plugin-AnsiEsc'
" Plug 'vim-scripts/lastpos.vim'
" Plug 'vim-scripts/sudo.vim'
Plug 'goldfeld/ctrlr.vim'
" Plug 'tpope/vim-dispatch'
Plug 'skywind3000/asyncrun.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'drn/zoomwin-vim', { 'on': 'ZoomWin' }
Plug 'Yggdroot/indentLine'
Plug 'ianva/vim-youdao-translater', { 'on': ['Ydv', 'Ydc', 'Yde'] }
" Plug 'jszakmeister/vim-togglecursor'

call plug#end()
