
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
"Plugin 'git://git.wincent.com/command-t.git'
"Plugin 'file://home/gmarik/path/to/plugin'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'python-mode/python-mode'

call vundle#end()

filetype plugin indent on

set history=1000
set ruler
set number
set showcmd
set showmode
set laststatus=2
set cmdheight=2
set scrolloff=3

set fillchars=stl:\ ,stlnc:\ ,vert:\

set noerrorbells
set novisualbell
set t_vb=

set shortmess=atI

syntax on
colorscheme desert
set background=dark
set cursorline
set cursorcolumn

set backspace=2
set whichwrap+=<,>,h,l

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4
"set textwidth=80
set autoindent
set cindent

set nobackup
set noswapfile
set autoread
set autowrite
set autochdir
set fileencodings=utf-8
set termencoding=utf-8
set encoding=utf-8
set fileformats=unix,dos,mac
"filetype plugin on
"filetype indent on

set showmatch
set matchtime=2
set hlsearch
set incsearch
set ignorecase
set smartcase
set magic
set lazyredraw
set nowrapscan
set iskeyword+=_,$,@,%,#,-,.

let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap < <><ESC>i

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_checkers=['pylint']
let g:syntastic_python_pylint_args='--disable=C0111,R0903,C0301'
let g:pymode_python = 'python3'

