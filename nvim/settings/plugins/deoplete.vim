scriptencoding utf-8

let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_delay = 0
let g:deoplete#sources#jedi#server_timeout = 50000

call deoplete#custom#source('omni',          'mark', '⚡')
call deoplete#custom#source('jedi',          'mark', '')
call deoplete#custom#source('vim',           'mark', '')
call deoplete#custom#source('neosnippet',    'mark', '')
call deoplete#custom#source('tag',           'mark', '')
call deoplete#custom#source('around',        'mark', '↻')
call deoplete#custom#source('buffer',        'mark', '')
call deoplete#custom#source('tmux-complete', 'mark', '')
call deoplete#custom#source('syntax',        'mark', '')
call deoplete#custom#source('member',        'mark', '.')
call deoplete#custom#source('tabnine',       'mark', '')

call deoplete#custom#source('jedi', 'matchers', ['matcher_full_fuzzy'])

" Use auto delimiter feature
call deoplete#custom#source('_', 'converters',
  \ ['converter_auto_delimiter', 'remove_overlap'])

let g:deoplete#sources#jedi#short_types = 1
" use tab to forward cycle
inoremap <silent><expr><M-j> pumvisible() ? "\<c-n>" : "\<tab>"
" use tab to backward cycle
inoremap <silent><expr><M-k> pumvisible() ? "\<c-p>" : "\<s-tab>"
