function! DoRemote(arg)
	UpdateRemotePlugins
endfunction

call plug#begin()
Plug 'bronson/vim-trailing-whitespace'
Plug 'itchyny/lightline.vim'
Plug 'edkolev/promptline.vim'
Plug 'neomake/neomake'
Plug 'luochen1990/rainbow'
Plug 'Shougo/deoplete.nvim', {'do': function('DoRemote')}
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
"C FAMILY AUTOCOMPLETION
Plug 'zchee/deoplete-clang'
Plug 'tomasr/molokai'
Plug 'Mizuchi/STL-Syntax'
"PYTHON AUTOCOMPLETION
Plug 'zchee/deoplete-jedi'
"JAVA AUTOCOMPLETION
"Plug 'artur-shaik/vim-javacomplete2'
Plug 'jvirtanen/vim-octave'
call plug#end()

"THEMES
let g:airline_theme='molokai'
colorscheme molokai

"RAINBOW PARENTHESES
let g:rainbow_active=1
let g:cpp_class_scope_highlight=1
"let g:rainbow_conf={
"			\'separately':{
"			\	'cpp':{
"			\		'parentheses':[
"			\			'start=/(/ end=/)/ fold',
"			\			'start=/\[/ end=/\]/ fold',
"			\			'start=/{/ end=/}/ fold',
"			\			'start=/\(\(\<operator\>\)\@<!<\)\&[a-zA-Z0-9_]\@<=<\ze[^<]/ end=/>/']}}}

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

"OCTAVE CONFIGURATION
augroup filetypedetect
	au! BufRead, BufNewFile *.m, set filetype=octave
augroup END
autocmd FileType octave map <buffer> <f5> gg0pkg load all<esc>Gopause<esc>:w<cr>:!octave -gf %<cr>ddggdd:w<cr>

"NEOVIM SETTINGS
set number
set tabstop=2
set shiftwidth=2
set relativenumber
set vb
set clipboard=unnamed
"80 chars marker line
set cc=80
"DEFAULT MODE IS INVISBLE
set noshowmode
"SETTINGS FOR LIGHTLINE TO BE DONE
let g:lightline={
			\'colorscheme':'powerline',
			\}
