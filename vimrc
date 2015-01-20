set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'JuliaLang/julia-vim'
Plugin 'bling/vim-airline'
Plugin 'bling/vim-bufferline'
Plugin 'tpope/vim-fugitive'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()            " required
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
set encoding=utf-8 "Default encoding

"Indent guide settings
let g:indent_guides_guide_size = 1 "Skinny guides
let g:indent_guides_start_level = 2 "Indent from second level onwards
let g:indent_guides_enable_on_vim_startup = 1 "Start with Vim
let g:indent_guides_default_mapping = 0 "Dont use the default shortcut key

"colorscheme
if !has("gui_running")
    set background=dark
    colorscheme solarized
else
    let g:molokai_original = 1
    colorscheme molokai
endif
