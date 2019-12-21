" 2018-09-17 Mon 10:21 PM
" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

"disable arrow keys:
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
" 
"
"set runtimepath+=$HOME/.vim/plugin/ "/home/alex/.vim/plugin/tabular
"call plug#begin('~/.vim/plugged')
"Plug 'lervag/vimtex'
"Plug 'w0rp/ale'
"let g:tex_flavor = 'latex'
""Plug 'ron89/md_insert_equation.vim'
""Plug 'LaTeX-Box-Team/LaTeX-Box'
"call plug#end()
filetype plugin indent on
filetype indent on      " load file type-specific indent files



set guitablabel=%N\ %f

set swapfile
set dir=~/.vim/tmp
set viminfo+=n~/.vim/viminfo

set colorcolumn=80

syntax on
"set spelllang=en,it
"set spell
set mouse=a

set shiftwidth=4
set tabstop=4
"set expandtab           " tabs are spaces
"set smarttab

set scrolloff=999

set encoding=utf-8

set relativenumber              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set ruler               " show the cursor position all the time
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set ignorecase           " search ignore the case
set hlsearch            " highlight matches
"set autoindent
set smartindent
filetype plugin on
"set background=dark

set statusline="%f%m%r%h%w [%Y] [0x%02.2B]%< %F%=%4l,%4v %3p%% of %L"
set laststatus=2

" To insert timestamp, press F3.
nmap <F3> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>

"set foldmethod=indent 

set showmode
set visualbell


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'dracula/vim', { 'name': 'dracula' }

call vundle#end()            " required

color dracula

"if (exists('+colorcolumn'))
"    set colorcolumn=80
"    highlight ColorColumn ctermbg=4
"endif











