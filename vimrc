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
set hls
set noswapfile
set ignorecase
set smartcase
" backspace through anything
set backspace=indent,eol,start
" Prevent cursor from moving to beginning of line when switching buffers
set nostartofline
" Highlights the current line background
set cursorline
" share VIM clipboard with macos
set clipboard=unnamed
" display options when autocompleting a command with tab
set wildmenu
" force javascript syntax highlighting on .vue files
autocmd BufNewFile,BufRead *.vue set syntax=javascript
" persist undo tree for each file
set undofile
set undodir^=~/.vim/undo//

" --- Mappings ---
let mapleader=" "
" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! %!sudo tee > /dev/null %
map U <c-r>
nmap <leader>b :b#<CR>
nmap <leader>bb :b#<CR>
nmap <leader>bn :bnext<CR>
nmap <leader>bp :bprevious<CR>

" start from current file directory
let g:netrw_keepdir=0
let g:netrw_liststyle=3
let g:netrw_banner=1
" Allow netrw to remove non-empty local directories
let g:netrw_localrmdir='rm -r'
" Per default, netrw leaves unmodified buffers open. This autocommand
" deletes netrw's buffer once it's hidden (using ':q', for example)
autocmd FileType netrw setl bufhidden=delete

" --- Helper commands ---
" Delete all Trailing space in file
:command NoTrails %s/\s\+$//<CR>
" Current file path
:command Path echo expand('%:p')
" open terminal on the right
:command T vertical rightbelow terminal

" --- Misc ---
" deal with crontab issue - crontab: temp file must be edited in place
set backupskip=/tmp/*,/private/tmp/*"

" --- CtrlP ---
set runtimepath^=~/.vim/ctrlp.vim
nmap <leader>p :CtrlPMixed<CR>
let g:ctrlp_custom_ignore='node_modules\|DS_Store\|git'
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

