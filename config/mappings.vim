" ==========================
" ======= Mappings =========
" ==========================
" Map the leader
let mapleader="@"

" reload vimrc by issueing a command
nmap <silent> <leader>rl :so $MYVIMRC

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
nnoremap <silent><leader>php :Php<CR>
nnoremap <silent><leader>phpcs :Phpcs<CR>

" Run The Nearest Test
nmap <silent><leader>tm yiw:!clear && phpunit --filter  --process-isolation <C-R>"<CR>
" Run All The tests in the current file
nmap <silent> <leader>tf :!clear && phpunit %  --process-isolation<CR>
" Run All The Tests
nmap <silent> <leader>ta :!clear && phpunit  --process-isolation<CR>

