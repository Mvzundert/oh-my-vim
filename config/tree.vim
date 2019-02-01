" ==========================
" ======Nerd Tree ==========
" ==========================
" Start nerdTree on startup
autocmd vimenter * NERDTree 

" Go to previous (last accessed) window.
autocmd VimEnter * wincmd p
autocmd StdinReadPre * let s:std_in=1 "  
" Always open nerdTree
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Close vim if nerdtree is the only thing open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Open files in new tabs by default
let NERDTreeMapOpenInTab='<ENTER>'
" show git ignored files.
let g:NERDTreeShowIgnoredStatus = 1
" set the tree size
let g:NERDTreeWinSize = 30
" remove ? help from showing up
let NERDTreeMinimalUI = 1
" arrows!
let NERDTreeDirArrows = 0 

let g:WebDevIconsOS = 'Darwin'
let g:WebDevIconsUnicodeDecorateFolderNodes = 0
let g:DevIconsEnableFoldersOpenClose = 1
let g:DevIconsEnableFolderExtensionPatternMatching = 1
" make arrows invisible
let NERDTreeDirArrowExpandable = "\u00a0" 
let NERDTreeDirArrowCollapsible = "\u00a0" 
" smiley face
let NERDTreeNodeDelimiter = "-" 

let NERDTreeShowHidden=1
let NERDTreeDirArrowExpandable = '▷'

let NERDTreeDirArrowCollapsible = '▼'
let g:NERDTreeIndicatorMapCustom = {
            \"Modified"  : "✹",
            \"Staged"    : "✚",
            \"Untracked" : "✭",
            \"Renamed": "➜",
            \"Unmerged":"═",
            \"Deleted":"✖",
            \"Dirty":"✗",
            \"Clean":"✔︎",
            \'Ignored':'☒',
            \"Unknown":"?"
            \
}
