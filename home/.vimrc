" Enable plugins
call plug#begin()
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'editorconfig/editorconfig-vim'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/NERDTree'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
call plug#end()

" General shortcuts
nnoremap <silent> <C-n> :NERDTreeToggle<CR>
nnoremap <silent> <C-p> :GFiles --cached --exclude-standard --others<CR>

" Set color theme
silent! colorscheme dracula

" Highlight syntax
syntax on

" Allow backspace over indent, eol and start
:set backspace=2

" Highlight matching in search
set hlsearch

" Disable swapfiles
set noswapfile

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

" Open new split panes to right and bottom
set splitbelow
set splitright

" Enable folding
set foldmethod=indent
set foldlevel=99

" Tabs and spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Make it obvious where 120 characters is
set textwidth=120
set colorcolumn=+1

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" Lightline
" Fix color for lightline.vim
if !has('gui_running')
  set t_Co=256
endif
" Always display the status line
set laststatus=2

" NERDTree
" Show hidden files
let NERDTreeShowHidden=1
" Ignore files
set wildignore+=*.swp,*.DS_Store,__pycache__
let NERDTreeRespectWildIgnore=1
