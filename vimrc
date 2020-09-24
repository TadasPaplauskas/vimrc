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
set hls
set noswapfile
set ignorecase
set smartcase
filetype indent plugin on
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
map U <CR>
" map ; to : to avoid shift keystroke
map ; :
" leader + b lists buffers
nmap <leader>b :ls<CR>
nmap <leader>p :CtrlPMixed<CR>
" allows to jump to method definition
nmap <leader>d :CtrlPTag<CR>
" open file exporer
nmap <leader>o :Ex<CR>

" start from current file directory
let g:netrw_keepdir=0
let g:netrw_liststyle=3
let g:netrw_banner=1
" Allow netrw to remove non-empty local directories
let g:netrw_localrmdir='rm -r'
" Per default, netrw leaves unmodified buffers open. This autocommand
" deletes netrw's buffer once it's hidden (using ':q', for example)
autocmd FileType netrw setl bufhidden=delete

" --- Helper scripts ---
" delete trailing spaces before saving
autocmd BufWritePre * %s/\s\+$//e

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

" --- Gutentags ---
set runtimepath^=~/.vim/vim-gutentags
" Where to store tag files
let g:gutentags_cache_dir = '~/.vim/tags'
let g:gutentags_ctags_exclude = ['*.css', '*.html', '*.js', '*.json', '*.xml',
                            \ '*.phar', '*.ini', '*.rst', '*.md',
                            \ '*vendor/*/test*', '*vendor/*/Test*',
                            \ '*vendor/*/fixture*', '*vendor/*/Fixture*',
                            \ '*var/cache*', '*var/log*']
