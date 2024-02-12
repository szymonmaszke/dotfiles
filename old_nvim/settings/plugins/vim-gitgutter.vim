scriptencoding utf-8

let g:gitgutter_sign_added = ''
let g:gitgutter_sign_removed = ''
let g:gitgutter_sign_removed_first_line = ''
let g:gitgutter_sign_modified = ' '
let g:gitgutter_sign_modified_removed = ' '
let g:gitgutter_map_keys = 0
let g:gitgutter_override_sign_column_highlight = 0

let g:gitgutter_diff_args = '-w'

let g:gitgutter_grep = 'rg'

highlight GitGutterAdd gui=bold guifg=#388E3C
highlight GitGutterChange gui=bold guifg=#fabd2f
highlight GitGutterDelete gui=bold guifg=#f44336
highlight GitGutterChangeDelete gui=bold guifg=#f44336
