export TERM=xterm-256color
# setting polish signs
setxkbmap 'pl'
# remapping of caps-lock to esc
xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
clear

# Path to your oh-my-zsh installation.
export ZSH=/home/hx/.config/oh-my-zsh

ZSH_THEME="foo"
DEFAULT_USER="hx"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=/home/hx/.config/custom_zsh

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-autosuggestions gitfast docker zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

#Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='vi'
fi

export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# ZSH SYNTAX HIGHLIGHTING
# Declare the variable
typeset -A ZSH_HIGHLIGHT_STYLES

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets line)

ZSH_HIGHLIGHT_STYLES[path]='fg=4,bold'
ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=4,bold'

ZSH_HIGHLIGHT_STYLES[alias]='fg=magenta,bold'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=1,bold'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=magenta,bold'
ZSH_HIGHLIGHT_STYLES[command]='fg=1,bold'
ZSH_HIGHLIGHT_STYLES[function]='fg=1,bold'

ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=22,bold'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=22,bold'

ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=94'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=94'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=94'
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=94'

ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=27,bold'
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg=27,bold'
ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]='fg=27,bold'

ZSH_HIGHLIGHT_STYLES[assign]='fg=160,bold'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=160,bold'

#brackets
ZSH_HIGHLIGHT_STYLES[bracket-level-1]='fg=magenta,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-2]='fg=27,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-3]='fg=202,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-4]='fg=28,bold'

ZSH_HIGHLIGHT_STYLES[bracket-error]='fg=160,bold'







# To disable highlighting of globbing expressions
ZSH_HIGHLIGHT_STYLES[globbing]='none'


#COMMANDS
xml(){
	xmllint --noout "$1" 2>&1 >/dev/null || exit 1
}

dtd(){
	xmllint --noout --dtdvalid "$2" "$1" 2>&1 >/dev/null || exit 1
}

xsd(){
	xmllint --noout --schema "$2" "$1" 2>&1 >/dev/null || exit 1
}



#NIGHT CHANGER
night(){
	redshift &
	light -S -p 2
}

pdf(){
	apvlv "$1" >/dev/null 2>&1 &
}

ZSH_CACHE_DIR=$HOME/.oh-my-zsh-cache
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
