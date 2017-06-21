function! DoRemote(arg)
  UpdateRemotePlugins endfunction
endfunction

call plug#begin()
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi', {'for': 'python'}
Plug 'Shougo/neco-vim', {'for': 'vim'}
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
"Show completion in echo mode instead of preview window
Plug 'Shougo/echodoc.vim'
"Fugitive
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
Plug 'luochen1990/rainbow'
Plug 'edkolev/tmuxline.vim'
Plug 'christoomey/vim-tmux-navigator'
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

call plug#end()

"PATH ADDING STANDARD C++ LIBRARIERS
let &path.="/usr/include/c++/7.0.1/**"

au BufRead,BufNewFile *.asm set filetype=nasm

"THEMES
set background=dark
colorscheme gruvbox


"RAINBOW PARENTHESES
let g:rainbow_active=1
let g:cpp_class_scope_highlight=1

"lightline settings
let g:Powerline_symbols = 'fancy'

let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'filename' ] ],
      \   'right': [ [ 'percent', 'lineinfo' ],['bufferline']]
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
"TMUXLINE CONFIGURATION
let g:tmuxline_preset = {
      \'a'       : '#S',
      \'win'     : '#I.#W',
      \'cwin'    : '#I.#W',
      \'x'       : [' #(sudo docker ps | grep -cvi "(Paused)")  #(sudo docker ps | grep -ci "(paused)")  #(docker ps -a | grep -c "Exited (0)")  #(sudo docker ps -a | grep "Exited" | grep -vc "(0)")'],
      \'y'       : [' #(uptime | grep -PZo "(?<=up )[^,]*")'],
      \'z'       : '#(whoami)@#h',
      \'options' : {'status-justify' : 'left'}}


""HARDTIME SETTINGS
let g:hardtime_default_on = 1
let g:hardtime_timeout = 1000
let g:list_of_disabled_keys = ["<BACKSPACE>"]
let g:hardtime_ignore_buffer_patterns = ["undotree.*", "NERD.*", "Tagbar.*"]
let g:list_of_normal_keys = ["h", "j", "k", "l", "-", "+"]
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
"BUFFERLINE SETTINGS
let bufferline_active_buffer_left = ''
let bufferline_active_buffer_right = ''
let g:bufferline_modified = ' '
let g:bufferline_echo = 0
"ALE OPTIONS
let g:ale_linters = {
      \   'cpp': ['g++'],
      \   'java': ['javac']
      \}
"EASY-ALIGN SETTINGS
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"INDENT CONFIG
let g:indentLine_char = ''
let g:indentLine_enabled = 1

"AUTOFORMATTING OPTIONS
let g:formatdef_my_cpp = '"clang-format -style=Google"'
let g:formatters_cpp = ['my_cpp']

"DEOPLETE ENABLE AT STARTUP
let g:deoplete#enable_at_startup = 1
let g:echodoc#enable_at_startup = 1

"NEOCOMPLETE SETTINGS

" Plugin key-mappings.
" SuperTab like snippets behavior.

" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <S-TAB>     <Plug>(neosnippet_expand_or_jump)
imap <expr><TAB>
\ pumvisible() ? "\<C-n>" :
\ neosnippet#expandable_or_jumpable() ?
\    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

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
set shortmess=aAIsT

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
"LEADING TABS USING
" hi VertSplit ctermbg=bg ctermfg=bg

" AUTOCOMMANDS
"git commit messages wrapping and spell checking
autocmd Filetype gitcommit setlocal spell textwidth=72
"Disable auto-commenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"opens file on last edited line
autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \ exe "normal! g`\"" |
      \ endif
"clears whitespaces before writing
autocmd BufWritePre * %s/\s\+$//e

"REMAPPING
"Turns off highlighting for searches after esc
nnoremap <silent><esc> :noh<return><esc>

let mapleader = "\<Space>"
"Copying without leading namespace
map <Leader> <Plug>(easymotion-prefix)
nnoremap <silent><Leader>yy ^yg_
"Pasting in newline (p below and P above)
nnoremap <silent><Leader>p :pu<CR>
nnoremap <silent><Leader>P :pu!<CR>
"Turning on undotree
nnoremap <silent>,u :UndotreeToggle<CR>
nnoremap <silent>,b :Buffers<CR>
nnoremap <silent>,/ :Files<CR>
nnoremap <silent>,g :Goyo<CR>
nnoremap <silent>,f :NERDTreeToggle<CR>
nnoremap <silent>,t :TagbarToggle<CR>
nnoremap <silent><Leader>R :%s/<c-r><c-w>//gI<c-f>$F/i
nnoremap <silent><Leader>r :%s/\<<c-r><c-w>\>//gI<c-f>$F/i
"Remap to alt
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
"Closing buffer
nnoremap <Leader>x :bd<cr>
"Moving line up/down with arrows
nnoremap <Up>   :<C-u>silent! move-2<CR>==
nnoremap <Down> :<C-u>silent! move+<CR>==
"Move arguments left and right
nnoremap <silent><Left> :SidewaysLeft<cr>
nnoremap <Right> :SidewaysRight<cr>
