let mapleader=" " 

set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set mouse=a
set encoding=utf-8
let &t_ut=''
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
" set list
set scrolloff=5
set tw=0
set indentexpr=
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99
set laststatus=2
set autochdir

syntax on
set number
set relativenumber
set showmatch
set cursorline
set wrap
set showcmd
set wildmenu


set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

noremap j h
noremap k j
noremap i k
noremap h i
noremap H I
noremap I 5k
noremap K 5j
noremap J 5h
noremap L 5l
noremap ; :
noremap <LEADER><CR> :nohlsearch<CR>

map S :w<CR>
map Q :q<CR>

map sl :set splitright<CR>:vsplit<CR>
map sj :set nosplitright<CR>:vsplit<CR>
map si :set nosplitbelow<CR>:split<CR>
map sk :set splitbelow<CR>:split<CR>

map <LEADER>l <C-w>l
map <LEADER>i <C-w>k
map <LEADER>j <C-w>h
map <LEADER>k <C-w>j

map sv <C-w>t<C-w>H
map sh <C-w>t<C-w>K

map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

map tu :tabe<CR>
map tj :-tabnext<CR>
map tl :+tabnext<CR>

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'connorholyday/vim-snazzy'
Plugin 'zxqfl/tabnine-vim'


" File navigation
Plugin 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Taglist
Plugin 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }


" Other visual enhancement
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'itchyny/vim-cursorword'

" Git
Plugin 'rhysd/conflict-marker.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'mhinz/vim-signify'
Plugin 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }

" Python
Plugin 'vim-scripts/indentpython.vim'


" Other useful utilities
Plugin 'terryma/vim-multiple-cursors'
Plugin 'junegunn/goyo.vim' " distraction free writing mode
Plugin 'tpope/vim-surround' " type ysks' to wrap the word with '' or type cs'` to change 'word' to `word`
Plugin 'godlygeek/tabular' " type ;Tabularize /= to align the =
Plugin 'gcmt/wildfire.vim' " in Visual mode, type i' to select all text in '', or type i) i] i} ip
Plugin 'scrooloose/nerdcommenter' " in <space>cc to comment a line

" Dependencies
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'kana/vim-textobj-user'
Plugin 'fadein/vim-FIGlet'


call vundle#end()

colorscheme snazzy
