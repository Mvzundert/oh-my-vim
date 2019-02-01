" ==========================
" ======= Mappings =========
" ==========================
" Map the leader
let mapleader="@"

" reload vimrc by issueing a command
nmap <silent> <leader>rl :so $MYVIMRC

" Mapping ctrl+n to open nerdtree
map <C-n> :NERDTreeToggle<CR>
"map <C-n> :call ToggleNerdTree() <CR>

" Toggle the tagbar
nmap <C-m> :TagbarToggle<CR>

" Mapping ctrl+j/k/h/l to enable
" to switch splits easier.
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Run The Nearest Test
nmap <silent><leader>tm yiw:!clear && phpunit --filter <C-R>"<CR>
" Run All The tests in the current file
nmap <silent> <leader>tf :!clear && phpunit % <CR>
" Run All The Tests
nmap <silent> <leader>ta :!clear && phpunit<CR>

" Disable the arrow keys...
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

