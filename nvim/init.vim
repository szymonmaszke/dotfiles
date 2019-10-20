scriptencoding utf-8

"{{{ IDEAS
" Add pwd to lightline (maybe shorten)
" Add column to lightline (why did I remove it in the first place...)
" Add recording status to lightline (and how many recordings available), improve recording mappings (make it silent etc.)
" Configure bookmarks
"}}}

" PLUGINS {{{
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

call plug#begin()
" Show vim keys
Plug 'liuchengxu/vim-which-key'
Plug 'rhysd/git-messenger.vim'
Plug 'ncm2/float-preview.nvim'
Plug 'rhysd/git-messenger.vim'
Plug 'pearofducks/ansible-vim'
" Interactive REPL for scratchpad
Plug 'metakirby5/codi.vim'
Plug 'fidian/hexmode'
Plug 'TaDaa/vimade'
Plug 'jparise/vim-graphql'
Plug 'tweekmonster/startuptime.vim'
" Preview of markdown files
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}
" MATCH function endfunction AND OTHER LANGUAGE SPECIFIC KEYWORDS (configure)
" Use % to jump between matching objects
Plug 'andymass/vim-matchup'
" CONFIGURE (file searching with regex and ag)
" Can be made for project wide replacements etc.
Plug 'eugen0329/vim-esearch'
" Display from which version specific command is available"
Plug 'tweekmonster/helpful.vim'
" Recording of vim session
Plug 'chrisbra/Replay'
Plug 'davidhalter/jedi-vim'
" Plug '~/projects/vimpyter'
Plug 'szymonmaszke/vimpyter'
" Markdown syntax"
Plug 'tpope/vim-markdown'
Plug 'tyru/markdown-codehl-onthefly.vim'
Plug 'unblevable/quick-scope'
" MORE TARGETS FOR PARENTHESES ETC. <CONFIGURE>
Plug 'wellle/targets.vim'
" Color next letters after f, F, t, T"
" Plug 'deris/vim-shot-f'
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
Plug 'rhysd/clever-f.vim'
"VIM SCROLLING
Plug 'yuttie/comfortable-motion.vim'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'AndrewRadev/sideways.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'ryanoasis/vim-devicons'

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
source $HOME/.config/nvim/settings/plugins/float-preview.vim
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
source $HOME/.config/nvim/settings/plugins/neotex.vim
source $HOME/.config/nvim/settings/plugins/TextObjectify.vim
source $HOME/.config/nvim/settings/plugins/vim-surround.vim
source $HOME/.config/nvim/settings/plugins/vim-easymotion.vim
source $HOME/.config/nvim/settings/plugins/vimpyter.vim
source $HOME/.config/nvim/settings/plugins/sideways.vim
source $HOME/.config/nvim/settings/plugins/codi.vim
source $HOME/.config/nvim/settings/plugins/vimade.vim
source $HOME/.config/nvim/settings/plugins/helpful.vim
source $HOME/.config/nvim/settings/plugins/markdown-preview.vim
source $HOME/.config/nvim/settings/plugins/quickscope.vim
source $HOME/.config/nvim/settings/plugins/vim-brightest.vim
source $HOME/.config/nvim/settings/plugins/vim-highlightedundo.vim
source $HOME/.config/nvim/settings/plugins/vim-highlightedyank.vim
source $HOME/.config/nvim/settings/plugins/clever-f.vim
source $HOME/.config/nvim/settings/plugins/vim-which-key.vim
" }}}
