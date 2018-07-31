scriptencoding utf-8

" PLUGINS {{{
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

call plug#begin()
Plug 'sgur/vim-editorconfig'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'
Plug 'jparise/vim-graphql'
Plug 'tweekmonster/startuptime.vim'
" MATCH function endfunciton AND OTHER LANGUAGE SPECIFIC KEYWORDS (configure)
Plug 'andymass/vim-matchup'
" CONFIGURE (file searching with regex and ag)
Plug 'eugen0329/vim-esearch'
Plug 'tweekmonster/helpful.vim'
Plug 'vyzyv/vimpyter'
Plug 'chrisbra/Replay'
Plug 'davidhalter/jedi-vim'
Plug 'tpope/vim-markdown'
" EXPAND REGION WITH VISUAL SELECTION
Plug 'terryma/vim-expand-region'
" MORE TARGETS FOR PARENTHESES ETC. <CONFIGURE>
Plug 'wellle/targets.vim'
"CORRECT PASTING
Plug 'sickill/vim-pasta'
Plug 'deris/vim-shot-f'
Plug 'bradford-smith94/quick-scope'
Plug 'farmergreg/vim-lastplace'
Plug 'jiangmiao/auto-pairs'
"MOVE FILE WITH IT'S HISTORY, SHELL SCRIPTS MADE EXECUTABLE, RENAME ETC.
Plug 'tpope/vim-eunuch'
Plug 'haya14busa/vim-edgemotion'
Plug 'vim-python/python-syntax'
Plug 'derekwyatt/vim-scala'
Plug 'elzr/vim-json'
Plug 'paradigm/TextObjectify'
Plug 'Shougo/echodoc.vim'
" Plug 'tenfyzhong/CompleteParameter.vim'
"IF FILE CHANGED ON DISK IT'S FINE, JUST RELOAD VIM
Plug 'vim-utils/vim-interruptless'
"HIGHLIGHT CURRENT WORD
Plug 'osyo-manga/vim-brightest'
Plug 'duckwork/limelight.vim'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'christoomey/vim-tmux-navigator'

" ALLOWS FOR RECOGNITION OF NESTED FILETYPES (JAVASCRIPT IN HTML ETC.)
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
Plug 'ekalinin/Dockerfile.vim'
" BETTER LOG SYNTAX
Plug 'andreshazard/vim-logreview'
" HIGHLIGHT UNDOS
Plug 'machakann/vim-highlightedundo'
Plug 'lervag/vimtex'
" PLUGIN FOR QUICK LATEX WRITING
Plug 'brennier/quicktex'
" PLUGIN FOR LIVE ASYNCHRONOUS PREVIEW OF LATEX FILES
Plug 'donRaphaco/neotex', { 'for': 'tex' }
" BETTER EDITING FOR COMMIT MESSAGES
Plug 'rhysd/committia.vim'
" USING DOT WITH PLUGINS
Plug 'tpope/vim-repeat'
Plug 't9md/vim-choosewin'
"GENERATE DOCUMENTATION FOR FUNCTIONS CLASSES ETC. AUTOMATICALLY
Plug 'heavenshell/vim-pydocstring'
"BETTER FOLDING FOR PYTHON
Plug 'pseewald/vim-anyfold'
"SNIPPETS MENU
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"GITHUB LIKE FUGITIVE
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-fugitive'

" LIGHTLINE FAMILY
Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'

Plug 'eapache/rainbow_parentheses.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'junegunn/vim-easy-align'
"TAGS AND MANAGEMENT
Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }

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

"LOAD LAST ALWAYS
Plug 'ryanoasis/vim-devicons'

call plug#end()


" }}}

" LOAD NEOVIM CONFIGURATION FILES {{{
source $HOME/.config/nvim/settings/vim-plug.vim
source $HOME/.config/nvim/settings/neovim.vim
source $HOME/.config/nvim/settings/autocommands.vim
source $HOME/.config/nvim/settings/mappings.vim
source $HOME/.config/nvim/settings/other.vim
" }}}

" LOAD LANGUAGE SPECIFIC COMMANDS {{{
source $HOME/.config/nvim/settings/languages/latex.vim
source $HOME/.config/nvim/settings/languages/vim.vim
source $HOME/.config/nvim/settings/languages/python.vim
" }}}

" PLUGINS CONFIGURATION FILES {{{
source $HOME/.config/nvim/settings/plugins/vim-markdown.vim
source $HOME/.config/nvim/settings/plugins/jedi.vim
source $HOME/.config/nvim/settings/plugins/edgemotion.vim
source $HOME/.config/nvim/settings/plugins/echodoc.vim
source $HOME/.config/nvim/settings/plugins/deoplete.vim
source $HOME/.config/nvim/settings/plugins/lightline.vim
source $HOME/.config/nvim/settings/plugins/rainbow_parentheses.vim
source $HOME/.config/nvim/settings/plugins/vim-gitgutter.vim
source $HOME/.config/nvim/settings/plugins/easy-align.vim
source $HOME/.config/nvim/settings/plugins/tagbar.vim
source $HOME/.config/nvim/settings/plugins/undotree.vim
source $HOME/.config/nvim/settings/plugins/fzf.vim
source $HOME/.config/nvim/settings/plugins/ale.vim
source $HOME/.config/nvim/settings/plugins/indentline.vim
source $HOME/.config/nvim/settings/plugins/python-syntax.vim
source $HOME/.config/nvim/settings/plugins/vim-pydocstring.vim
source $HOME/.config/nvim/settings/plugins/vimtex.vim
source $HOME/.config/nvim/settings/plugins/vim-choosewin.vim
source $HOME/.config/nvim/settings/plugins/vim-anyfold.vim
source $HOME/.config/nvim/settings/plugins/neotex.vim
source $HOME/.config/nvim/settings/plugins/TextObjectify.vim
source $HOME/.config/nvim/settings/plugins/vim-surround.vim
source $HOME/.config/nvim/settings/plugins/vim-easymotion.vim
source $HOME/.config/nvim/settings/plugins/vimpyter.vim
source $HOME/.config/nvim/settings/plugins/sideways.vim
source $HOME/.config/nvim/settings/plugins/vim-highlightedundo.vim
" }}}
