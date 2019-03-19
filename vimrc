" --- Config ---
set history=1000
syntax on
set number
set vb " no bell
set ruler
set autoread " read file changes
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set backspace=indent,eol,start " backspace through anything
set hls
set noswapfile
set ignorecase
set smartcase
" enable indentation based on file extension
filetype plugin indent on
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType tpl setlocal shiftwidth=2 tabstop=2
" Prevent cursor from moving to beginning of line when switching buffers
set nostartofline
" Highlights the current line background
set cursorline
" share VIM clipboard with macos
set clipboard=unnamed
" display options when autocompleting a command with tab
set wildmenu

" --- Mappings ---
let mapleader=" "
" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! %!sudo tee > /dev/null %
map U <c-r>
nmap <leader>l :ls<CR>:b<Space>
nmap <leader>b :b#<CR>
nmap <Leader>w :w<CR>
nmap <Leader>d :bd<CR>
nmap <leader>p :CtrlP<CR>
nmap <leader>o :Ex<CR>
nnoremap <C-H> :bp<CR>
nnoremap <C-L> :bn<CR>
noremap <space><space> :nohls <CR>
" disable arrow keys. use hjkl instead
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" start from current file directory
let g:netrw_keepdir=0
let g:netrw_liststyle=3
let g:netrw_banner=1
" Allow netrw to remove non-empty local directories
let g:netrw_localrmdir='rm -r'
" Per default, netrw leaves unmodified buffers open. This autocommand
" deletes netrw's buffer once it's hidden (using ':q', for example)
autocmd FileType netrw setl bufhidden=delete

let g:ctrlp_custom_ignore='node_modules\|DS_Store\|git'

" --- Helper commands ---
" Delete all Trailing space in file
:command NoTrails %s/\s\+$//<CR>
" Current file path
:command Path echo expand('%:p')

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
nmap <Leader>f :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nmap <Leader>tf :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

" --- Misc ---
" deal with crontab issue - crontab: temp file must be edited in place
set backupskip=/tmp/*,/private/tmp/*"

