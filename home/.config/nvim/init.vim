" Enable plugins
call plug#begin()
Plug 'preservim/NERDTree'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tomasiser/vim-code-dark'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
"Plug 'ycm-core/YouCompleteMe'
call plug#end()

" Leader
let mapleader = ","

" Highlight syntax
syntax on

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

" To display the status line always
set laststatus=2

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

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

" YouCompleteMe settings
"let g:ycm_python_binary_path = 'python'
"let g:ycm_autoclose_preview_window_after_completion=1
"map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Shortcuts
" nmap <leader>ne :NERDTreeToggle<CR>
nnoremap <silent> <C-n> :NERDTreeToggle<CR>
nnoremap <silent> <C-p> :Files<CR>

" Set color theme
colorscheme codedark

"Fix color for lightline.vim
if !has('gui_running')
  set t_Co=256
endif

" Disable coc warning for vim < 8.1.1719 or node < 10.12.0
let g:coc_disable_startup_warning = 1
