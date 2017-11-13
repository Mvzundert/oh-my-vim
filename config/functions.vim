" ==========================
" ======= Functions ========
" ==========================
let g:ctrlp_working_path_mode = 'c'
let g:ctrlp_show_hidden = 1
let g:airline_theme='behelit'

" If you use php-cs-fixer version 2.x
" let g:php_cs_fixer_rules = "@PSR2"          " options: --rules
" (default:@PSR2)
" "let g:php_cs_fixer_cache = ".php_cs.cache" " options: --cache-file
" "let g:php_cs_fixer_config_file = '.php_cs' " options: --config
" " End of php-cs-fixer version 2 config params
"
" let g:php_cs_fixer_php_path = "php"               " Path to PHP
" let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by
" default (<leader>pcd)
" let g:php_cs_fixer_dry_run = 0                    " Call command with
" dry-run option
" let g:php_cs_fixer_verbose = 0                    " Return the output of
" command if 1, else an inline information.

"" Fix how CTRLP travels in folders
let g:ctrlp_working_path_mode = 0
" No max files makes searching way better
let g:ctrlp_max_files=0
" Fix the depth at which CTRLP indexes
let g:ctrlp_max_depth=40
" Ignore searching files that are in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
