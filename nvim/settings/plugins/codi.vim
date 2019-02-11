scriptencoding utf-8

let g:codi#width=120

augroup Scratchpad
  au! BufRead,BufNewFile $HOME/.scratchpad/* call SetupScratchpad()
augroup END

function SetupScratchpad()
  " No split indication between buffers
  hi VertSplit guibg=bg
  set listchars&
  let g:indentLine_enabled = 0

  " Make it harder to leave scratchpad unintentionally
  nnoremap Q <nop>
  nnoremap <Leader>q <nop>
  nnoremap ZZ <nop>
  nnoremap ZQ <nop>

  " Use cabbrev for other quitting commands

  " Disable conflicting plugins
  let g:eighties_enabled = 0
  VimadeDisable

  " And enable Codi
  Codi
endfunction
