scriptencoding utf-8

let g:Powerline_symbols = 'fancy'

let g:lightline = {
      \ 'colorscheme': 'mine',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'filename' ] ],
      \   'right': [ [ 'percent' ], ['linter_errors', 'linter_warnings', 'linter_ok']]
      \ },
      \ 'component_expand': {
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ },
      \ 'component_type': {
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \ },
      \ 'component_function': {
      \   'fugitive': 'LightlineFugitive',
      \   'readonly': 'LightlineReadonly',
      \   'modified': 'LightlineModified',
      \   'filename': 'LightlineFilename',
      \   'filetype': 'MyFiletype',
      \   'fileformat': 'MyFileformat',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

let g:webdevicons_enable = 1

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : '?') : ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

function! LightlineModified()
  if &filetype ==# 'help'
    return ''
  elseif &modified
    return ''
  elseif &modifiable
    return ''
  else
    return ''
  endif
endfunction

function! LightlineReadonly()
  if &filetype ==# 'help'
    return ''
  elseif &readonly
    return ''
  else

    return ''
  endif
endfunction

function! LightlineFugitive()
  if exists('*fugitive#head')
    let l:branch = fugitive#head()
    return l:branch !=# '' ? ' '. l:branch : ''
  endif
  return ''
endfunction
function! LightlineFilename()
  return ('' !=# LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
        \ ('' !=# expand('%:t') ? expand('%:t') : '[No Name]') .
        \ ('' !=# LightlineModified() ? ' ' . LightlineModified() : '')
endfunction

let g:lightline.mode_map = {
      \ 'n' : '',
      \ 'i' : '',
      \ 'R' : '',
      \ 'v' : '',
      \ 'V' : ' ',
      \ "\<C-v>": ' ',
      \ 'c' : ' command',
      \ 's' : ' select',
      \ 'S' : ' S-LINE',
      \ 't': '',
      \}
let g:lightline#ale#indicator_warnings = ''
let g:lightline#ale#indicator_errors = ''
let g:lightline#ale#indicator_ok = ''
