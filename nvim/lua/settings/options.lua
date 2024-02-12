-- CREATE DIRECTORIES LIKE BACKUP!
-- Automatically change directory to the currently opened buffer
vim.opt.autochdir = true
-- Automatically write file on common operations like buffer switch
-- Superset of autowrite including exits
vim.opt.autowriteall = true
-- Allow backspacing over everything in insert mode
vim.opt.backspace = { "indent", "eol", "nostop" }
-- Indent when breaking up lines (wrapped lines)
-- Only matters if text wrapping enabled 
vim.opt.breakindent = true
-- Browsing files when empty vim opened will start from current path
-- vim.opt.browsedir= "buffer"
-- Set clipboards register (might need to check with Docker and clipboard sharing)
-- Requires clipboard sharing: https://stackoverflow.com/questions/41703070/docker-container-sharing-clipboard-with-host
vim.opt.clipboard = "unnamed,unnamedplus"
-- See color of 80th column
-- Workaround for lua to create color and assign it afterwards
-- vim.highlight.create("ColorColumn", {ctermbg=0, guibg=red}, false)
-- vim.opt.colorcolumn = "ColorColumn"
-- Color for column and line making "scope-like" where you are
vim.opt.cursorcolumn = true
vim.opt.cursorline = true
-- Hightlight line and it's number
vim.opt.cursorlineopt = "both"
-- Vim diff options (extended default set of options)
vim.opt.diffopt:append { "iwhiteall", "vertical", "followwrap", "algorithm:minimal" }
-- Swap directory in mounted container
vim.opt.directory = "/swap//"
-- Use appropriate number of spaces for Tab
vim.opt.expandtab = true
-- Automatically open/close folds when moving into them
vim.opt.foldclose = "all"
-- Open all folds by default
vim.opt.foldlevelstart = 99
-- Which commands open folds
vim.opt.foldopen = "all"
-- Ignore case during search
vim.opt.ignorecase = true
-- Keep updates in buffer instead of redrawing screen all the time
vim.opt.lazyredraw = true
-- Disable backup files
vim.opt.backup = false
-- Print line numbers on the left
vim.opt.number = true
-- Number relative to the current line
vim.opt.relativenumber = true
-- When going out of window scroll +N lines
vim.opt.scrolljump = 10
-- When using >> or << round to shiftwidth
vim.opt.shiftround = true
-- Indentation size
vim.opt.shiftwidth = 2
-- Shorter neovim messages
vim.opt.shortmess = "aoOtWAqF"
-- Show tablines always
vim.opt.showtabline = 2
-- Show next 5 characters when scrolling (like scrolljump)
vim.opt.sidescroll = 5
-- Always display sign column even if not signs displayed
vim.opt.signcolumn = "yes"
-- Pinpointing upper case search only searches uppercase
vim.opt.smartcase = true
-- At the beginning of line use shiftwidth, otherwise softtabstop/tabstop
vim.opt.smarttab = true
-- When moving to next line (and similar commands) will put cursor on first non-blank sign
vim.opt.startofline = true
-- Disable swapfiles (will be kept in memory instead)
-- BAD CHOICE FOR LARGE FILES!
vim.opt.swapfile = false
-- Disable syntax check for too long lines
vim.opt.synmaxcol = 160
-- When searching tags follow smartcase and ignorecase
vim.opt.tagcase = "followscs"
-- Use 24-bit HEX colors instead of cterm
vim.opt.termguicolors = true
-- Set title of the window to filename
vim.opt.title = true
-- Where undo files are kept for files (has to be mounted)
-- vim.opt.undodir = "/undo//"
vim.opt.undodir = "/home/szymonmaszke/.cache/neovim"
-- Undofile is appended after each write (useful for undotree or a-like)
vim.opt.undofile = true
-- Maximum number of undo changes
vim.opt.undolevels = 500
-- Ignore files with this pattern during command line expansion
-- More extensions should be added based on programming language
vim.opt.wildignore:append { "*.o", "*.obj" }
-- Ignore case for matching (no smart-case unfortunately)
vim.opt.wildignorecase = true
-- Do not wrap text when editing
vim.opt.wrap = false
-- Write to any file without !
vim.opt.writeany = true

-- Might be useful:
--
-- Automatically indent for multiple keywords. Might use plugin instead
-- vim.opt.cinwords = "if,else,while,do,for,switch"
--
-- From where completion is taken during CTRL-N, CTRL-P
-- Only from local buffer + tags for example (taken from everywhere otherwise)
-- vim.opt.complete = ".,]"
--
-- Which function is used for insert completion, useful for plugins (?)
-- Other probably useful include: completeslash, completeopt, 
-- vim.opt.completefunc
--
-- How to create folds
-- vim.opt.foldmethod
--
-- Cursor style and colors in various modes
-- vim.opt.guicursor
--
-- Use characters to display tabs & spaces
-- vim.opt.list = true
-- Characters used to display tabs & spaces
-- vim.opt.listchars = "tab:> ,trail:-,nbsp:+"
--
-- Matching parentheses etc. (handled by matchit plugin or a-like)
-- vim.opt.matchpairs
--
-- Most of mouse options turned off by default (seems reasonable)
--
-- Directories used to find lua packages
-- vim.opt.packpath
--
-- Which directories to search when using :find (handled by plugins)
-- vim.opt.path
--
-- Runtime path (configs etc.)
-- vim.opt.runtimepath
-- 
-- Additional settings about tabs might be needed (or plugin)
-- Additional settings about tags might be needed (or plugin)
