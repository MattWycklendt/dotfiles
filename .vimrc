execute pathogen#infect()
syntax on
"filetype plugin indent on
set background=dark
colorscheme solarized
let g:airline_theme='solarized'

set mouse=a

set autochdir

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
" disable vi compatibility (emulation of old bugs)
set nocompatible
" use indentation of previous line
set autoindent
" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces
" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=120
" turn syntax highlighting on
set t_Co=256
syntax on
" colorscheme wombat256
" turn line numbers on
set number
" highlight matching braces
set showmatch
" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */
" use paste mode
set paste

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab
" Be smart when using tabs ;)
" set smarttab
" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

"set ai "Auto indent
"set si "Smart indent
set nowrap "Wrap lines

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

augroup BgHighlight
    autocmd!
    autocmd WinEnter * set cul
    autocmd WinLeave * set nocul
    autocmd WinEnter * set colorcolumn=80
    autocmd WinLeave * set colorcolumn=0
augroup END

" NERDTree
map <silent> <C-n> :NERDTreeToggle<CR>

" Setup on enter
autocmd VimEnter * wincmd p
autocmd VimEnter * set cul
autocmd VimEnter * set colorcolumn=80

" python stuff
nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>

" Ignore case when searching
set ignorecase
"
" When searching try to be smart about cases
set smartcase
"
" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" vnoremap <C-c> "*y

" remove trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" ignore c++ include files
let g:syntastic_cpp_include_dirs = [ '../include/veriflow', '/home/mattwycklendt/veriflow/external/gtest-1.7.0/include' ]

" javascript linting
let g:syntastic_javascript_checkers = ['eslint']

" python pep8
let g:syntastic_python_checkers=['flake8']

au BufRead,BufNewFile *.json set filetype=json
syntax on

" javascript folding
"function! JavaScriptFold()
"    setl foldmethod=syntax
"    setl foldlevelstart=1
"    syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend
"
"    function! FoldText()
"        return substitute(getline(v:foldstart), '{.*', '{...}', '')
"    endfunction
"    setl foldtext=FoldText()
"endfunction
"au FileType javascript call JavaScriptFold()
"au FileType javascript setl fen
"
hi Normal ctermbg=none

" CtrlP commands
set runtimepath^=~/.vim/bundle/ctrlp.vim
