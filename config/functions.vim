" ==========================
" ======= Functions ========
" ==========================
" Don't change to directory when selecting a file
let g:startify_files_number = 5
let g:startify_change_to_dir = 0
let g:startify_custom_header = [ ]
let g:startify_relative_path = 1
let g:startify_use_env = 1
"
" Fix how CTRLP travels in folders
let g:ctrlp_show_hidden = 1
let g:ctrlp_working_path_mode = 0
let g:ctrlp_working_path_mode = 'c'
" No max files makes searching way better
let g:ctrlp_max_files=0
" Fix the depth at which CTRLP indexes
let g:ctrlp_max_depth=40
" Ignore searching files that are in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_php_phpcs_args='--tab-width=0'

" Enable completion where available. (hijacks omnicompletion)
let g:ale_completion_enabled = 1

"Add tab to complete without losing it for indents 
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

set completeopt=longest,menuone

" Ale linters and fixers including hover balloons enabled.
let g:ale_linters = {'php': ['phpcs']}
let g:ale_fixers = {'php': ['phpcbf']}
let b:ale_set_balloons = 1

" LaTex stuff
"let g:livepreview_previewer = 'open -a Preview'
" let g:livepreview_cursorhold_recompile = 0
