scriptencoding utf-8

let g:mapleader = "\<Space>"

" Easier indentation - does dot loose selection
vnoremap > >gv
vnoremap < <gv
" Quick command mode (second binding to get find next)
nnoremap ; :
vnoremap ; :
nnoremap ' ;
vnoremap ' ;

"COPY FROM CURSOR TO THE END OF LINE
noremap Y y$
"CHANGE DIRECTORY INSIDE VIM
nnoremap <tab>d :cd %:p:h<CR>:pwd<cr>
nnoremap <tab>h :cd $HOME<CR>:pwd<cr>

" COMMAND LINE REMAPS
" GO TO THE BEGINNING OF LINE IN COMMAND LINE MODE
cnoremap <C-a> <Home>
cnoremap <C-B> <Left>
"MOVE THROUGH HISTORY
cmap <M-k> <Up>
cmap <M-j> <Down>
" In command mode, type %% to insert the path of the currently edited file, as a shortcut for %:h<tab>.
" cmap %% <C-R>=expand("%:h") . "/" <CR>

" Select the text that was last edited/pasted.
" http://vimcasts.org/episodes/bubbling-text/
nmap gV `[v`]

"EXIT WITHOUT SAVING
nnoremap Q :q!<CR>
" B and E for begin and end line
nnoremap H ^
nnoremap L $
" Ctrl-hjkl in insert mode
inoremap <C-h> <Esc>hi
inoremap <C-j> <Esc>ji
inoremap <C-k> <Esc>ki
inoremap <C-l> <Esc>li
" Ctrl-e end of line Ctrl-b beginning
inoremap <C-H> <C-o>0
inoremap <C-L> <C-o>$
"Turns off highlighting for searches after esc
nnoremap <silent><esc> :noh<return><esc>

" OPEN DOCUMENTATION ALWAYS IN NEW TAB
nnoremap <silent>K :execute 'tab ' . &keywordprg . ' ' . expand("<cword>")<CR>

nnoremap <silent><Leader>q ZZ<cr>
"FOLDING/UNFOLDING WITH Z (UNFOLD EVERYTHING) AND z (UNFOLD CURRENT)
nnoremap Z za
nnoremap z zA
nnoremap <silent><Leader>z :let &foldlevel = &foldlevel==0 ? &foldnestmax : 0<CR>

" REPLACE ALL OCCURRENCES OF WORD
nnoremap <silent><Leader>R :%s/\<<c-r><c-w>\>//gI<c-f>$F/i

"Remap to alt (moving between buffers and tabs)
nnoremap <silent><M-h> :bp<CR>
nnoremap <silent><M-l> :bn<CR>
nnoremap <silent><M-k> :tabnext<CR>
nnoremap <silent><M-j> :tabprevious<CR>
"Fast saving
nnoremap <silent><Leader>w :w!<CR>
"Closing buffer
nnoremap <Leader>x :Bdelete<CR>

"Moving line up/down with arrows
nnoremap <silent><C-Up>   :<C-u>silent! move-2<CR>==
nnoremap <silent><C-Down> :<C-u>silent! move+<CR>==
