syntax on
set hlsearch
set number
set nowrap
set hidden
"set wildmenu
"colorscheme codedark

"Fix color for lightline.vim
if !has('gui_running')
  set t_Co=256
endif

call plug#begin()
Plug 'kien/ctrlp.vim'
Plug 'Lokaltog/powerline'
Plug 'preservim/NERDTree'
Plug 'tomasiser/vim-code-dark'
Plug 'itchyny/lightline.vim'
call plug#end()
