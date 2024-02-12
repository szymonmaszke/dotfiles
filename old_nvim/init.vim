scriptencoding utf-8

"{{{ IDEAS
" Configure bookmarks
"}}}

" PLUGINS {{{
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

call plug#begin()
" TEMP
Plug 'dense-analysis/ale'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"                       SYNTAX HIGHLIGHTING
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'sheerun/vim-polyglot'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"               COC.NVIM (COMPLETION, FIXERS, LINTING, LSP)
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Main plugin
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Python Sphynx completion
Plug 'stsewd/sphinx.nvim', { 'do': ':UpdateRemotePlugins' }

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"                               OTHER
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show vim keys
Plug 'liuchengxu/vim-which-key'
Plug 'rhysd/git-messenger.vim'
Plug 'ncm2/float-preview.nvim'
Plug 'pearofducks/ansible-vim'
" Interactive REPL for scratchpad
Plug 'metakirby5/codi.vim'
Plug 'fidian/hexmode'
Plug 'TaDaa/vimade'
Plug 'jparise/vim-graphql'
Plug 'tweekmonster/startuptime.vim'
" Preview of markdown files
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}
" CONFIGURE (file searching with regex and ag)
" Can be made for project wide replacements etc.
" Plug 'eugen0329/vim-esearch'
" Display from which version specific command is available"
Plug 'tweekmonster/helpful.vim'
" Recording of vim session
Plug 'chrisbra/Replay'
Plug 'davidhalter/jedi-vim'
" Plug 'szymonmaszke/vimpyter'
" Markdown syntax"
Plug 'tpope/vim-markdown'
Plug 'tyru/markdown-codehl-onthefly.vim'
Plug 'unblevable/quick-scope'
" MORE TARGETS FOR PARENTHESES ETC. <CONFIGURE>
" Plug 'wellle/targets.vim'
" Color next letters after f, F, t, T"
" Plug 'deris/vim-shot-f'
Plug 'farmergreg/vim-lastplace'
Plug 'jiangmiao/auto-pairs'
"MOVE FILE WITH IT'S HISTORY, SHELL SCRIPTS MADE EXECUTABLE, RENAME ETC.
Plug 'tpope/vim-eunuch'
" Plug 'paradigm/TextObjectify'
" Plug 'tenfyzhong/CompleteParameter.vim'
"IF FILE CHANGED ON DISK IT'S FINE, JUST RELOAD VIM
Plug 'vim-utils/vim-interruptless'
"HIGHLIGHT CURRENT WORD
Plug 'osyo-manga/vim-brightest'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'christoomey/vim-tmux-navigator'

" ALLOWS FOR RECOGNITION OF NESTED FILETYPES (JAVASCRIPT IN HTML ETC.)
Plug 'Shougo/neco-vim'
Plug 'wellle/tmux-complete.vim'

" POST GISTS TO GITHUB
Plug 'mattn/gist-vim'
Plug 'ap/vim-buftabline'
" HANDLE BUFFER CLOSING BETTER
Plug 'moll/vim-bbye'
" HIGHLIGHT UNDOS
Plug 'machakann/vim-highlightedundo'
" BETTER EDITING FOR COMMIT MESSAGES
Plug 'rhysd/committia.vim'
" USING DOT WITH PLUGINS
Plug 'tpope/vim-repeat'
"GENERATE DOCUMENTATION FOR FUNCTIONS CLASSES ETC. AUTOMATICALLY
"SNIPPETS MENU
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"GITHUB LIKE FUGITIVE
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-fugitive'

" LIGHTLINE FAMILY
Plug 'itchyny/lightline.vim'

Plug 'eapache/rainbow_parentheses.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'junegunn/vim-easy-align'
"TAGS AND MANAGEMENT
Plug 'ludovicchabant/vim-gutentags'
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'octol/vim-cpp-enhanced-highlight', { 'for': 'cpp' }
"BETTER REGEX, SWAPS, REPLACES ETC.
Plug 'tpope/vim-abolish'
"CHANGING OF BRACES, SURROUNDS ETC.
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'mhinz/vim-startify'
"Displays ident lines
Plug 'Yggdroot/indentLine'
"COLORTHEMES
Plug 'morhetz/gruvbox'
"RESIZING WHEN MULTIPLE WINDOWS USED
Plug 'justincampbell/vim-eighties'
"REPEAT f,F,t,T for next letters
Plug 'rhysd/clever-f.vim'
"VIM SCROLLING
Plug 'psliwka/vim-smoothie'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'AndrewRadev/sideways.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'ryanoasis/vim-devicons'
" FINALLY GOOD DOCUMENTATION PLUGIN <3
Plug 'kkoomen/vim-doge'
Plug 'adelarsq/vim-emoji-icon-theme'
Plug 'arp242/auto_mkdir2.vim'

call plug#end()
" }}}

" LOAD NEOVIM CONFIGURATION FILES {{{
source $HOME/.config/nvim/settings/vim-plug.vim
source $HOME/.config/nvim/settings/paths.vim
source $HOME/.config/nvim/settings/neovim.vim
source $HOME/.config/nvim/settings/autocommands.vim
source $HOME/.config/nvim/settings/mappings.vim
source $HOME/.config/nvim/settings/file-specific.vim
" }}}

" LOAD LANGUAGE SPECIFIC COMMANDS {{{
source $HOME/.config/nvim/settings/languages/latex.vim
source $HOME/.config/nvim/settings/languages/vim.vim
source $HOME/.config/nvim/settings/languages/python.vim
source $HOME/.config/nvim/settings/languages/ipynb.vim
" }}}

" PLUGINS CONFIGURATION FILES {{{
source $HOME/.config/nvim/settings/plugins/coc.vim
source $HOME/.config/nvim/settings/plugins/float-preview.vim
source $HOME/.config/nvim/settings/plugins/vim-markdown.vim
source $HOME/.config/nvim/settings/plugins/jedi.vim
source $HOME/.config/nvim/settings/plugins/lightline.vim
source $HOME/.config/nvim/settings/plugins/rainbow_parentheses.vim
source $HOME/.config/nvim/settings/plugins/vim-gitgutter.vim
source $HOME/.config/nvim/settings/plugins/undotree.vim
source $HOME/.config/nvim/settings/plugins/fzf.vim
source $HOME/.config/nvim/settings/plugins/indentline.vim
source $HOME/.config/nvim/settings/plugins/python-syntax.vim
source $HOME/.config/nvim/settings/plugins/vim-surround.vim
" source $HOME/.config/nvim/settings/plugins/vim-easymotion.vim
" source $HOME/.config/nvim/settings/plugins/vimpyter.vim
" source $HOME/.config/nvim/settings/plugins/sideways.vim
source $HOME/.config/nvim/settings/plugins/codi.vim
source $HOME/.config/nvim/settings/plugins/ale.vim
source $HOME/.config/nvim/settings/plugins/vimade.vim
source $HOME/.config/nvim/settings/plugins/helpful.vim
source $HOME/.config/nvim/settings/plugins/markdown-preview.vim
source $HOME/.config/nvim/settings/plugins/quickscope.vim
source $HOME/.config/nvim/settings/plugins/vim-brightest.vim
source $HOME/.config/nvim/settings/plugins/vim-highlightedundo.vim
source $HOME/.config/nvim/settings/plugins/vim-highlightedyank.vim
source $HOME/.config/nvim/settings/plugins/clever-f.vim
source $HOME/.config/nvim/settings/plugins/vim-which-key.vim
source $HOME/.config/nvim/settings/plugins/vim-doge.vim
" }}}
