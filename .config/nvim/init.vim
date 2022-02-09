call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug 'ryanoasis/vim-devicons'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'kaicataldo/material.vim', {'branch': 'main'}
" Plug 'nekonako/xresources-nvim'
Plug 'itchyny/lightline.vim'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()

set nocompatible
set mouse=a
set nowrap
syntax on
set number

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

if (has('termguicolors'))
  set termguicolors
endif


set background=dark
set t_Co=256
let g:material_theme_style = 'palenight'
colorscheme material

let g:lightline = {'colorscheme': 'material'}

hi Normal guibg=NONE ctermbg=NONE

map <C-o> :NERDTreeToggle<CR>
map <C-n> :NERDTreeFocus<CR>
let NERDTreeShowHidden=1
let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeIgnore = ['^node_modules$', '^.git$']
