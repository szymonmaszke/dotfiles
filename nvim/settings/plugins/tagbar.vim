scriptencoding utf-8

let g:tagbar_left = 1
"SAME WIDTH WHEN ZOOMED AS ZOOMED OUT
let g:tagbar_zoomwidth = 0
let g:tagbar_compact = 1
"ABSOLUTE LINE NUMBERS
let g:tagbar_show_linenumbers = 1
let g:tagbar_show_visibility = 1
let g:tagbar_autoclose = 1
"AUTOMATICALLY SHOWS CURRENT TAG (EXPANDS BRANCH AS NEEDED)
let g:tagbar_autoshowtag = 1

nnoremap <silent><Leader>t :TagbarToggle<CR>
