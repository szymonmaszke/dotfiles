scriptencoding utf-8

let g:rbpt_colorpairs = [
      \ ['red',         'RoyalBlue3'],
      \ ['brown',       'SeaGreen3'],
      \ ['blue',        'DarkOrchid3'],
      \ ['gray',        'firebrick3'],
      \ ['green',       'RoyalBlue3'],
      \ ['magenta',     'SeaGreen3'],
      \ ['cyan',        'DarkOrchid3'],
      \ ['darkred',     'firebrick3'],
      \ ['brown',       'RoyalBlue3'],
      \ ['darkblue',    'DarkOrchid3'],
      \ ['gray',        'firebrick3'],
      \ ['darkgreen',   'RoyalBlue3'],
      \ ['darkmagenta', 'SeaGreen3'],
      \ ['darkcyan',    'DarkOrchid3'],
      \ ['red',         'firebrick3'],
      \ ]
let g:rbpt_max = 15
let g:rbpt_loadcmd_toggle = 0
let g:bold_parentheses = 1
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['<','\>'], ['{', '}']]

augroup AutoStartParentheses
  au VimEnter * RainbowParenthesesToggle
  au Syntax * RainbowParenthesesLoadRound
  au Syntax * RainbowParenthesesLoadSquare
  au Syntax * RainbowParenthesesLoadBraces
augroup END
