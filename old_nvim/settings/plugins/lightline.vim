scriptencoding utf-8

let g:Powerline_symbols = 'fancy'

let g:lightline = {
      \ 'colorscheme': 'mine',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'filetype', 'readonly', 'fugitive', 'filename', 'modified' ] ],
      \   'right': [ [ 'directory', 'column', 'is_recording' ], ['linter_errors', 'linter_warnings', 'linter_ok']]
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
      \   'fugitive': 'Fugitive',
      \   'readonly': 'ReadOnly',
      \   'filename': 'Filename',
      \   'filetype': 'Filetype',
      \   'directory': 'Directory',
      \   'column': 'Column',
      \   'is_recording': 'IsRecording',
      \ },
      \ 'subseparator': { 'left': '│', 'right': '│' }
      \ }

let g:webdevicons_enable = 1

let g:_is_recording = get(g:, '_is_recording', 0)
function! IsRecording()
  if get(g:, '_is_recording', 0) == 0
    return ''
  endif
  return ''
endfunction

function! Column()
  return ' ' . col('.')
endfunction

function! Directory()
  let l:current_directory = getcwd()
  return l:current_directory
endfunction

function! Filetype()
  return strlen(&filetype) ? ' ' . WebDevIconsGetFileTypeSymbol() : '?'
endfunction

function! Modified()
  if &modified
    return ''
  endif
  return ''
endfunction

function! ReadOnly()
  if &readonly
    return ''
  endif
  return ''
endfunction

function! Fugitive()
  if exists('*fugitive#head')
    let l:branch = fugitive#head()
    return l:branch !=# '' ? l:branch . ' ' : ''
  endif
  return ''
endfunction

function! Filename()
  return expand('%:t')
endfunction

let g:lightline.mode_map = {
      \ 'n' : '',
      \ 'i' : '',
      \ 'R' : '',
      \ 'v' : '',
      \ 'V' : '',
      \ "\<C-v>": '',
      \ 'c' : '',
      \ 's' : 's',
      \ 'S' : 'S',
      \ 't': '',
      \}

let g:lightline#ale#indicator_warnings = ''
let g:lightline#ale#indicator_errors = ''
let g:lightline#ale#indicator_ok = ''
