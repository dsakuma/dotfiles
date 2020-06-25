syntax on
set hlsearch
set number
set nowrap
set hidden
set encoding=utf-8
set wildmenu
"set fileencoding=utf-8

"Fix color for lightline.vim
if !has('gui_running')
  set t_Co=256
endif

call plug#begin()
Plug 'preservim/NERDTree'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tomasiser/vim-code-dark'
call plug#end()

colorscheme codedark
