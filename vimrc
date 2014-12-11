filetype plugin indent on
syntax on

" automatically CD into directory that the file is in
autocmd BufEnter * execute "chdir ".escape(expand("%:p:h"), ' ')

" Remove any trailing whitespace that is in the file
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

" Restore cursor position to where it was before
"}}}
"
""{{{Misc Settings

" Necesary  for lots of cool vim things
set nocompatible

" This shows what you are typing as a command. I love this!
set showcmd

set ignorecase
set smartcase

" needed for syntax highlighting and stuff
filetype on
filetype plugin on
syntax enable
set grepprg=grep\ -nH\ $*

" autoindent
set autoindent

" spaces rather than tab character
set expandtab
set smarttab

set shiftwidth=4
set softtabstop=4

"
" tab completion
set wildmenu
set wildmode=list:longest,full

"Enable mouse support in console
set mouse=a
set ttymouse=xterm2

" Highlight things that we find with the search
set hlsearch

" line numbers
set number

" status line gnarliness
set laststatus=2
set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]

set backspace=2 " make backspace work like most other apps
