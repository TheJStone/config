set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'tomasiser/vim-code-dark'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdcommenter'
Plugin 'nanotech/jellybeans.vim' 
Plugin 'ConradIrwin/vim-bracketed-paste'
Plugin 'fatih/vim-go'
Plugin 'tpope/vim-abolish'
call vundle#end()


""spacing/indenting
set backspace=2  "This makes the backspace key function like it does in other programs.
set tabstop=2  "How much space Vim gives to a tab
set shiftwidth=2
set softtabstop=2
set expandtab
set smartindent
set autoindent
set backspace=indent,eol,start
filetype indent on
filetype plugin indent on


"" visuals
set number
set showmatch
set background=dark
colorscheme jellybeans
syntax on
set mouse=a
set clipboard=unnamed
set ruler
set cursorline
set scrolloff=25

filetype on
set encoding=utf-8
set ttyfast

"" Disable the blinking cursor.
set gcr=a:blinkon0
set scrolloff=3

"" Status bar
set laststatus=2

"" Use modeline overrides
set modeline
set modelines=10

set title
set titleold="Terminal"
set titlestring=%F

set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\

"" Directories for swp files
set nobackup
set noswapfile

"" enable hidden buffers
set hidden

"" search
set incsearch
set hlsearch
set ignorecase
set smartcase

" Use Unix as the standard file type
set ffs=unix,dos,mac

"" plugin settings
set splitright

"" custom mappings
let mapleader = '\'
inoremap jj <ESC>
nnoremap , i_<ESC>r
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
map <S-Right> :tabn<CR>
map <S-Left>  :tabp<CR>
"" open NERDTree when no value specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
"au BufNewFile,BufRead *.cpp set syntax=cpp11
"au BufNewFile,BufRead *.cc set syntax=cpp11
"au BufNewFile,BufRead *.h set syntax=cpp11
" Copy whole file
noremap <C-y> myggvG$"*y`y
inoremap <C-y> <Esc>myggvG$"*y`ya
" Copy paste from clipboard
" set clipboard=unnamed
vnoremap <C-c> "*y
map <C-q> <Leader>crt
