" ==========================
" ======= Pathogen =========
" ==========================
" Pathogen needs to be at the top of your .vimrc file
" if you want it to actually work don't move it anywere else.

" Pathogen makes plugins easy https://github.com/tpope/vim-pathogen
call pathogen#infect()

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

let g:NERDTreeShowIgnoredStatus = 1

" ==========================
" ======= Config ===========
" ==========================
" Necessary for lots of cool vim things, makes it no live in the past.
set nocompatible

" Enable Syntax processing
syntax enable

" Enable indenting based on filetype
filetype plugin indent on

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

" ==========================
" ====== Menu  =============
" ==========================
" Show command in the bottom bar
set showcmd
" Visual Autocomplete for the command menu
set wildmenu

" ==========================
"======== Tabs =============
" ==========================
" Number of visual spaces per TAB
set tabstop=4
" Number of spaces in TAB when editing
set softtabstop=4
" Tabs are spaces
set expandtab

" ==========================
" ======= Lines/Cursor =====
" ==========================
" Hyrid line numbers are awesome, we show the line
" number and the relative number @ the same time.
" Make sure you have vim 7.4 or higher to support this,
" else turn one of these off
set relativenumber 
set number
" Highlight the line on which the cursor lives.
set cursorline
" Enable git information in the gutter.
" Currently only supporting git.
let g:gitgutter_enabled = 1

" ==========================
" ===== highligh magic =====
" ==========================
" Highlight matching [{()}] 
set showmatch
" Magic for doing regex stuff.
set magic
" Backspace over everything in insert mode... might not be the best idea.
set backspace=2

" ==========================
" ====== Folding ===========
" ==========================
" Enable folding
set foldenable
" Open most folds by default
set foldlevelstart=10
" 10 nested fold max
set foldnestmax=10
" Fold based on indent level.
set foldmethod=indent

" ==========================
" ====== Improve search ====
" ==========================
" Search as characters are entered
set incsearch
" Highlight matches
set hlsearch
" Ignore case when searching, this can be set or unset in command mode
" but I prefer to have it set by defaut.
set ignorecase

" ==========================
" ======= No Backup ========
" ==========================
" I don't think VIM should be storing any backups when
" we have buffers we can use, feel free to disable this
" if you prefer to have swap files etc.
set nobackup
set nowb
set noswapfile

" ==========================
" ======= Theming ==========
" ==========================
" I like the darker themes as it's easier on the eyes in the long
" run. For more themese check bundle/colorscheme
set background=dark
colorscheme railscasts 
" ==========================
" ======= Functions ========
" ==========================



" ==========================
" ======= Mappings =========
" ==========================
" Mapping ctrl+n to open nerdtree
map <C-n> :NERDTreeToggle<CR>

