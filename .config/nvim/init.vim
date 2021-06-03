call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'itchyny/lightline.vim'
call plug#end()

set nocompatible
set mouse=a
set nowrap

syntax on

colorscheme palenight
set termguicolors
let g:lightline = {'colorscheme': 'palenight'}

map <C-o> :NERDTreeToggle<CR>
map <C-n> :NERDTreeFocus<CR>
let NERDTreeShowHidden=1
