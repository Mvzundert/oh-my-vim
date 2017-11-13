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

" Call PHP CS fixer
nnoremap <silent><leader>pcf :call PhpCsFixerFixFile()<CR>

" run PHP unit tests
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

