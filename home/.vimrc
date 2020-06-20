syntax on
set hlsearch
set number
set nowrap
set hidden
"set wildmenu

"Fix color for lightline.vim
if !has('gui_running')
  set t_Co=256
endif

call plug#begin()
Plug 'preservim/NERDTree'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()
