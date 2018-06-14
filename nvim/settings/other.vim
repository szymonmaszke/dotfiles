scriptencoding utf-8

" DIM SCREEN {{{
hi HighlightedyankRegion ctermbg=161 guibg=#fc00a8
hi Normal guibg=NONE ctermbg=NONE
" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
let g:limelight_default_coefficient = 0.7

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 1

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
let g:limelight_bop = '^\s'
let g:limelight_eop = '\ze\n^\s'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = 10

augroup StatusLine
  au! FocusLost * set laststatus=0
  au! FocusGained * set laststatus=2
augroup END

augroup ToggleTabLine
  au! FocusLost * set showtabline=0
  au! FocusGained * set showtabline=2
augroup END

augroup ColorColumn
  au! FocusLost * set colorcolumn=0
  au! FocusGained * set colorcolumn=80
  au! WinLeave * set colorcolumn=0
  au! WinEnter * set colorcolumn=80
augroup END

augroup CursorColumn
  au! FocusLost * set cursorcolumn!
  au! FocusGained * set cursorcolumn
  au! WinLeave * set cursorcolumn!
  au! WinEnter * set cursorcolumn
augroup END

augroup FadeWindows
    au! FocusGained * LimelightW!
    au! FocusLost * LimelightW
    au! WinEnter * LimelightW!
    au! WinLeave * LimelightW
augroup END
"}}}
