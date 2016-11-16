set nocompatible              " be iMproved, required
set encoding=utf-8
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

"---------=== Themes ===-------------
Plugin 'blerins/flattown'
Plugin 'vim-airline/vim-airline-themes'

"------------------=== Other ===----------------------
Plugin 'bling/vim-airline'              " Lean & mean status/tabline for vim
Plugin 'bling/vim-bufferline'           " This for airline to show buffers
Plugin 'tpope/vim-fugitive'             " Implementing git
Plugin 'Shougo/unite.vim'               " Navigation between files and buffers
Plugin 'tpope/vim-surround'             " Parentheses, brackets, quotes, XML tags, and more
Plugin 'terryma/vim-multiple-cursors'   " Parentheses, brackets, quotes, XML tags, and more
Plugin 'vim-scripts/tComment'           " For comments
Plugin 'vim-scripts/L9'                 " For finder 
Plugin 'vim-scripts/FuzzyFinder'        " Finder 

"--------------=== Snippets and autocomplete support ===---------------
" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

Plugin 'Valloric/YouCompleteMe'         " VIM code autocompletion

"---------------=== Languages support ===-------------
" --- Python ---
Plugin 'klen/python-mode'               " Python mode (docs, refactor, lints, highlighting, run and ipdb and more)
Plugin 'davidhalter/jedi-vim'           " Jedi-vim autocomplete plugin
Plugin 'mitsuhiko/vim-jinja'            " Jinja support for vim
Plugin 'mitsuhiko/vim-python-combined'  " Combined Python 2/3 for Vim
Plugin 'jmcantrell/vim-virtualenv'      " VirtualEnv

" --- GO ---
Plugin 'fatih/vim-go'
Plugin 'nsf/gocode', {'rtp': 'vim/'}

call vundle#end()                       " required

" NerdTree settings
map <F3> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', '\.o$']  
let NERDTreeShowHidden=1

" use system's clipboard, using this you can, but for this you must have gVim
" to get access X11 clipboard
set clipboard=unnamed

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
colorscheme flattown

" More useful command-line completion
set wildmenu
" Command Auto-completion menu
set wildmode=list:longest

" SnipMate
let g:snippets_dir = "~/.vim/vim-snippets/snippets"

autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Vim-Airline settings
let g:airline_enable_fugitive=1
let g:airline_enable_bufferline=1
let g:airline_theme='understated'
let g:airline_enable_syntastic  = 1
let g:airline#extensions#tabline#enabled = 1 
let g:airline_powerline_fonts = 1

let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_linecolumn_prefix = '¶ '
let g:airline_branch_prefix = '⎇ '
let g:airline_paste_symbol = 'ρ'


" PyMode
let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_completion_on_dot = 0

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" GoImports
map <F4> :GoImports<CR>
imap <C-l> <ESC>:bn<CR>
imap <C-k> <ESC>:bp<CR>
map <C-l> :bn<CR>
map <C-k> :bp<CR>
map <F2> :Unite buffer<CR>
