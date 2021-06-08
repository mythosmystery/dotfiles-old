call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'tiagofumo/vim-nerdtree-syntax-highlighting'
Plug 'ryanoasis/vim-devicons'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'itchyny/lightline.vim'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()

set nocompatible
set mouse=a
set nowrap

syntax on

set number
set background=dark
colorscheme palenight
set termguicolors
let g:lightline = {'colorscheme': 'palenight'}

map <C-o> :NERDTreeToggle<CR>
map <C-n> :NERDTreeFocus<CR>
let NERDTreeShowHidden=1
let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeIgnore = ['^node_modules$', '^.git$']


