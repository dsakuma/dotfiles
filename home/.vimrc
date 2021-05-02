" Enable plugins
call plug#begin()
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'editorconfig/editorconfig-vim'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdcommenter'
Plug 'preservim/NERDTree'
Plug 'tpope/vim-surround'
call plug#end()

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

" For Coc, some servers have issues with backup files
set nobackup
set nowritebackup

" For Coc, having longer updatetime (default is 4000 ms = 4 s) leads
" to noticeable delays and poor user experience.
set updatetime=300

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
silent! colorscheme dracula

" Lightline
" Fix color for lightline.vim
if !has('gui_running')
  set t_Co=256
endif
" Always display the status line
set laststatus=2

" NERDTree
nnoremap <silent> <C-n> :NERDTreeToggle<CR>
" Show hidden files
let NERDTreeShowHidden=1
" Ignore files
set wildignore+=*.swp,*.DS_Store,__pycache__
let NERDTreeRespectWildIgnore=1

" Fzf
nnoremap <silent> <C-p> :GFiles --cached --exclude-standard --others<CR>
