" Enable plugins
call plug#begin()
Plug 'preservim/NERDTree'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tomasiser/vim-code-dark'
call plug#end()

" Highlight syntax
syntax on

" Highlight matching in search
set hlsearch

" Show line numbers
set number

" Do not wrap lines
set nowrap

" Permit to change buffer without saving
set hidden

" Enable wildmenu for completion
set wildmenu

" Set encoding
set encoding=utf-8
set fileencodings=utf-8

" Tabs and spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" To display the status line always
set laststatus=2

" Set color theme
colorscheme codedark

"Fix color for lightline.vim
if !has('gui_running')
  set t_Co=256
endif
