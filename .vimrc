" ==========================
" ======= Vundle = =========
" ==========================
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" If there are any machine-specific tweaks for Vim, load them from the
" following files. Also the location of our plugins goes here.
try
    source ~/.vim/config/plugins.vim
    source ~/.vim/config/mappings.vim
    source ~/.vim/config/functions.vim
    source ~/.vim/config/tree.vim
catch
    " No such file? No problem; just ignore it.
    " Let Vundle manage Vundle, still required
    " if we don't stuff breaks.
    Plugin 'VundleVim/Vundle.vim'
endtry

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" ==========================
" ======= Config ===========
" ==========================
" Necessary for lots of cool vim things, makes it not live in the past.
set nocompatible

" Macvim wants it's own colors which I disprove off.
if has("gui_macvim")
    " set macvim specific stuff
    let macvim_skip_colorscheme=1
    set background=dark
    set guifont=Menlo\ Regular:h14
endif

" Enable Syntax processing
syntax enable

" Source the vimrc file after saving it
if has("autocmd")
    augroup VimrcSource
        autocmd! 
        autocmd BufWritePost .vimrc source $MYVIMRC
    augroup END

    augroup Vue
        " fix vue highlighting
        autocmd FileType vue syntax sync fromstart
        au BufRead,BufNewFile *.vue set ft=html
        autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css
    augroup END

    augroup PHP
        " Autocomplete
        autocmd FileType php set omnifunc=phpcomplete#CompletePHP
    augroup END
endif

" Set using the system clipboard by default
set clipboard=unnamed

" Always change to the current file dir
" set autochdir
" Detect when a file is changed
set autoread
" Experimenting with mouse focus
set mouse=a
" Encoding seems to be a thing...
scriptencoding utf-8
set encoding=utf-8

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
" tabs ftw
set noexpandtab
" tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set smarttab
" Number of visual spaces per TAB
set tabstop=4
" Number of spaces in TAB when editing
set softtabstop=4
" Tabs are spaces
set expandtab
" number of spaces to use for indent and unindent
set shiftwidth=4
" round indent to a multiple of 'shiftwidth'
set shiftround 

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
" Always use vertical diffs
set diffopt+=vertical

" we handle longer lines.
" set wrap
" set textwidth=100
" set formatoptions=qrn1
set colorcolumn=180
highligh ColorColumn ctermbg=0 guibg=lightgrey

" We display tabs and line endings.
set list
set listchars=tab:▸\ ,eol:¬
"set listchars=eol:~,tab:▸\ ,eol:¬,extends:>,precedes:<,space:_

" ==========================
" ===== Highlight magic =====
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
set foldlevelstart=11
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
" but I prefer to have it set by default.
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
" Make vim match the terminal theme.
hi Normal ctermbg=none
colorscheme molokai_dark

" ==========================
" ======= Splits ===========
" ==========================
" Make splitting always start right
set splitright
