set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'


Plugin 'javacomplete'
Plugin 'JuliaLang/julia-vim'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'AutoComplPop'
Plugin 'ervandew/supertab'
Plugin 'Rip-Rip/clang_complete'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'Raimondi/delimitMate'
Plugin 'pangloss/vim-javascript'
Plugin 'JavaScript-syntax'
Plugin 'oblitum/rainbow'

set exrc
set secure

let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']
let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_active = 1


set background=dark


autocmd BufEnter *.py colorscheme Tomorrow-Night

set history=700
" Enable filetype plugins
filetype plugin on
filetype indent on
" Set line number
set nu
" Set to auto read when a file is changed from the outside
set autoread
" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let maplocalleader = ","
let g:mapleader = ","


syntax enable
filetype plugin indent on
set foldenable
set foldmethod=indent
set foldenable
set foldmethod=syntax

filetype plugin on
filetype indent on
set wildmenu
set hlsearch
set incsearch


set cursorline
syntax enable
set nocompatible
"autocmd FileType python setlocal completeopt-=preview

if &term =~ '^xterm'
let &t_SI .= "\<Esc>[5 q"
let &t_EI .= "\<Esc>[2 q"
endif

"Gvim stuff
if has('gui_running')
	  set guioptions-=T  " no toolbar
	    colorscheme badwolf
	  endif

"C++ stuff

let s:clang_library_path='/Library/Developer/CommandLineTools/usr/lib'
if isdirectory(s:clang_library_path)
    let g:clang_library_path=s:clang_library_path
endif

autocmd BufEnter *.cpp colorscheme distinguished
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

let &path.="src/include,/usr/include/AL,"
set makeprg=make\ -C\ ../build\ -j9

augroup project
    autocmd!
    autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END

"Latex stuff

autocmd BufEnter *.tex colorscheme badwolf

let g:tex_flavor='latex'
set grepprg=grep\ -nH\ $*

let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats = 'pdf'
let g:Tex_ViewRule_pdf = 'open -a /Applications/Preview.app'

"R stuff
autocmd BufEnter *.r colorscheme badwolf
"Python stuff
autocmd BufEnter *.py colorscheme Tomorrow-Night

"Java stuff

let g:SuperTabDefaultCompletionType = 'context'
autocmd BufEnter *.java colorscheme baycomb


inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf
