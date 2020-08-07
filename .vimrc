" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
set nocompatible

""$XDG_CONFIG_HOME"/vim/vimrc
"
"set undodir=$XDG_DATA_HOME/vim/undo
"set directory=$XDG_DATA_HOME/vim/swap
"set backupdir=$XDG_DATA_HOME/vim/backup
"set viminfo+='1000,n$XDG_DATA_HOME/vim/viminfo
"set runtimepath=$XDG_CONFIG_HOME/vim,$VIMRUNTIME,$XDG_CONFIG_HOME/vim/after


call plug#begin('$HOME/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug '/usr/bin/fzf'
Plug 'junegunn/fzf'
"Plug 'dracula/vim'
"Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'tibabit/vim-templates'


"Plug 'python-rope/ropevim'
"Plug 'davidhalter/jedi-vim'
"Plug 'SirVer/ultisnips', { 'commit': 'a909dee82b6eaaa3ae001e27c3e95c58d487d242'}
"Plug 'honza/vim-snippets'
"Plug 'tpope/vim-fugitive'
"Plug 'w0rp/ale'
"Plug 'sheerun/vim-polyglot'
"Plug 'ludovicchabant/vim-gutentags'
"Plug 'airblade/vim-gitgutter'
"Plug 'majutsushi/tagbar'


" Python
"Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
" Python




"Plug 'tmhedberg/SimpylFold'

"markdown
"Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
"
Plug 'airblade/vim-gitgutter' "show git difference
Plug 'jiangmiao/auto-pairs'   "add close brackets
Plug 'tpope/vim-surround'   "surround word/lines with simbols
"shourtcats:
"* ySS" - surround with "" and newline"
"* yss" - surround with ""
"* cs'" - change surround from ' to "


Plug 'vim-scripts/indentpython.vim'
Plug 'Valloric/YouCompleteMe'

Plug 'morhetz/gruvbox'

call plug#end()

set encoding=utf-8
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
"au BufNewFile,BufRead *.py
"    \ set tabstop=4
"    \ set softtabstop=4
"    \ set shiftwidth=4
"    \ set textwidth=79
"    \ set expandtab
"    \ set autoindent
"    \ set fileformat=unix

"color dracula
"colorscheme dracula

set background=dark
let g:gruvbox_contrast_dark = "hard"
"let g:gruvbox_improved_strings = "1"
"let g:gruvbox_invert_tabline = "1"
"colorscheme gruvbox
"set list
"let g:pymode = 1

let g:airline_powerline_fonts = 1 "fonts for powerline

"How can I open a NERDTree automatically when vim starts up if no files were specified?
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"How can I map a specific key or shortcut to open NERDTree?
map <C-n> :NERDTreeToggle<CR>

let NERDTreeShowHidden=1  "  Always show dot files
let NERDTreeQuitOnOpen=1
map  <Leader>n  :NERDTreeFind<CR>


"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding with the spacebar
"nnoremap <space> za
" Enable folding

"disable arrow keys:
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

filetype plugin indent on
filetype indent on      " load file type-specific indent files
set guitablabel=%N\ %f
set swapfile
set dir=~/.vim/tmp

"set colorcolumn=80

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
set autoindent
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
