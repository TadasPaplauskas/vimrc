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
set shiftwidth=4

" spaces instead of tabs
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" smartindent should work better for C-like files. autoindent just copies indentation from previous line.
set smartindent
" enable indentation based on file extension
filetype plugin indent on
autocmd FileType html setlocal shiftwidth=2 tabstop = 2
autocmd FileType tpl setlocal shiftwidth=2 tabstop = 2
" Prevent cursor from moving to beginning of line when switching buffers
set nostartofline
" Highlights the current line background
set cursorline
" blue.vim  darkblue.vim  default.vim  delek.vim  desert.vim  elflord.vim 
" evening.vim  koehler.vim  morning.vim  murphy.vim  pablo.vim  peachpuff.vim
" ron.vim  shine.vim  slate.vim  torte.vim  zellner.vim
colorscheme desert
" display column at 100 symbols
set colorcolumn=100
" auto-read changed file (works only when changing, or something...)
set autoread
" shift + arrows select text and more windows goodies
behave mswin
set mouse=a
set clipboard=unnamed
" backspace through anything
set backspace=indent,eol,start
set wildmenu
set wildmode=full

" --- Search ---
" start searching while typing
set incsearch
" highlight search results
set hlsearch
" clear highlight
nnoremap <leader><space> :nohls <CR>
" ignore case when searching
set ignorecase
" don't ignore capitals in searches
set smartcase

" --- Browsing ---
set path=$PWD/**,/Users/tadas/Sites/**,/Users/tadas/Dropbox/Projects/**
set wildignore+=*/vendor/*,*.so,*.swp,*.zip

" start from current file directory
let g:netrw_keepdir=0
let g:netrw_liststyle=3
let g:netrw_banner=0
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

" Allow netrw to remove non-empty local directories
let g:netrw_localrmdir='rm -r'

" Per default, netrw leaves unmodified buffers open. This autocommand
" deletes netrw's buffer once it's hidden (using ':q', for example)
autocmd FileType netrw setl bufhidden=delete

let g:ctrlp_custom_ignore='node_modules\|DS_Store\|git'

" --- Mappings ---
" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! %!sudo tee > /dev/null %
nmap <leader>l :ls<CR>:b<Space>
nmap <leader>t :tabp<CR>
nmap <leader>b :b#<CR>
nmap <Leader>w :w <CR>
nmap <Leader>q :bd <CR>
nmap <leader>p :CtrlP<CR>i
nmap <leader>o :VEx<CR>

nnoremap <C-H> :bp <CR>
nnoremap <C-L> :bn <CR>

" --- Plugins ---
set runtimepath^=~/.vim/bundle/ctrlp.vim

" start in mixed mode
let g:ctrlp_cmd='CtrlPMixed'

" --- Helper commands ---
" Delete all Trailing space in file
:command NoTrails %s/\s\+$//<CR>
" Current file path
:command Path echo expand('%:p')

