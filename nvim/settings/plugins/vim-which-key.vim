scriptencoding utf-8

nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

let g:which_key_map = {',': 'Turn off linter'}

" Configure readable output

augroup WhichKey
  autocmd VimEnter * call which_key#register('<Space>', 'g:which_key_map')
augroup END
