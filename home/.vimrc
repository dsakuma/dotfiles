" Enable plugins
call plug#begin()
Plug 'dense-analysis/ale'
Plug 'editorconfig/editorconfig-vim'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'preservim/nerdcommenter'
Plug 'preservim/NERDTree'
" Plug 'sheerun/vim-polyglot'
Plug 'tomasiser/vim-code-dark'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
call plug#end()

" Leader
let mapleader = ","

" General shortcuts
nmap <leader>l :set list!<CR>

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

" Spell checking
nmap <silent> <leader>s :set spell!<CR>
set spelllang=en_us

" Set color theme
silent! colorscheme codedark

" Lightline
" Fix color for lightline.vim
if !has('gui_running')
  set t_Co=256
endif
" Always display the status line
set laststatus=2

"Coc
nmap <silent> gd <Plug>(coc-definition)
nmap <leader> rn <Plug>(coc-rename)
" Disable coc warning for vim < 8.1.1719 or node < 10.12.0
let g:coc_disable_startup_warning = 1

" Ale
" Define linters
let g:ale_linters = {
      \   'python': ['flake8']
      \}

" NERDTree
nnoremap <silent> <C-n> :NERDTreeToggle<CR>
" Show hidden files
let NERDTreeShowHidden=1
" Ignore files
set wildignore+=*.swp,*.DS_Store,__pycache__
let NERDTreeRespectWildIgnore=1

" Fzf
nnoremap <silent> <C-p> :Files<CR>
