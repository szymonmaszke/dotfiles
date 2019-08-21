scriptencoding utf-8

" Automatically change directory to the one used in buffer
set autochdir

" Use shell aliases inside neovim
" set shellcmdflag=-ic

" gitgutter advises 100ms updates for neovim
set updatetime=100

set background=dark
colorscheme gruvbox

" Disable press enter every damn time
set nomore

" FASTER START (disable default plugins loading)
let g:did_install_default_menus = 1
let g:did_install_syntax_menu = 1
set guioptions=M
let g:loaded_vimball           = 1
let g:loaded_vimballPlugin     = 1
let g:loaded_getscript         = 1
let g:loaded_getscriptPlugin   = 1
let g:loaded_netrw             = 1
let g:loaded_netrwPlugin       = 1
let g:loaded_netrwSettings     = 1
let g:loaded_netrwFileHandlers = 1
" Leave netrw to death
let g:netrw_banner=0

set inccommand=nosplit
" Copy indent from previous line
set copyindent
" Use signs for end of line and tabs
set list
set listchars=tab:→\ ,trail:·,eol:↴,nbsp:·
" Spelling turned on
set spelllang=en_gb
set spell

" More than one unsaved buffer
set hidden

" Size of spaces and tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" File numbering (relative)
set number
set relativenumber
set numberwidth=4

" Turns off the annoying bell
set visualbell

" Use system clipboard
set clipboard+=unnamedplus

" 80 chars marker line
set colorcolumn=80
set textwidth=160

set noshowmode
set nowrap

" No window preview
set completeopt=menuone
" search case insensitive with /
set ignorecase
" Maximum width of text that is being inserted.  A longer line will be
" broken after white space to get this width.

" When this option is set, the screen will not be redrawn while
" executing macros, registers and other commands that have not been
" typed
set lazyredraw
set noshowcmd
" This option helps to avoid all the |hit-enter| prompts caused by file messages
set shortmess=sWcIqFTAf

" Undo directories
set undofile                        " Save undo's after file closes
set undodir=$HOME/.config/nvim/undo_history/ "Undo directory
set undolevels=10000                 " How many undos
set undoreload=10000                " number of lines to save for undo

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowritebackup
set noswapfile

" Defining wildmode - TO DO
" set wildmode=list:longest,full
" Display cursor and columns
set cursorcolumn
set cursorline

set scrolloff=10

" TRUE COLORS SUPPORT
if has('termguicolors')     " set true colors
  set t_8f=\[[38;2;%lu;%lu;%lum
  set t_8b=\[[48;2;%lu;%lu;%lum
  set termguicolors
endif

hi HighlightedyankRegion ctermbg=161 guibg=#fc00a8
hi Normal guibg=NONE ctermbg=NONE
