" PLUGINS LISTING {{{
function! DoRemote(arg)
  UpdateRemotePlugins endfunction
endfunction

call plug#begin()
Plug 'lervag/vimtex'
" PLUGIN FOR QUICK LATEX WRITING
Plug 'brennier/quicktex'
" PLUGIN FOR LIVE ASYNCHRONOUS PREVIEW OF LATEX FILES
Plug 'donRaphaco/neotex', { 'for': 'tex' }
" GITHUB FLAVORED MARKDOWN HIGHLIGHT
Plug 'rhysd/vim-gfm-syntax'
Plug 'tell-k/vim-autoflake'
Plug 'sbdchd/neoformat'
" USE * TO SEARCH HIGHLIGHTED TEXT IN VISUAL MODE
Plug 'bronson/vim-visual-star-search'
" BETTER EDITING FOR COMMIT MESSAGES
Plug 'rhysd/committia.vim'
" USING DOT WITH PLUGINS
Plug 'tpope/vim-repeat'
"ASYNCHRONOUSLY CONTROL GIT FROM WITHIN VIM
Plug 'lambdalisue/gina.vim'
"SPLITS TOO LONG LINES INTO MULTIPLE LINES gS for split gJ for join
Plug 'AndrewRadev/splitjoin.vim'
"COLOR CODES MAY BE INAPPROPRIATE
"AUTOMATICALLY COLORIZES HTML HEX CODES #34fe34 ETC. rgba(255,255,0, 0.8)
Plug 'lilydjwg/colorizer'
"USE <leader>gh TO OPEN LINE OF GIT CONTROLLED FILE FROM GITHUB REPOSITORY IN FIREFOX IN GITHUB
Plug 'ruanyl/vim-gh-line'
Plug 'maximbaz/lightline-ale'
Plug 't9md/vim-choosewin'
"GENERATE DOCUMENTATION FOR FUNCTIONS CLASSES ETC. AUTOMATICALLY
Plug 'ervandew/supertab'
Plug 'heavenshell/vim-pydocstring'
"DOCUMENTATION FOR PYTHON AND FRAMEWORKS
Plug 'fs111/pydoc.vim'
"BETTER FOLDING FOR PYTHON
Plug 'pseewald/vim-anyfold'
"COMPLETION MENU
Plug 'maralla/completor.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"Fugitive
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
Plug 'eapache/rainbow_parentheses.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'christoomey/vim-tmux-navigator'
"Displays git changes
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'junegunn/vim-easy-align'
"TAGS AND MANAGEMENT
Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
"AUTOMATIC CLOSING OF BRACKETS
Plug 'jiangmiao/auto-pairs'
"UNDOTREE
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
"FZF finder for vim with sane defaults
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"FOCUS MODE
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }
"NERDTREE
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight', {'on': 'NerdTreeToggle'}
Plug 'octol/vim-cpp-enhanced-highlight', { 'for': 'cpp' }
"BETTER REGEX, SWAPS, REPLACES ETC.
Plug 'tpope/vim-abolish'
"CHANGING OF BRACES, SURROUNDS ETC.
Plug 'tpope/vim-surround'
Plug 'bling/vim-bufferline'
Plug 'w0rp/ale'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-obsession'
Plug 'christoomey/vim-tmux-navigator'
Plug 'mhinz/vim-startify'
"Displays ident lines
Plug 'Yggdroot/indentLine'
"COLORTHEMES
Plug 'morhetz/gruvbox'
Plug 'rakr/vim-one'
Plug 'whatyouhide/vim-gotham'
Plug 'jacoborus/tender.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'Chiel92/vim-autoformat'
Plug 'metakirby5/codi.vim'
"SYNTAX HL FOR DOCKERFILE
Plug 'ekalinin/Dockerfile.vim'
"RESIZING WHEN MULTIPLE WINDOWS USED
Plug 'roman/golden-ratio'
"REPEAT f,F,t,T for next letters
Plug 'rhysd/clever-f.vim'
"VIM SCROLLING
Plug 'yuttie/comfortable-motion.vim'
" BOOKMARKS FOR VIM (CHECK)
Plug 'MattesGroeger/vim-bookmarks'
"MOVE FUNCTIONS ARGUMENTS LEFT AND RIGHT
Plug 'AndrewRadev/sideways.vim'
"RUNNING ASYNCHRONOUSLY COMMANDS
Plug 'skywind3000/asyncrun.vim'
Plug 'machakann/vim-highlightedyank'

call plug#end()
" }}}
" VISUAL SETTINGS {{{
" COLORSCHEME
set background=dark
colorscheme gruvbox
" }}}
" RAINBOW PARENTHESES {{{
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

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
" let g:cpp_class_scope_highlight=1
" }}}
"LIGHTLINE SETTINGS {{{
let g:Powerline_symbols = 'fancy'

let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'filename' ] ],
      \   'right': [ [ 'percent', 'lineinfo' ], ['linter_errors', 'linter_warnings', 'linter_ok'], ['bufferline']]
      \ },
      \ 'component_expand': {
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ },
      \ 'component_type': {
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \ },
      \ 'component_function': {
      \   'fugitive': 'LightlineFugitive',
      \   'readonly': 'LightlineReadonly',
      \   'modified': 'LightlineModified',
      \   'filename': 'LightlineFilename',
      \   'filetype': 'MyFiletype',
      \   'fileformat': 'MyFileformat',
      \ },
      \'component': {
      \   'bufferline': '%{bufferline#refresh_status()} %{g:bufferline_status_info.before . g:bufferline_status_info.current . g:bufferline_status_info.after}'
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

function! LightlineModified()
  if &filetype == "help"
    return ""
  elseif &modified
    return ""
  elseif &modifiable
    return ""
  else
    return ""
  endif
endfunction

function! LightlineReadonly()
  if &filetype == "help"
    return ""
  elseif &readonly
    return ""
  else

    return ""
  endif
endfunction

function! LightlineFugitive()
  if exists("*fugitive#head")
    let branch = fugitive#head()
    return branch !=# '' ? ' '.branch : ''
  endif
  return ''
endfunction
function! LightlineFilename()
  return ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
        \ ('' != expand('%:t') ? expand('%:t') : '[No Name]') .
        \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction

let g:lightline.mode_map = {
      \ 'n' : '',
      \ 'i' : '',
      \ 'R' : '',
      \ 'v' : '',
      \ 'V' : ' ',
      \ "\<C-v>": ' ',
      \ 'c' : ' command',
      \ 's' : ' select',
      \ 'S' : ' S-LINE',
      \ 't': '',
      \}
let g:lightline#ale#indicator_warnings = ''
let g:lightline#ale#indicator_errors = ''
let g:lightline#ale#indicator_ok = ''
" }}}
" TMUXLINE SETTINGS {{{
let g:tmuxline_preset = {
      \'a'       : '#S',
      \'win'     : '#I.#W',
      \'cwin'    : '#I.#W',
      \'x'       : [' #(sudo docker ps | grep -cvi "(Paused)")  #(sudo docker ps | grep -ci "(paused)")  #(docker ps -a | grep -c "Exited (0)")  #(sudo docker ps -a | grep "Exited" | grep -vc "(0)")'],
      \'y'       : [' #(uptime | grep -PZo "(?<=up )[^,]*")'],
      \'z'       : '#(whoami)@#h',
      \'options' : {'status-justify' : 'left'}}
" }}}
" GITGUTTER SETTINGS {{{
set updatetime=250
let g:gitgutter_sign_added = ''
let g:gitgutter_sign_removed = ''
let g:gitgutter_sign_removed_first_line = ''
let g:gitgutter_sign_modified = ' '
let g:gitgutter_sign_modified_removed = ' '
"undotree settings
let g:undotree_TreeNodeShape = ' '

let g:undotree_SetFocusWhenToggle = 1
" }}}
" FZF SETTINGS {{{
let g:fzf_colors =
      \ { 'fg':      ['fg', 'Normal'],
      \ 'bg':      ['bg', 'Normal'],
      \ 'hl':      ['fg', 'Comment'],
      \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
      \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
      \ 'hl+':     ['fg', 'Statement'],
      \ 'info':    ['fg', 'PreProc'],
      \ 'prompt':  ['fg', 'Conditional'],
      \ 'pointer': ['fg', 'Exception'],
      \ 'marker':  ['fg', 'Keyword'],
      \ 'spinner': ['fg', 'Label'],
      \ 'header':  ['fg', 'Comment'] }

command! -bang -nargs=* Rg
      \ call fzf#vim#grep(
      \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
      \   <bang>0 ? fzf#vim#with_preview('up:50%')
      \           : fzf#vim#with_preview('right:50%:hidden', '?'),
      \   <bang>0)

command! -bang -nargs=? -complete=dir Files
      \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" }}}
" NERDTREE SETTINGS {{{
let g:NERDTreeIndicatorMapCustom = {
      \ "Modified"  : " ",
      \ "Staged"    : "✚ ",
      \ "Untracked" : " ",
      \ "Renamed"   : "➜ ",
      \ "Unmerged"  : " ",
      \ "Deleted"   : " ",
      \ "Dirty"     : " ",
      \ "Clean"     : " ",
      \ 'Ignored'   : ' ',
      \ "Unknown"   : " "
      \ }
" }}}
" TAGBAR SETTINGS {{{
let g:tagbar_left = 1
let g:tagbar_width = 30
"SAME WIDTH WHEN ZOOMED AS ZOOMED OUT
let g:tagbar_zoomwidth = 30
let g:tagbar_compact = 1
"ABSOLUTE LINE NUMBERS
let g:tagbar_show_linenumbers = 1
let g:tagbar_autofocus = 1
"AUTOMATICALLY SHOWS CURRENT TAG (EXPANDS BRANCH AS NEEDED)
let g:tagbar_autoshowtag = 1
"VIM-CPP HIGHLIGHT SETTINGS
let c_no_curly_error=1
"BUFFERLINE SETTINGS
let bufferline_active_buffer_left = ''
let bufferline_active_buffer_right = ''
let g:bufferline_modified = ' '
let g:bufferline_echo = 0
"}}}
" ALE SETTINGS {{{
" function! s:autoflake(buffer):
" endfunction

let g:ale_linters = {
      \   'cpp': ['g++'],
      \   'java': ['javac'],
      \   'python': ['pylint', 'yapf', 'isort', 'flake8',],
      \}

" BABCIU TO JEST ZAJEBISTE
let g:ale_fixers = {
      \   'python': ['autopep8', 'isort', 'docformatter', 'yapf']
      \}
" THERES IS ADDITIONAL AUTOFLAKE VIM PLUGIN RUNNING POST WRITE

let g:ale_sign_error = ''
let g:ale_sign_warning = ''

let g:ale_echo_msg_error_str = 'ERROR '
let g:ale_echo_msg_warning_str = 'WARNING '
let g:ale_echo_msg_format = '[%severity%] [%linter%] %s'

let g:ale_fix_on_save = 1

" }}}
" EASY-ALIGN SETTINGS {{{
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
" }}}
" INDENTLINE SETTINGS {{{
let g:indentLine_char = ''
let g:indentLine_enabled = 1
"}}}
" AUTOFORMATTING SETTINGS {{{
let g:formatdef_my_cpp = '"clang-format -style=Google"'
let g:formatters_cpp = ['my_cpp']
" }}}
" COMPLETOR OPTIONS {{{
let g:completor_min_chars=0
let g:completor_completion_delay=0
let g:completor_refresh_always=0

" }}}
" NEOVIM SETTINGS {{{
"SYNTAX HIGHLIGHTING SYNCED ONLY FOR 300 LINES
autocmd BufEnter * :syntax sync maxlines=300
set hid "allows for more than one unsaved buffer
set tabstop=2
set shiftwidth=2
set softtabstop=2
"Expands tab to spaces
set expandtab

set number
set relativenumber
set numberwidth=4

"Turns off the annoying bell
set vb
set clipboard=unnamedplus
"80 chars marker line
set cc=80
"DEFAULT MODE IS INVISBLE
set noshowmode
"NOWRAP
set nowrap
" Number of screen lines to use for the command-line.
" set cmdheight=2
" No window preview
set completeopt-=preview
" search case insensitive with /
set ignorecase
" Maximum width of text that is being inserted.  A longer line will be
" broken after white space to get this width.
set textwidth=80

" When this option is set, the screen will not be redrawn while
" executing macros, registers and other commands that have not been
" typed
set lazyredraw

" you don't have to save buffers when switching
set hidden
" This option helps to avoid all the |hit-enter| prompts caused by file messages
set shortmess=a

" FILE CHANGES SAVED EVEN AFTER FILE CLOSING
set undofile                        " Save undo's after file closes
set undodir=~/.config/nvim/undo_history/ "Undo directory
set undolevels=1000                 " How many undos
set undoreload=10000                " number of lines to save for undo
" Ignore compiled files
set wildignore=*.o,*~,*.pyc
" Different backspcae working
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile
"REMEMBERS INFO ABOUT BUFFERS ON CLOSE
set viminfo^=%
"DISPLAYS CURSORS AND COLUMS
set cursorcolumn
" Leave netrw to death
let g:netrw_banner=0
" TRUE COLORS SUPPORT
if has("termguicolors")     " set true colors
  set t_8f=\[[38;2;%lu;%lu;%lum
  set t_8b=\[[48;2;%lu;%lu;%lum
  set termguicolors
endif
"LOOK OF VERTICAL SPLIT BAR/SEPARATOR
set fillchars=vert:\
" }}}
" AUTOCOMMANDS {{{

"DISABLE AUTOCOMMENTING IN C/C++ WHEN USING O or o
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
"Highlight word under cursor
autocmd CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))
"git commit messages wrapping and spell checking
autocmd BufRead $HOME/.config/nvim/init.vim setlocal foldmethod=marker
autocmd Filetype gitcommit setlocal spell textwidth=72
"Disable auto-commenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"opens file on last edited line
autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \ exe "normal! g`\"" |
      \ endif

"REMOVES TRAILING WHITESPACE
autocmd BufWritePre * %s/\s\+$//e
" }}}
" PYTHON SETTINGS {{{
" OPENING DOCUMENTATION SETTINGS
let g:pydoc_open_cmd = 'tabnew'

augroup SPACEVIM_ASYNCRUN
  autocmd!
  " Automatically open the quickfix window
  autocmd User AsyncRunStart call asyncrun#quickfix_toggle(15, 1)
augroup END

function! s:compile_and_run()
  exec 'w'
  if &filetype == 'c'
    exec "AsyncRun! gcc -Wall -O2 - Werror % -o %<; time ./%<"
  elseif &filetype == 'cpp'
    exec "AsyncRun! g++ -std=c++14 -Wall -Werror -O2 -Weffc++ % -o %<; time ./%<"
  elseif &filetype == 'java'
    exec "AsyncRun! javac %; time java %<"
  elseif &filetype == 'sh'
    exec "AsyncRun! time bash %"
  elseif &filetype == 'python'
    exec "AsyncRun! time python -O %"
  endif
endfunction

" PROPER PYTHON FOLDING
autocmd Filetype python let b:anyfold_activate=1
set foldlevel=0
"AUTO FLAKE CONFIGURATION
let g:autoflake_disable_show_diff=1
let g:autoflake_remove_unused_variables=1
let g:autoflake_imports="django,requests,urllib3,numpy,scipy,sklearn,pandas,tensorflow"

autocmd BufWritePost *.py silent Autoflake
" }}}
" LATEX OPTIONS {{{
"VIMTEX CONFIG
let g:vimtex_view_method = 'zathura'

"NEOTEX CONFIG
let g:neotex_enabled = 2
let g:neotex_delay = 500
let g:neotex_latexdiff = 1

augroup vimtex_event_1
  au!
  au User VimtexEventQuit     call vimtex#compiler#clean(0)
  au User VimtexEventInitPost call vimtex#compiler#compile()
augroup END

function! CloseViewers()
  if executable('xdotool') && exists('b:vimtex')
        \ && exists('b:vimtex.viewer') && b:vimtex.viewer.xwin_id > 0
    call system('xdotool windowclose '. b:vimtex.viewer.xwin_id)
  endif
endfunction

augroup vimtex_event_2
  au!
  au User VimtexEventQuit call CloseViewers()
augroup END

".tex FILE IS ALWAYS LATEX
let g:tex_flavor = 'tex'
" }}}
" SHORT SETTINGS FOR VARIOUS PLUGINS{{{
let g:choosewin_overlay_enable = 1

" }}}
" FUNCTIONS {{{
function! InsertPythonData()
  let filename = expand("%:r")
  let shebang = "#\!/usr/bin/env python3.6"
  let encoding = "# -*- coding: " . &fileencoding . " -*-"
  let module_doc = "\"\"\"" . filename . "\.\"\"\""

  if (getline("1") !~ shebang)
    exe "normal!ggO" . shebang
  endif
  if (getline("2") !~ encoding)
    exe "normal!ggo" . encoding
  endif
  if (getline("3") !~ module_doc)
    exe "normal!3GO" . module_doc
    exe "normal!o"
  endif
endfunction
" }}}
" REMAPS {{{
"Turns off highlighting for searches after esc
nnoremap <silent><esc> :noh<return><esc>

let mapleader = "\<Space>"

" OPEN DOCUMENTATION ALWAYS IN NEW TAB
autocmd Filetype vim set keywordprg=help
nnoremap <silent>K :execute 'tab ' . &keywordprg . ' ' . expand("<cword>")<CR>

"ADDING DOCUMENTATION TO EVERY CLASS AND FUNCTION IN PYTHON (DO IT ONLY ON UNFOLDED CODE)
"FIX IT
autocmd Filetype python nnoremap <silent><Leader>d :Pydocstring<CR>
autocmd Filetype python nnoremap <silent><Leader>D :call InsertPythonData() <bar> :g/\ *def\ \\|\ *class\ /Pydocstring<CR>
"FOLDING/UNFOLDING WITH Z (UNFOLD EVERYTHING) AND z (UNFOLD CURRENT)
nnoremap z zA
nnoremap Z za
nnoremap <silent><Leader>z :let &foldlevel = &foldlevel==0 ? &foldnestmax : 0<CR>
"CREATE FOLD IN VISUAL MODE WITH z
vnoremap <silent>z zf
"COMPILING PROGRAMS WITH LEADER C
nnoremap ,c :call <SID>compile_and_run()<CR>
"Copying without leading namespace
" map <Leader> <Plug>(easymotion-prefix)
nnoremap <silent><Leader>yy ^yg_
"Pasting in newline (p below and P above)
nnoremap <silent><Leader>p :pu<CR>
nnoremap <silent><Leader>P :pu!<CR>
"FZF REMAPS
nnoremap <silent><Leader>f :Files!<CR>
"Turning on undotree
nnoremap <silent>,b :Buffers!<CR>
nnoremap <silent>,u :UndotreeToggle<CR>
nnoremap <silent>,g :Goyo<CR>
nnoremap <silent>,f :NERDTreeToggle<CR>
nnoremap <silent>,m :TagbarToggle<CR>
nnoremap <silent><Leader>R :%s/<c-r><c-w>//gI<c-f>$F/i
nnoremap <silent><Leader>r :%s/\<<c-r><c-w>\>//gI<c-f>$F/i
"Remap to alt (moving between buffers and tabs)
nnoremap <silent><M-h> :bp<CR>
nnoremap <silent><M-l> :bn<CR>
nnoremap <silent><M-k> :tabn<CR>
nnoremap <silent><M-j> :tabp<CR>
"Fast saving
nnoremap <silent><Leader>w :w!<cr>
"Fast leaving the file
nnoremap <silent><Leader>q :q!<cr>
"Expands :h to :tab help
cnoreabbrev <expr> h getcmdtype() == ":" && getcmdline() == 'h' ? 'tab help' : 'h'
cnoreabbrev <expr> m getcmdtype() == ":" && getcmdline() == 'm' ? 'tab Man' : 'h'
"Closing buffer
nnoremap <Leader>x :bd<cr>
"Moving line up/down with arrows
nnoremap <Up>   :<C-u>silent! move-2<CR>==
nnoremap <Down> :<C-u>silent! move+<CR>==
"Move arguments left and right
nnoremap <silent><Left> :SidewaysLeft<cr>
nnoremap <silent><Right> :SidewaysRight<cr>
nmap <Leader>c <Plug>(choosewin)
" }}}
" EASYMOTION {{{
nmap s <Plug>(easymotion-overwin-f)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

let g:EasyMotion_smartcase = 1

map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

nmap <Leader>b <Plug>(easymotion-overwin-w)

" }}}
" OTHER {{{
" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
"}}}
