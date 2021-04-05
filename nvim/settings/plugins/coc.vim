scriptencoding utf-8

au BufReadPost,BufNewFile *.py :CocDisable

" To configure
" https://github.com/yuki-ycino/fzf-preview.vim/
" All extensions necessary
" See other git extensions and disable if unneeded
let g:coc_global_extensions = [
      \'coc-json', 'coc-git', 'coc-python',
      \'coc-snippets', 'coc-syntax',
      \'coc-go', 'coc-word', 'coc-tag',
      \'coc-sh', 'coc-marketplace', 'coc-fzf-preview',
      \'coc-vimlsp', 'coc-yaml',
      \]

" forward completion
inoremap <silent><expr><M-j> pumvisible() ? "\<c-n>" : "\<tab>"
" backward completion
inoremap <silent><expr><M-k> pumvisible() ? "\<c-p>" : "\<s-tab>"

" Open settings of coc.nvim
function! SetupCommandAbbrs(from, to)
  exec 'cnoreabbrev <expr> '.a:from
        \ .' ((getcmdtype() ==# ":" && getcmdline() ==# "'.a:from.'")'
        \ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfunction

" Use C to open coc config
call SetupCommandAbbrs('C', 'CocConfig')
