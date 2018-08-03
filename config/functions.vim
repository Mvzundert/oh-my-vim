" ==========================
" ======= Functions ========
" ==========================
let g:ctrlp_working_path_mode = 'c'
let g:ctrlp_show_hidden = 1
let g:airline_theme='behelit'

" Fix how CTRLP travels in folders
let g:ctrlp_working_path_mode = 0
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

" Fix files with prettier, and then ESLint.
let g:ale_fixers = {'php': ['phpcbf']}
let b:ale_set_balloons = 1

