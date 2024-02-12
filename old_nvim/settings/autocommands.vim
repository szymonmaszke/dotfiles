scriptencoding utf-8

autocmd BufNewFile,BufRead $HOME/.config/polybar/config set filetype=dosini
autocmd FileType ipynb setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab

augroup SmallerSyntax
  autocmd BufEnter * :syntax sync maxlines=300
augroup END
"DISABLE AUTOCOMMENTING NEWLINES
augroup DisableAutoCommenting
  autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
augroup END
"git commit messages wrapping and spell checking
augroup VimFolding
  autocmd BufEnter $HOME/.config/nvim/init.vim setlocal foldmethod=marker
augroup END

augroup Git
  autocmd Filetype gitcommit setlocal spell textwidth=72
augroup END
