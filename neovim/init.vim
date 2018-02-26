scriptencoding utf-8

" PLUGINS LISTING {{{
function! DoRemote(arg)
  UpdateRemotePlugins endfunction
endfunction

call plug#begin()
Plug '~/projects/vimpyter'
Plug 'tpope/vim-markdown'
" Plug '~/projects/vimpyter'
" EXPAND REGION WITH VISUAL SELECTION
Plug 'terryma/vim-expand-region'
" MORE TARGETS FOR PARENTHESES ETC. <CONFIGURE>
Plug 'wellle/targets.vim'
"CORRECT PASTING
Plug 'sickill/vim-pasta'
Plug 'deris/vim-shot-f'
Plug 'bradford-smith94/quick-scope'
Plug 'Shougo/denite.nvim'
Plug 'farmergreg/vim-lastplace'
Plug 'haya14busa/incsearch.vim'
Plug 'jiangmiao/auto-pairs'
"MOVE FILE WITH IT'S HISTORY, SHELL SCRIPTS MADE EXECUTABLE, RENAME ETC.
Plug 'tpope/vim-eunuch'
Plug 'haya14busa/vim-edgemotion'
"BETTER ASTERISK
Plug 'haya14busa/vim-asterisk'
Plug 'vim-python/python-syntax'
Plug 'derekwyatt/vim-scala'
Plug 'elzr/vim-json'
Plug 'paradigm/TextObjectify'
Plug 'Shougo/echodoc.vim'
Plug 'tenfyzhong/CompleteParameter.vim'
"IF FILE CHANGED ON DISK IT'S FINE, JUST RELOAD VIM
Plug 'vim-utils/vim-interruptless'
"HIGHLIGHT CURRENT WORD
Plug 'osyo-manga/vim-brightest'
Plug 'duckwork/limelight.vim'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'christoomey/vim-tmux-navigator'
" ALLOWS FOR RECOGNITION OF NESTED FILETYPES (JAVASCRIPT IN HTML ETC.)
Plug 'Shougo/context_filetype.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'Shougo/neco-vim'
Plug 'wellle/tmux-complete.vim'
Plug 'zchee/deoplete-zsh'
Plug 'zchee/deoplete-docker'
" POST GISTS TO GITHUB
Plug 'mattn/gist-vim'
Plug 'ap/vim-buftabline'
" HANDLE BUFFER CLOSING BETTER
Plug 'moll/vim-bbye'
" TEXT OBJECT FOR FUNCTION
Plug 'bps/vim-textobj-python'
Plug 'kana/vim-textobj-user'
" RANGE SEPARATION
Plug 'chrisbra/NrrwRgn'
Plug 'ekalinin/Dockerfile.vim'
" BETTER LOG SYNTAX
Plug 'andreshazard/vim-logreview'
" HIGHLIGHT UNDOS
Plug 'machakann/vim-highlightedundo'
" LATEX MEETS VIM <3
Plug 'lervag/vimtex'
" PLUGIN FOR QUICK LATEX WRITING
Plug 'brennier/quicktex'
" PLUGIN FOR LIVE ASYNCHRONOUS PREVIEW OF LATEX FILES
Plug 'donRaphaco/neotex', { 'for': 'tex' }
" BETTER EDITING FOR COMMIT MESSAGES
Plug 'rhysd/committia.vim'
" USING DOT WITH PLUGINS
Plug 'tpope/vim-repeat'
"COLOR CODES MAY BE INAPPROPRIATE
"automatically colorizes html hex codes #34fe34 etc. rgba(255,255,0, 0.8)
Plug 'lilydjwg/colorizer'
Plug 'maximbaz/lightline-ale'
Plug 't9md/vim-choosewin'
"GENERATE DOCUMENTATION FOR FUNCTIONS CLASSES ETC. AUTOMATICALLY
Plug 'heavenshell/vim-pydocstring'
"DOCUMENTATION FOR PYTHON AND FRAMEWORKS
Plug 'fs111/pydoc.vim'
"BETTER FOLDING FOR PYTHON
Plug 'pseewald/vim-anyfold'
"SNIPPETS MENU
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"GITHUB LIKE FUGITIVE
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
Plug 'eapache/rainbow_parentheses.vim'
"Displays git changes
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'junegunn/vim-easy-align'
"TAGS AND MANAGEMENT
Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
"UNDOTREE
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
"FZF finder for vim with sane defaults
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'octol/vim-cpp-enhanced-highlight', { 'for': 'cpp' }
"BETTER REGEX, SWAPS, REPLACES ETC.
Plug 'tpope/vim-abolish'
"CHANGING OF BRACES, SURROUNDS ETC.
Plug 'tpope/vim-surround'
Plug 'w0rp/ale'
Plug 'easymotion/vim-easymotion'
Plug 'mhinz/vim-startify'
"Displays ident lines
Plug 'Yggdroot/indentLine'
"COLORTHEMES
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'
"RESIZING WHEN MULTIPLE WINDOWS USED
Plug 'justincampbell/vim-eighties'
"REPEAT f,F,t,T for next letters
" Plug 'rhysd/clever-f.vim'
"VIM SCROLLING
Plug 'yuttie/comfortable-motion.vim'
" BOOKMARKS FOR VIM (CHECK)
Plug 'MattesGroeger/vim-bookmarks'
"MOVE FUNCTIONS ARGUMENTS LEFT AND RIGHT
Plug 'AndrewRadev/sideways.vim'
"RUNNING ASYNCHRONOUSLY COMMANDS
Plug 'skywind3000/asyncrun.vim'
Plug 'machakann/vim-highlightedyank'
"HIGHLIGHT REGEX SEARCHES
Plug 'xtal8/traces.vim'

call plug#end()
" }}}
" VIM PLUG SETTINGS{{{
augroup AutoInstallation
  autocmd VimEnter *
    \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
    \|   PlugInstall --sync | q
    \| endif
augroup END

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
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['<','\>'], ['{', '}']]

augroup AutoStartParentheses
  au VimEnter * RainbowParenthesesToggle
  au Syntax * RainbowParenthesesLoadRound
  au Syntax * RainbowParenthesesLoadSquare
  au Syntax * RainbowParenthesesLoadBraces
augroup END
" }}}
"LIGHTLINE SETTINGS {{{
let g:Powerline_symbols = 'fancy'

let g:lightline = {
      \ 'colorscheme': 'mine',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'filename' ] ],
      \   'right': [ [ 'percent', 'lineinfo' ], ['linter_errors', 'linter_warnings', 'linter_ok']]
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
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '█', 'right': '█' }
      \ }

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

function! LightlineModified()
  if &filetype ==# 'help'
    return ''
  elseif &modified
    return ''
  elseif &modifiable
    return ''
  else
    return ''
  endif
endfunction

function! LightlineReadonly()
  if &filetype ==# 'help'
    return ''
  elseif &readonly
    return ''
  else

    return ''
  endif
endfunction

function! LightlineFugitive()
  if exists('*fugitive#head')
    let l:branch = fugitive#head()
    return l:branch !=# '' ? ' '. l:branch : ''
  endif
  return ''
endfunction
function! LightlineFilename()
  return ('' !=# LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
        \ ('' !=# expand('%:t') ? expand('%:t') : '[No Name]') .
        \ ('' !=# LightlineModified() ? ' ' . LightlineModified() : '')
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
" GITGUTTER SETTINGS {{{
set updatetime=250
let g:gitgutter_sign_added = ''
let g:gitgutter_sign_removed = ''
let g:gitgutter_sign_removed_first_line = ''
let g:gitgutter_sign_modified = ' '
let g:gitgutter_sign_modified_removed = ' '
" }}}
" UNDOTREE SETTINGS {{{
let g:undotree_TreeNodeShape = ' '
let g:undotree_SetFocusWhenToggle = 1
let g:golden_ratio_exclude_nonmodifiable = 1
let g:undotree_SplitWidth = 20
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

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }

" let g:fzf_command_prefix = 'Fzf'
let g:fzf_layout = { 'down': '~40%' }
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr" --all'
inoremap <expr> <c-x><c-k> fzf#complete('cat $HOME/testing/text')

command! -bang -nargs=* Rg
      \ call fzf#vim#grep(
      \   'rg --column --line-number --smart-case -no-heading --color=always '.shellescape(<q-args>), 1,
      \   <bang>0 ? fzf#vim#with_preview('up:50%')
      \           : fzf#vim#with_preview('right:50%:hidden', '?'),
      \   <bang>0)

command! -nargs=* -complete=dir Cd call fzf#run(fzf#wrap(
  \ {'source': 'fd -t d "" '.(empty(<f-args>) ? '.' : <f-args>),
\ 'sink': 'cd'}))

augroup NoStatusLineForFzf
  autocmd! FileType fzf
  autocmd  FileType fzf set laststatus=0 noshowmode noruler
    \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
augroup END

" }}}
" TAGBAR SETTINGS {{{
let g:tagbar_left = 1
"SAME WIDTH WHEN ZOOMED AS ZOOMED OUT
let g:tagbar_zoomwidth = 0
let g:tagbar_compact = 1
"ABSOLUTE LINE NUMBERS
let g:tagbar_show_linenumbers = 1
let g:tagbar_show_visibility = 1
let g:tagbar_autoclose = 1
"AUTOMATICALLY SHOWS CURRENT TAG (EXPANDS BRANCH AS NEEDED)
let g:tagbar_autoshowtag = 1
"}}}
" ALE SETTINGS {{{
let g:ale_linters = {
      \   'python': ['pylint', 'yapf', 'flake8',],
      \}

" ADD DOCFORMATTER
let g:ale_fixers = {
      \   'python': ['autopep8', 'isort', 'yapf', 'remove_trailing_lines', 'trim_whitespace'],
      \   'sh': ['shfmt', 'remove_trailing_lines', 'trim_whitespace',],
      \   'vim': ['remove_trailing_lines', 'trim_whitespace',],
      \}

let g:ale_sign_error = ''
let g:ale_sign_warning = ''

let g:ale_echo_msg_error_str = 'ERROR '
let g:ale_echo_msg_warning_str = 'WARNING '
let g:ale_echo_msg_format = '[%severity%] [%linter%] %s [%code%]'
let g:ale_lint_on_enter = 1

let g:ale_lint_on_enter = 0
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
" DEOPLETE OPTIONS {{{
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_delay = 0
let g:deoplete#sources#jedi#server_timeout = 1000

" use tab to forward cycle
inoremap <silent><expr><M-j> pumvisible() ? "\<c-n>" : "\<tab>"
" use tab to backward cycle
inoremap <silent><expr><M-k> pumvisible() ? "\<c-p>" : "\<s-tab>"

inoremap <silent><expr> ( complete_parameter#pre_complete("()")
smap <M-l> <Plug>(complete_parameter#goto_next_parameter)
imap <M-l> <Plug>(complete_parameter#goto_next_parameter)
smap <M-h> <Plug>(complete_parameter#goto_previous_parameter)
imap <M-h> <Plug>(complete_parameter#goto_previous_parameter)

" }}}
" NARROWED WINDOW SETTINGS {{{
  command! -nargs=* -bang -range -complete=filetype NN
              \ :<line1>,<line2> call nrrwrgn#NrrwRgn('',<q-bang>)
              \ | set filetype=<args>

  let g:nrrw_rgn_vert = 1
  let g:nrrw_rgn_resize_window = 'relative'
" }}}
" MOVE TO THE EDGE SETTINGS {{{
map <Up> <Plug>(edgemotion-k)
map <Down> <Plug>(edgemotion-j)
" }}}
" ASTERISK SETTINGS (TO BE FINISHED) {{{
map *  <Plug>(asterisk-z*)
map #  <Plug>(asterisk-z#)
map g* <Plug>(asterisk-gz*)
map g# <Plug>(asterisk-gz#)
let g:asterisk#keeppos = 1
" }}}
" BUFTABLINE SETTINGS {{{
let g:buftabline_indicators = 1
" }}}
" NEOVIM SETTINGS {{{
"Copy indent from previous line
set copyindent
set list
set listchars=tab:→\ ,trail:·,eol:¬,nbsp:·,extends:❯,precedes:❮
set spelllang=en_gb
set spell
set hidden "allows for more than one unsaved buffer
set tabstop=2
set shiftwidth=2
set softtabstop=2
"Expands tab to spaces
set expandtab

set number
set relativenumber
set numberwidth=4

"Turns off the annoying bell
set visualbell
set clipboard=unnamedplus
"80 chars marker line
set colorcolumn=80
"DEFAULT MODE IS INVISBLE
set noshowmode
"NOWRAP
set nowrap
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
set noshowcmd
" you don't have to save buffers when switching
set hidden
" This option helps to avoid all the |hit-enter| prompts caused by file messages
set shortmess=sWcIqFTAf

" FILE CHANGES SAVED EVEN AFTER FILE CLOSING
set undofile                        " Save undo's after file closes
set undodir=~/.config/nvim/undo_history/ "Undo directory
set undolevels=10000                 " How many undos
set undoreload=10000                " number of lines to save for undo
" Ignore compiled files
set wildignore=*.o,*~,*.pyc
" Different backspcae working
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowritebackup
set noswapfile
"DISPLAYS CURSORS AND COLUMS
set wildmode=list:longest,full
set cursorcolumn
set cursorline
" Leave netrw to death
" let g:netrw_banner=0
" TRUE COLORS SUPPORT
if has('termguicolors')     " set true colors
  set t_8f=\[[38;2;%lu;%lu;%lum
  set t_8b=\[[48;2;%lu;%lu;%lum
  set termguicolors
endif
"LOOK OF VERTICAL SPLIT BAR/SEPARATOR
set fillchars=vert:\
" }}}
" AUTOCOMMANDS {{{

augroup SmallerSyntax
  autocmd BufEnter * :syntax sync maxlines=300
augroup END
"DISABLE AUTOCOMMENTING IN C/C++ WHEN USING O or o
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

" }}}
" CPP SETTINGS{{{
let g:c_no_curly_error=1
" }}}
" SCALA SETTINGS {{{
 let g:scala_scaladoc_indent = 1
" }}}
" PYTHON SETTINGS {{{
" OPENING DOCUMENTATION SETTINGS
let g:python_highlight_all = 1
let g:python_highlight_space_errors = 0

let g:pydocstring_enable_mapping = 0
let g:pydocstring_enable_comment = 0
let g:pydocstring_templates_dir = '$HOME/.config/python_templates'
let g:pydoc_open_cmd = 'tabnew'

augroup SPACEVIM_ASYNCRUN
  autocmd!
  " Automatically open the quickfix window
  autocmd User AsyncRunStart call asyncrun#quickfix_toggle(15, 1)
augroup END

function! s:compile_and_run()
  exec 'w'
  if &filetype ==# 'c'
    exec 'AsyncRun! gcc -Wall -O2 - Werror % -o %<; time ./%<'
  elseif &filetype ==# 'cpp'
    exec 'AsyncRun! g++ -std=c++14 -Wall -Werror -O2 -Weffc++ % -o %<; time ./%<'
  elseif &filetype ==# 'java'
    exec 'AsyncRun! javac %; time java %<'
  elseif &filetype ==# 'sh'
    exec 'AsyncRun! time bash %'
  elseif &filetype ==# 'python'
    exec 'AsyncRun! time python -O %'
  endif
endfunction

" PROPER PYTHON FOLDING
autocmd Filetype python let b:anyfold_activate=1
set foldlevel=0
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
" CHOOSEWIN SETTINGS{{{
let g:choosewin_overlay_enable = 1

" }}}
" TEXT OBJECTIFY {{{
let g:textobjectify = {
            \'```': {'left': '```', 'right': '```', 'same': 0, 'seek': 1, 'line': 0},
            \'(': {'left': '(', 'right': ')', 'same': 0, 'seek': 1, 'line': 0},
            \')': {'left': '(', 'right': ')', 'same': 0, 'seek': 2, 'line': 0},
            \'{': {'left': '{', 'right': '}', 'same': 0, 'seek': 1, 'line': 0},
            \'}': {'left': '{', 'right': '}', 'same': 0, 'seek': 2, 'line': 0},
            \'[': {'left': '\[', 'right': '\]', 'same': 0, 'seek': 1, 'line': 0},
            \']': {'left': '\[', 'right': '\]', 'same': 0, 'seek': 2, 'line': 0},
            \'<': {'left': '<', 'right': '>', 'same': 0, 'seek': 1, 'line': 0},
            \'>': {'left': '<', 'right': '>', 'same': 0, 'seek': 2, 'line': 0},
            \'"': {'left': '"', 'right': '"', 'same': 1, 'seek': 1, 'line': 0},
            \"'": {'left': "'", 'right': "'", 'same': 1, 'seek': 1, 'line': 0},
            \'`': {'left': '`', 'right': '`', 'same': 1, 'seek': 1, 'line': 0},
            \'V': {'left': '^\s*\(if\|for\|function\|try\|while\)\>',
                \'right': '^\s*end', 'same': 0, 'seek': 1, 'line': 1},
            \"\<cr>": {'left': '\%^', 'right': '\%$', 'same': 0, 'seek': 0,
            \'line': 0},
            \}
" }}}
" FUNCTIONS {{{
function! InsertPythonData()
  let l:filename = expand('%:r')
  let l:shebang = '#!/usr/bin/env python'
  let l:encoding = '# -*- coding: ' . &fileencoding . ' -*-'
  let l:module_doc = '"""' . l:filename . '."""'

  if (getline('1') !~ l:shebang)
    exe 'normal!ggO' . l:shebang
  endif
  if (getline('2') !~ l:encoding)
    exe 'normal!ggo' . l:encoding
  endif
  if (getline('3') !~ l:module_doc)
    exe 'normal!3GO' . l:module_doc
    exe 'normal!o'
  endif
endfunction
" }}}
" REMAPS {{{
"GO TO LAST CHANGE
"COPY FROM CURSOR TO THE END OF LINE
noremap Y y$
"CHANGE DIRECTORY INSIDE VIM
nnoremap <tab>d :cd %:p:h<CR>:pwd<cr>
nnoremap <tab>h :cd $HOME<CR>:pwd<cr>

nnoremap $ <nop>
nnoremap ^ <nop>
"COMMAND LINE REMAPS
" GO TO THE BEGINNING OF LINE IN COMMAND LINE MODE
cnoremap <C-a> <Home>
cnoremap <C-B> <Left>
"MOVE THROUGH HISTORY
cmap <M-k> <Up>
cmap <M-j> <Down>
" In command mode, type %% to insert the path of the currently edited file, as a shortcut for %:h<tab>.
cmap %% <C-R>=expand("%:h") . "/" <CR>

" Select the text that was last edited/pasted.
" http://vimcasts.org/episodes/bubbling-text/
nmap gV `[v`]

"EXIT WITHOUT SAVING
nnoremap Q :q!<CR>
" B and E for begin and end line
nnoremap H ^
nnoremap L $
" Ctrl-hjkl in insert mode
inoremap <C-h> <C-o>h
inoremap <C-r> <C-o>j
inoremap <C-k> <C-o>k
inoremap <C-l> <C-o>l
" Ctrl-e end of line Ctrl-b beginning
inoremap <C-b> <C-o>0
inoremap <C-e> <C-o>$
"Turns off highlighting for searches after esc
" nnoremap <silent><esc> :noh<return><esc>

" Show invisible characters.
let g:mapleader = "\<Space>"

  " OPEN DOCUMENTATION ALWAYS IN NEW TAB
autocmd Filetype vim set keywordprg=help
nnoremap <silent>K :execute 'tab ' . &keywordprg . ' ' . expand("<cword>")<CR>

"Copying to the end of line with yy
nnoremap <silent><Leader>yy ^yg_
"TO SIĘ ODPALA PRZY PRZECHODZENIU W PRAWO, PRZEJRZEĆ I OGARNĄĆ
autocmd Filetype python nnoremap <silent><Leader>d :Pydocstring<CR>
autocmd Filetype python nnoremap <silent><Leader>D :call InsertPythonData() <bar> :g/\ *def\ \\|\ *class\ /Pydocstring<CR>
nnoremap <silent><Leader>q ZZ<cr>
"FOLDING/UNFOLDING WITH Z (UNFOLD EVERYTHING) AND z (UNFOLD CURRENT)
nnoremap z zA
nnoremap Z za
nnoremap <silent><Leader>z :let &foldlevel = &foldlevel==0 ? &foldnestmax : 0<CR>

"COMPILING PROGRAMS WITH LEADER C
nnoremap <tab>r :call <SID>compile_and_run()<CR>
"CHOOSEWIN
nmap <tab>c <Plug>(choosewin)

"FZF REMAPS
nnoremap <silent><Leader>t :Tags!<CR>
nnoremap <silent><Leader>bt :BTags!<CR>
nnoremap <silent><Leader>c :Commits!<CR>
nnoremap <silent><Leader>bc :BCommits!<CR>
nnoremap <silent><Leader>f :Files!<CR>
"UNDO TREE ETC.
nnoremap <silent><Leader>u :UndotreeToggle<CR>
"SHOWS TAG STRUCTURE OF FILE
nnoremap <silent><tab>t :TagbarToggle<CR>
nnoremap <silent><Leader>R :%s/\<<c-r><c-w>\>//gI<c-f>$F/i
"Remap to alt (moving between buffers and tabs)
nnoremap <silent><M-h> :bp<CR>
nnoremap <silent><M-l> :bn<CR>
nnoremap <silent><M-k> :tabnext<CR>
nnoremap <silent><M-j> :tabprevious<CR>
"Fast saving
nnoremap <silent><Leader>w :w!<cr>
"Expands :h to :tab help
cnoreabbrev <expr> h getcmdtype() == ":" && getcmdline() == 'h' ? 'tab help' : 'h'
cnoreabbrev <expr> m getcmdtype() == ":" && getcmdline() == 'm' ? 'tab Man' : 'h'
"Closing buffer
nnoremap <Leader>x :Bdelete<cr>
"Moving line up/down with arrows
nnoremap <silent><C-Up>   :<C-u>silent! move-2<CR>==
nnoremap <silent><C-Down> :<C-u>silent! move+<CR>==
"Move arguments left and right
nnoremap <silent><Left> :SidewaysLeft<cr>
nnoremap <silent><Right> :SidewaysRight<cr>
map <Up> <Plug>(edgemotion-k)
map <Down> <Plug>(edgemotion-j)
"HIGHLIGHT UNDO MAPPING
nmap u     <Plug>(highlightedundo-undo)
nmap <C-r> <Plug>(highlightedundo-redo)
nmap U     <Plug>(highlightedundo-Undo)
nmap g-    <Plug>(highlightedundo-gminus)
nmap g+    <Plug>(highlightedundo-gplus)
xmap <Leader>n <Plug>NrrwrgnDo
nmap <Leader>n vaf<Plug>NrrwrgnDo

" }}}
" VIM SURROUND {{{
" Maps ss to surround word
nmap <Leader>s ysiw

" Maps sl to surround line
nmap <Leader>sl yss

" Surround Visual selection
vmap s S
" }}}
" EASYMOTION {{{
let g:EasyMotion_skipfoldedline = 0
nmap s <Plug>(easymotion-overwin-f)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

let g:EasyMotion_smartcase = 1

map <Leader>k <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)
nmap <Leader>b <Plug>(easymotion-overwin-w)

" }}}
" DIM SCREEN COMMANDS{{{
hi HighlightedyankRegion ctermbg=161 guibg=#fc00a8
hi Normal guibg=NONE ctermbg=NONE
" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
let g:limelight_default_coefficient = 0.7

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 1

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
let g:limelight_bop = '^\s'
let g:limelight_eop = '\ze\n^\s'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = 10

augroup StatusLine
  au! FocusLost * set laststatus=0
  au! FocusGained * set laststatus=2
augroup END

augroup ToggleTabLine
  au! FocusLost * set showtabline=0
  au! FocusGained * set showtabline=2
augroup END

augroup ColorColumn
  au! FocusLost * set colorcolumn=0
  au! FocusGained * set colorcolumn=80
  au! WinLeave * set colorcolumn=0
  au! WinEnter * set colorcolumn=80
augroup END

augroup CursorColumn
  au! FocusLost * set cursorcolumn!
  au! FocusGained * set cursorcolumn
  au! WinLeave * set cursorcolumn!
  au! WinEnter * set cursorcolumn
augroup END

augroup FadeWindows
    au! FocusGained * LimelightW!
    au! FocusLost * LimelightW
    au! WinEnter * LimelightW!
    au! WinLeave * LimelightW
augroup END
"}}}
" VIMPYTER SETTINGS {{{
autocmd Filetype python nnoremap <silent><tab>b :VimpyterInsertPythonBlock<CR>
autocmd Filetype python nnoremap <silent><tab>j :VimpyterStartNotebook<CR>

"}}}
