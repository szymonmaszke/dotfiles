scriptencoding utf-8

" Checks for Dockerfile
let g:ale_dockerfile_hadolint_use_docker = 'always'

let g:ale_linters = {
      \   'python': ['flake8', 'pylint',],
      \   'vim': ['vint',],
      \}

let g:ale_fixers = {
      \   'python': ['black', 'isort', 'remove_trailing_lines', 'trim_whitespace'],
      \   'sh': ['shfmt', 'remove_trailing_lines', 'trim_whitespace',],
      \   'vim': ['remove_trailing_lines', 'trim_whitespace',],
      \   'md': ['prettier', 'trim_whitespace',],
      \}

let g:ale_python_black_executable = 'black'

let g:ale_sign_error = '•'
let g:ale_sign_warning = '•'

let g:ale_echo_msg_error_str = 'ERROR '
let g:ale_echo_msg_warning_str = 'WARNING '
let g:ale_echo_msg_format = '[%severity%] [%linter%] %s'

let g:ale_fix_on_save = 1
let g:ale_lint_on_enter = 0

" CPP ALE
let g:ale_cpp_gcc_options = '-std=c++17 -Werror -Wextra -Wall -Weffc++ -Wnarrowing'

nnoremap <M-n> :ALENext<CR>
nnoremap <M-b> :ALEPrevious<CR>
nnoremap <silent><Leader>, :let b:ale_fix_on_save=0<CR>
