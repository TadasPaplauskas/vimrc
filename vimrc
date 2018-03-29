" --- Configs ---
set guifont=Menlo\ Regular:h12
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
" set mouse=a enable mouse support
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
nnoremap <space><space> :nohls <CR>
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
let g:netrw_banner=1
" Hide swp and dot files
let g:netrw_list_hide='\(^\|\s\s\)\zs\.\S\+,*\.swp$' 
" Allow netrw to remove non-empty local directories
let g:netrw_localrmdir='rm -r'
" Per default, netrw leaves unmodified buffers open. This autocommand
" deletes netrw's buffer once it's hidden (using ':q', for example)
autocmd FileType netrw setl bufhidden=delete

let g:ctrlp_custom_ignore='node_modules\|DS_Store\|git'

" --- Mappings ---
let mapleader=" "
" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! %!sudo tee > /dev/null %
nmap <leader>l :ls<CR>:b<Space>
nmap <leader>t :tabp<CR>
nmap <leader>b :b#<CR>
nmap <Leader>w :w<CR>
nmap <Leader>d :bd<CR>
nmap <leader>p :CtrlP<CR>
nmap <leader>o :Ex<CR>

nnoremap <C-H> :bp<CR>
nnoremap <C-L> :bn<CR>

" Avoid shift to get to cmdline mode, but keep old ; behaviour on double click
map ; :
noremap ;; ;

" Map U to redo (more useful)
map U <c-r>

" --- Plugins ---
set runtimepath^=~/.vim/ctrlp.vim
set runtimepath^=~/.vim/syntastic
set runtimepath^=~/.vim/ctrlp-funky

" start in mixed mode
let g:ctrlp_cmd='CtrlPMixed'
" ignore spaces
let g:ctrlp_abbrev = {
  \ 'gmode': 'i',
  \ 'abbrevs': [
    \ {
      \ 'pattern': ' ',
      \ 'expanded': '',
      \ 'mode': 'pfrz',
    \ },
    \ ]
  \ }

" beginner settings for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_auto_jump = 1
let g:syntastic_loc_list_height = 5

" ctrlp-funky config
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

" --- Helper commands ---
" Delete all Trailing space in file
:command NoTrails %s/\s\+$//<CR>
" Current file path
:command Path echo expand('%:p')

" crontab fix. Seems to be causing problems on other platforms
" autocmd filetype crontab setlocal nobackup nowritebackup

