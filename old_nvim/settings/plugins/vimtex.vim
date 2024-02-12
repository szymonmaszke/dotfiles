scriptencoding utf-8

let g:vimtex_mappings_enabled = 0
let g:vimtex_enabled = 1
let g:vimtex_view_general_viewer = 'zathura'

" Documentation local using texdoc
let g:vimtex_doc_handlers = ['Documentation']

function! Documentation(context)
  call vimtex#doc#make_selection(a:context)
  if !empty(a:context.selected)
    execute '!texdoc' a:context.selected '&'
  endif
  return 1
endfunction

let g:vimtex_fold_enabled = 1

autocmd Filetype tex nnoremap <Leader>v <plug>(vimtex-view)
