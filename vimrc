" --- Configs ---
set history=1000
scriptencoding utf-8
set encoding=utf-8
syntax on
set number
set nowrap
set vb
set ruler
set hidden
set tabstop=4
set shiftwidth=4
" smartindent should work better for C-like files. autoindent just copies indentation from previous line.
set autoindent
" enable indentation based on file extension
filetype plugin indent on
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType tpl setlocal shiftwidth=2 tabstop=2
" Prevent cursor from moving to beginning of line when switching buffers
set nostartofline
" Highlights the current line background
set cursorline
" blue.vim  darkblue.vim  default.vim  delek.vim  desert.vim  elflord.vim 
" evening.vim  koehler.vim  morning.vim  murphy.vim  pablo.vim  peachpuff.vim
" ron.vim  shine.vim  slate.vim  torte.vim  zellner.vim
colorscheme slate 
set autoread
" shift + arrows select text and more windows goodies
behave mswin
set mouse=a
set clipboard=unnamed
" start searching while typing
set incsearch
" backspace through anything
set backspace=indent,eol,start
set path=.,**
set wildmenu
set wildmode=full
let g:netrw_keepdir=0
" ignore case when searching
set ignorecase
" ignore case when looking for all-lower case strings
" set smartcase

" --- Commands ---
" Delete all Trailing space in file
:command NoTrails %s/\s\+$//<CR>
:command Path echo expand('%:p')

"--- Maps ---
" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! %!sudo tee > /dev/null %
nmap <leader>l :ls<CR>:b<Space>
nmap <leader>t :tabp<CR>
nmap <leader>b :b#<CR>
nmap <leader>cp :CtrlP<CR>
cmap cp :CtrlP
nmap <leader>o :NERDTreeToggle<CR>

" --- Plugins ---
set runtimepath^=~/.vim/bundle/ctrlp.vim
set runtimepath^=~/.vim/bundle/nerdtree
set wildignore+=*/vendor/*,*.so,*.swp,*.zip
