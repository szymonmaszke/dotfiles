scriptencoding utf-8

" function! DocumentSourceCode()
"   function! s:InsertPythonData()
"     let l:filename = expand('%:r')
"     let l:shebang = '#!/usr/bin/env python'
"     let l:encoding = '# -*- coding: utf-8 -*-'
"     let l:module_doc = '""" Module documentation for: ' . l:filename . '."""'

"     if (getline('1') !~ l:shebang)
"       exec 'normal!ggO' . l:shebang
"       exec 'normal!o' . l:encoding
"       exec 'normal!o' . l:module_doc
"     endif
"   endfunction

"   function! s:DocumentFunctionsClasses()
"     let l:current_line = line('.')

"     for l:line in range(1, line('$'))
"       let l:is_class_or_function = matchstr(getline(l:line), '^\s*\(def\|class\)')
"       if(!empty(l:is_class_or_function))
"         let l:inserted_docstring = matchstr(getline(l:line+1), '"""')
"         if(empty(l:inserted_docstring))
"           execute l:line
"           execute ':Pydocstring'
"         endif
"     endif
"     endfor

"     execute l:current_line
"   endfunction

"   call s:InsertPythonData()
"   call s:DocumentFunctionsClasses()
" endfunction


" autocmd Filetype python nnoremap <silent><Leader>d :Pydocstring<CR>
" autocmd Filetype python nnoremap <silent><Leader>D :call DocumentSourceCode()<CR>
