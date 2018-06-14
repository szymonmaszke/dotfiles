scriptencoding utf-8

function! s:plug_help_sink(line)
  let l:dir = g:plugs[a:line].dir
  for l:pat in ['doc/*.txt', 'README.md']
    let l:match = get(split(globpath(l:dir, l:pat), "\n"), 0, '')
    if len(l:match)
      execute 'tabedit' l:match
      return
    endif
  endfor
  tabnew
  execute 'Explore' l:dir
endfunction

command! PlugHelp call fzf#run(fzf#wrap({
  \ 'source': sort(keys(g:plugs)),
  \ 'sink':   function('s:plug_help_sink')}))

augroup FzfSearchPlugins
  autocmd BufEnter $HOME/.config/nvim/init.vim nnoremap <buffer> <silent> <leader>h :PlugHelp<CR>
augroup END

command! PU PlugClean <bar> PlugUpdate <bar> PlugUpgrade
command! PI PlugInstall
augroup FastUpdate
  autocmd BufEnter $HOME/.config/nvim/init.vim nnoremap <buffer> <silent> <leader>u :PU<CR>
augroup END
