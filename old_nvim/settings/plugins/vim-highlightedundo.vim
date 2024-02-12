scriptencoding utf-8

let g:highlightedundo#highlight_mode=2

let g:highlightedundo#highlight_duration_delete=500
let g:highlightedundo#highlight_duration_add=500

highlight HighlightedundoDelete guifg=#373737 guibg=#D32F2F gui=bold
highlight HighlightedundoAdd guifg=#373737 guibg=#43A047 gui=bold

nmap u     <Plug>(highlightedundo-undo)
nmap <C-r> <Plug>(highlightedundo-redo)
nmap U     <Plug>(highlightedundo-Undo)
nmap g-    <Plug>(highlightedundo-gminus)
nmap g+    <Plug>(highlightedundo-gplus)
