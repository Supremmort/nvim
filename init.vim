syntax on
set number
set relativenumber

set ignorecase
set smartcase

noremap J 5j
noremap K 5k
noremap H 5h
noremap L 5l
noremap n nzz
noremap N Nzz
noremap Q :q<CR>
noremap W :w<CR>
map ; :


let mapleader=" "

map <C-l> :set splitright<CR>:vsplit<CR>
map <C-h> :set nosplitright<CR>:vsplit<CR>
map <C-k> :set nosplitbelow<CR>:split<CR>
map <C-j> :set splitbelow<CR>:split<CR>

map <leader>l <C-w>l
map <leader>h <C-w>h
map <leader>k <C-w>k
map <leader>j <C-w>j

map t<up>	:res -5<CR>
map t<down>	:res +5<CR>
map t<left>	:vertical resize+5<CR>
map t<right>	:vertical resize-5<CR>

map tu :tabe<CR>
map tn :-tabnext<CR>
map tm :+tabnext<CR>

map tv <C-w>t<C-w>H
map th <C-w>t<C-w>K


" 显示中文帮助
if version >= 603
set helplang=cn
set encoding=utf-8
endif

set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set encoding=utf-8
let &t_ut=''
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set list
set listchars=tab:▸\ ,trail:▫
set scrolloff=5
set nocompatible  "去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限  
set tw=0
set indentexpr=
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set laststatus=2
set autochdir
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif



" vim plug begin
call plug#begin('~/.vim/plugged')

" vim-airline
Plug 'vim-airline/vim-airline'

" vim color theme 'vim-snazzy'
Plug 'connorholyday/vim-snazzy'

" Initialize plugin system, vim plug end
call plug#end()

colorscheme snazzy
let g:SnazzyTransparent = 1
