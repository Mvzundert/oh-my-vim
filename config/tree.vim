" ==========================
" ======Nerd Tree ==========
" ==========================
" Start nerdTree on startup
autocmd vimenter * NERDTree 

" Go to previous (last accessed) window.
autocmd VimEnter * wincmd p
autocmd StdinReadPre * let s:std_in=1 "  
" Show hidden files by default
let NERDTreeShowHidden=1
" Always open nerdTree
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Close vim if nerdtree is the only thing open
 autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" show git ignored files.
let g:NERDTreeShowIgnoredStatus = 1
" set the tree size
let g:NERDTreeWinSize = 30
" remove ? help from showing up
let NERDTreeMinimalUI = 1
" arrows!
let NERDTreeDirArrows = 1


