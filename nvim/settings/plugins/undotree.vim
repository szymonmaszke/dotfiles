scriptencoding utf-8

let g:undotree_TreeNodeShape = ' '
let g:undotree_SetFocusWhenToggle = 1
let g:golden_ratio_exclude_nonmodifiable = 1
let g:undotree_SplitWidth = 20
let g:undotree_DiffAutoOpen = 0

let g:undotree_HelpLine = 0

let g:undotree_DiffCommand = 'diff -qH'

function g:Undotree_CustomMap()
  nmap <buffer> J <plug>UndotreeGoNextState
  nmap <buffer> K <plug>UndotreeGoPreviousState
endfunc

nnoremap <silent><Leader>u :UndotreeToggle<CR>
