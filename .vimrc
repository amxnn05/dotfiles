set autoindent
"set statusline=0
"set number
filetype plugin indent on
" Select all
nnoremap <C-a> ggVG
" Use win32yank for WSL clipboard integration
" Use win32yank for WSL clipboard integration

" Use system clipboard
 set clipboard=unnamedplus
"
" " --- Copy/Paste ---
 " Visual mode: Ctrl+C copies selection to system clipboard
 vnoremap <C-c> "+y

" " Normal mode: Ctrl+V pastes clipboard after cursor
nnoremap <C-v> "+p
" " Insert mode: Ctrl+V pastes clipboard at cursor
 inoremap <C-v> <C-r>+
 " Command mode: Ctrl+V pastes clipboard in command line
cnoremap <C-v> <C-r>+
" " --- Undo/Delete ---
" " Normal mode: Ctrl+Z = Undo
nnoremap <C-z> u
" " Insert mode: Ctrl+Z = Undo last change and return to insert
 inoremap <C-z> <C-o>u
" " Normal mode: Ctrl+X = Delete current line
 nnoremap <C-x> dd
"S
set t_Co=16

" Normal mode: Move current line down
nnoremap <A-j> :<C-u>execute 'move .+' . v:count1<CR>==
" Normal mode: Move current line up
nnoremap <A-k> :<C-u>execute 'move .-' . (v:count1 + 1)<CR>==

" Insert mode: Move current line down
inoremap <A-j> <Esc>:m .+1<CR>==gi
" Insert mode: Move current line up
inoremap <A-k> <Esc>:m .-2<CR>==gi

" Visual mode: Move selected lines down
vnoremap <A-j> :<C-u>execute "'<,'>move '>+" . v:count1<CR>gv=gv
" Visual mode: Move selected lines up
vnoremap <A-k> :<C-u>execute "'<,'>move '<-" . (v:count1 + 1)<CR>gv=gv
" Competitve Programming Setup
" Compile and run C++ code
nnoremap <F5> :w !g++ -std=c++17 % -o %:r && ./%:r < input.txt > output.txt<CR>
nnoremap <F6> :w !g++ -std=c++17 % -o %:r && ./%:r<CR>

" Debugging with GDB
nnoremap <F8> :!g++ -g % -o %:r && gdb ./%:r<CR>
" add mapping for auto closing
imap "<tab> ""<Left>
imap '<tab> ''<Left>
imap (<tab> ()<Left>
imap [<tab> []<Left>
imap {<tab> {}<Left>
imap {<CR> {<CR>}<ESC>O
imap {;<CR> {<CR>};<ESC>O
" Editor settings
"set number " Show line numbers
"set relativenumber " Show relative line numbers
"set cursorline " Highlight the current line
set showmatch "Show matching brackets
set smartindent " Smart indentation
set tabstop=4 " Set tab width to 4 spaces
set shiftwidth=4 " Set shift width to 4 spaces
set expandtab " Use spaces instead of tabs

" Enable syntax highlighting
syntax on

" Mouse support
set mouse=a
" Insert mode navigation
"inoremap j <Up>
"inoremap k <Down>
"inoremap l <Right>
"inoremap h <Left>
