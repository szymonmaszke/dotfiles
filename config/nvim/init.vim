function! DoRemote(arg)
	UpdateRemotePlugins endfunction
endfunction

call plug#begin()
"Fugitive
Plug 'tpope/vim-fugitive'
Plug 'bronson/vim-trailing-whitespace'
Plug 'itchyny/lightline.vim'
Plug 'neomake/neomake'
Plug 'luochen1990/rainbow'
Plug 'Shougo/deoplete.nvim', {'do': function('DoRemote')}
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'tmux-plugins/vim-tmux'
"tmuxline
Plug 'edkolev/tmuxline.vim'

"C FAMILY AUTOCOMPLETION
Plug 'zchee/deoplete-clang'
Plug 'tomasr/molokai'
"PYTHON AUTOCOMPLETION
Plug 'zchee/deoplete-jedi'
"JAVA AUTOCOMPLETION
"Plug 'artur-shaik/vim-javacomplete2'
Plug 'takac/vim-hardtime'
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
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
"CPP PLUGINS
Plug 'octol/vim-cpp-enhanced-highlight', { 'for': 'cpp' }

call plug#end()

"PATH ADDING STANDARD C++ LIBRARIERS
let &path.="/usr/include/c++/6.3.1/**"
"THEMES
colorscheme molokai

"RAINBOW PARENTHESES
let g:rainbow_active=1
let g:cpp_class_scope_highlight=1

"NEOMAKE FOR C++
let g:neomake_cpp_gcc_make={'args': ['-std=c++14', "-Wall", "-Wextra", "-pedantic"]}
let g:neomake_cpp_enabled_makers=['gcc']
autocmd! BufWritePost * Neomake

"JAVA COMPLETE2
"autocmd FileType java setlocal omnifunc=javacomplete#Complete

"DEOPLETE CONFIGURATION
let g:deoplete#enable_at_startup = 1
inoremap <expr><tab>
	\ pumvisible() ? "<C-n>" : "<Tab>"
inoremap <expr><s-tab>
	\ pumvisible() ? "<C-p>" : "<Tab>"
"DEOPLETE CLANG OPTIONS
let g:deoplete#sources#clang#libclang_path="/usr/lib/libclang.so"
let g:deoplete#sources#clang#clang_header="/usr/include/clang/"
"NEOSNIPS CONFIGURATION
imap <c-tab>	<Plug>(neosnippet_expand_or_jump)
smap <c-tab>	<Plug>(neosnippet_expand_or_jump)
xmap <c-tab>	<Plug>(neosnippet_expand_target)

"lightline settings
let g:Powerline_symbols = 'fancy'

let g:lightline = {
      \ 'colorscheme': 'p1nk',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'filename' ] ],
      \   'right': [ [ 'percent', 'lineinfo' ]]
      \ },
      \ 'component_function': {
      \   'fugitive': 'LightlineFugitive',
      \   'readonly': 'LightlineReadonly',
      \   'modified': 'LightlineModified',
      \   'filename': 'LightlineFilename',
      \ },
			\ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

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
		\ 'n' : 'N',
		\ 'i' : 'I',
		\ 'R' : 'R',
		\ 'v' : 'V',
		\ 'V' : 'V-L',
		\ "\<C-v>": 'V-B',
		\ 'c' : 'C',
		\ 's' : 'S',
		\ 'S' : 'S-L',
		\ "\C-s>": 'S-B',
		\ 't': 'T'
		\ }

"HARDTIME SETTINGS
let g:hardtime_default_on = 1
let g:hardtime_timeout = 1000
let g:list_of_disabled_keys = ["<BACKSPACE>"]
let g:hardtime_ignore_buffer_patterns = ["undotree.*", "NERD.*", "Tagbar.*"]
"GITGUTTER SETTINGS
set updatetime=250
let g:gitgutter_sign_added = ''
let g:gitgutter_sign_removed = ''
let g:gitgutter_sign_removed_first_line = ''
let g:gitgutter_sign_modified = ' '
let g:gitgutter_sign_modified_removed = ' '
"undotree settings
let g:undotree_TreeNodeShape = ' '

let g:undotree_SetFocusWhenToggle = 1
"let g:undotree_HighlightChangedText = 0

"FZF SETTINGS
let g:fzf_layout = { 'left': '~19%' }
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

"Nerdtree settings
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
"TAGBAR SETTINGS
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
"NEOVIM SETTINGS
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
set clipboard=unnamed
"80 chars marker line
set cc=80
"DEFAULT MODE IS INVISBLE
set noshowmode
"NOWRAP
set nowrap
" Number of screen lines to use for the command-line.
"set cmdheight=2
" Don't use swapfiles.. use a vcs like git instead
set noswapfile
" search case insensitive with /
set ignorecase
" Maximum width of text that is being inserted.  A longer line will be
" broken after white space to get this width.
set textwidth=80

" When this option is set, the screen will not be redrawn while
" executing macros, registers and other commands that have not been
" typed
set lazyredraw

" This option helps to avoid all the |hit-enter| prompts caused by file messages
set shortmess=aAIsT

" FILE CHANGES SAVED EVEN AFTER FILE CLOSING
set undofile                        " Save undo's after file closes
set undodir=~/.config/nvim/undo_history/ "Undo directory
set undolevels=1000                 " How many undos
set undoreload=10000                " number of lines to save for undo
" Leave netrw to death
let g:netrw_banner=0

"LOOK OF VERTICAL SPLIT BAR/SEPARATOR
set fillchars=vert:\ 
hi VertSplit ctermbg=bg ctermfg=bg
"KEYBOARD SETTINGS
"
"Turns off highlighting for searches after esc
nnoremap <esc> :noh<return><esc>

let g:mapleader = ';'
"Copying without leading namespace
nnoremap <Leader>yy ^yg_
"Pasting in newline (p below and P above)
nnoremap <Leader>p :pu<CR>
nnoremap <Leader>P :pu!<CR>
"Turning on undotree
nnoremap <leader>u :UndotreeToggle<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>/ :Files<CR>
nnoremap <Leader>g :Goyo<CR>
nnoremap <Leader>f :NERDTreeToggle<CR>
nnoremap <Leader>t :TagbarToggle<CR>
