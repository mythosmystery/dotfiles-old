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

" For Neovim 0.1.3 and 0.1.4 - https://github.com/neovim/neovim/pull/2198
if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

" For Neovim > 0.1.5 and Vim > patch 7.4.1799 - https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162
" Based on Vim patch 7.4.1770 (`guicolors` option) - https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd
" https://github.com/neovim/neovim/wiki/Following-HEAD#20160511
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
