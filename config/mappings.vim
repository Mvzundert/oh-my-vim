" ==========================
" ======= Mappings =========
" ==========================
" Map the leader
let mapleader="@"

" Mapping ctrl+n to open nerdtree
map <C-n> :NERDTreeToggle<CR>

" Quickly find stuff in nerdTree
nnoremap <silent> <Leader>v :NERDTreeFind<CR>

" Mapping ctrl+j/k/h/l to enable
" to switch splits easier.
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"Tagbar toggle option
map <C-b> :TagbarToggle<CR>
