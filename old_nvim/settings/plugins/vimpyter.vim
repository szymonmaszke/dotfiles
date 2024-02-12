scriptencoding utf-8

autocmd Filetype ipynb nnoremap <silent><tab>b :VimpyterInsertPythonBlock<CR>
autocmd Filetype ipynb nnoremap <silent><tab>j :VimpyterStartJupyter<CR>

let g:vimpyter_color = 1
