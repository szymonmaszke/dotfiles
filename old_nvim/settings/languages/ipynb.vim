scriptencoding utf-8

function! DocumentSourceCode()
  function! s:DocumentFunctionsClasses()
    let l:current_line = line('.')

    for l:line in range(1, line('$'))
      let l:is_class_or_function = matchstr(getline(l:line), '^\s*\(def\|class\)')
      if(!empty(l:is_class_or_function))
        let l:inserted_docstring = matchstr(getline(l:line+1), '"""')
        if(empty(l:inserted_docstring))
          execute l:line
          execute ':Pydocstring'
        endif
    endif
    endfor

    execute l:current_line
  endfunction

  call s:DocumentFunctionsClasses()
endfunction

autocmd Filetype ipynb nnoremap <silent><Leader>d :Pydocstring<CR>
autocmd Filetype ipynb nnoremap <Leader>D :call DocumentSourceCode()<CR>

autocmd FileType ipynb setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
autocmd FileType ipynb setlocal commentstring=#\ %s
