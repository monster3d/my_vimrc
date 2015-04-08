## This is my .vimrc configuration file

There are a lot of things, so remove unused plugins :D

```
set nocompatible              " be iMproved, required
filetype off                  " required

"=====================================================
" Vundle settings
"=====================================================
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'              " let Vundle manage Vundle, required

"---------=== Code/project navigation ===-------------
Plugin 'scrooloose/nerdtree'            " Project and file navigation
Plugin 'Xuyuanp/nerdtree-git-plugin'    " Git for nerdtree
" Plugin 'majutsushi/tagbar'            " Class/module browser


"---------=== Themes ===-------------
Plugin 'altercation/vim-colors-solarized'

"------------------=== Other ===----------------------
Plugin 'bling/vim-airline'              " Lean & mean status/tabline for vim
Plugin 'bling/vim-bufferline'           " This for airline to show buffers
Plugin 'tpope/vim-fugitive'             " Implementing git
Plugin 'Shougo/unite.vim'               " ?
Plugin 'fisadev/FixedTaskList.vim'      " Pending tasks list
Plugin 'rosenfeld/conque-term'          " Consoles as buffers
Plugin 'tpope/vim-surround'             " Parentheses, brackets, quotes, XML tags, and more
Plugin 'terryma/vim-multiple-cursors'   " Parentheses, brackets, quotes, XML tags, and more
Plugin 'vim-scripts/tComment'           " For comments
Plugin 'vim-scripts/L9'                 " For finder 
Plugin 'vim-scripts/FuzzyFinder'        " Finder 
"--------------=== Snippets support ===---------------
Plugin 'garbas/vim-snipmate'            " Snippets manager
Plugin 'MarcWeber/vim-addon-mw-utils'   " dependencies #1
Plugin 'tomtom/tlib_vim'                " dependencies #2
Plugin 'honza/vim-snippets'             " snippets repo
Plugin 'mattn/emmet-vim'

"---------------=== Languages support ===-------------
" --- Python ---
Plugin 'klen/python-mode'               " Python mode (docs, refactor, lints, highlighting, run and ipdb and more)
Plugin 'davidhalter/jedi-vim'           " Jedi-vim autocomplete plugin
Plugin 'mitsuhiko/vim-jinja'            " Jinja support for vim
Plugin 'mitsuhiko/vim-python-combined'  " Combined Python 2/3 for Vim

" --- GO ---
Plugin 'fatih/vim-go'
Plugin 'nsf/gocode', {'rtp': 'vim/'}

" --- JS ---
Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'

call vundle#end()                       " required
" TagBar settings (for now I'm not using it, that's why it's commented)
" map <F4> :TagbarToggle<CR>
" let g:tagbar_autofocus = 0 " 

" NerdTree settings
map <F3> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', 'pip-log\.txt$', '\.o$', '\.swn$', '\.swo$', '\.swm$', '\.swp$']  
let NERDTreeShowHidden=1

" TaskList settings
map <F2> :TaskList<CR>
call togglebg#map("<F5>")

" use system's clipboard, using this you can, but for this you must have gVim
" to get access X11 clipboard
if has('unnamedplus')
      set clipboard=unnamed,unnamedplus
endif

set shell=bash\ --login
filetype on
syntax on
filetype plugin on
filetype plugin indent on
set number
set expandtab
set shiftwidth=4
set softtabstop=4
set ls=2
set ai
set showmatch 
set hlsearch
set incsearch
"syntax enable
"set background=dark
"colorscheme solarized
colorscheme flattown

" More useful command-line completion
set wildmenu
"Auto-completion menu
set wildmode=list:longest

" SnipMate
let g:snippets_dir = "~/.vim/vim-snippets/snippets"

" JSBeauty
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

" Vim-Airline settings
let g:airline_enable_fugitive=1
let g:airline_enable_syntastic=1
let g:airline_enable_bufferline=1
let g:airline_theme='understated'
let g:airline_enable_syntastic  = 1
let g:airline#extensions#tabline#enabled = 1 
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_linecolumn_prefix = '¶ '
let g:airline_branch_prefix = '⎇ '
let g:airline_paste_symbol = 'ρ'


" Pymod
let g:pymode_options_max_line_length = 119
let g:pymode_folding = 0
let g:pymode_lint_on_fly = 1 
let g:pymode_lint_unmodified = 1 
```
