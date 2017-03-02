export TERM=xterm-256color
# setting polish signs
setxkbmap 'pl'
# remapping of caps-lock to esc
xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
#turning off touchpad
synclient TouchpadOff=1
#faster fzf
# --files: List files that would be searched but do not search
# --no-ignore: Do not respect .gitignore, etc...
# --hidden: Search hidden files and folders
# --follow: Follow symlinks
# --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)

export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
#DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

#ZSH_THEME="powerlevel9k/powerlevel9k"ZSH_THEME="powerlevel9k/powerlevel9k" Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
#COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(gitfast git-extras git-flow-avh git-hubflow docker python vi-mode)

ZSH_THEME="agnoster"
DEFAULT_USER=`whoami`

#ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE=7

#ALIASES

alias logo='screenfetch | lolcat'

#PACMAN AIASES
alias update='sudo pacman -Syu'
alias remove='sudo pacman -Rs'
alias get='sudo pacman -S'
alias pacmanRemoveOrphans='sudo pacman -Rns $(pacman -Qttdg)' #REMOVES OPRHAN PACKAGES
alias pacmanListInstalled='comm -23 <(pacman -Qeq | sort) <(pacman -Qgq base base-devel | sort)'
alias pacmanOptimize='sudo pacman-optimize'
alias pacmanRemoveCache='sudo pacman -Sc'
alias updateMirrors='sudo reflector --verbose -l 20 --sort rate --save /etc/pacman.d/mirrorlist'

#NEOVIM ALIASES
alias e='nvim'
#alias eb='nvim ~/.bashrc'
alias ez='nvim ~/.zshrc'
alias eg='nvim ~/.gitconfig'
alias en='nvim ~/.config/nvim/init.vim'
alias eu='nvim ~/.Xresources'
alias ex='nvim ~/.xinitrc'
alias ei='nvim ~/.config/i3/config'
alias et='nvim ~/.config/termite/config'
alias ep='nvim ~/.config/polybar/config'
alias se='sudo nvim'

#MySQL aliases
alias updateMySQL='mysql_upgrade -u root -p'
alias mysqlRoot='mysql -p -u root'

#Octave aliases
alias octave='octave --no-gui'

#JUnit SceneBuilder JNI aliases
alias junitc='javac -cp .:/usr/share/java/junit-4.12.jar'
alias junit='java -cp .:/usr/share/java/junit-4.12.jar:/usr/share/java/hamcrest-core.jar org.junit.runner.JUnitCore'
alias sb='javafx-scenebuilder 2>/dev/null >/dev/null &'
alias jni='gcc -shared -fPIC -I /usr/lib/jvm/java-8-openjdk/include -I /usr/lib/jvm/java-8-openjdk/include/linux/'

#BASIC COMMANDS ALIASES
alias rmf='rm -rf'
alias c='clear'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias grep='grep --color=auto'
alias mkdir='mkdir -pv' #MAKES NEEDED FOLDERS RECURSIVELY

#SYSTEM ALIASES
alias restart='sudo reboot'
alias off='sudo poweroff'
alias src='source ~/.zshrc'
alias sudo='sudo '
alias lock='/home/hx/scripts/lock/lock'
#PROGRAMS ALIASES
alias connect='sudo wifi-menu'
alias firefox='firefox >/dev/null 2>/dev/null &'
alias spotify='spotify >/dev/null 2>/dev/null &'
alias music='spotify >/dev/null 2>/dev/null &'
alias xmind='XMind >/dev/null 2>/dev/null &'
alias libreoffice='libreoffice >/dev/null 2>/dev/null &'
alias license='boilr template use license'

#XML VALIDATION
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

#PROJECT ALIASES
alias numerics='cd ~/projects/numerics'

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

ZSH_CACHE_DIR=$HOME/.oh-my-zsh-cache
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
