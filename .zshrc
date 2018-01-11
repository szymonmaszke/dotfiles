# If you come from bash you might have to change your $PATH.

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.config/oh-my-zsh
export PAGER=/usr/bin/vimpager
export ML2018NAME="Maszke"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"
eval "$(pipenv --completion)"
eval "$(hub alias -s)"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-autosuggestions enhancd gitfast docker alias-tips zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration
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

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

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

#AWESOME FZF !!!
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS='-m --no-height --bind alt-j:down,alt-k:up,ctrl-a:select-all,page-up:preview-page-up,page-down:preview-page-down'
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow 2>/dev/null'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_R_COMMAND='rg --files --no-ignore --hidden --follow'
export FZF_CTRL_R_OPTS="--preview 'parse_to_man {}'"
export FZF_ALT_C_OPTS="--preview 'tree -C -h {}'"
bindkey  -s '^p' 'nvim $(fzf --preview "rougify --theme molokai -i {}")^M'
bindkey '^ ' autosuggest-accept

fzf-history-widget-accept() {
  fzf-history-widget
  zle accept-line
}

zle     -N     fzf-history-widget-accept
bindkey '^X' fzf-history-widget-accept

#FUNCTIONS
function list_all() {
    emulate -L zsh
    colorls --sort-dirs
}
chpwd_functions=(${chpwd_functions[@]} "list_all")

if [[ -z "${BOOKMARKS_FILE}" ]] ; then
    export BOOKMARKS_FILE="${HOME}/.bookmarks"
fi

if [[ ! -f "${BOOKMARKS_FILE}" ]]; then
    touch "${BOOKMARKS_FILE}"
fi

if [[ -z "${FZF_MARKS_COMMAND}" ]] ; then

    FZF_VERSION=$(fzf --version | awk -F. '{ print $1 * 1e6 + $2 * 1e3 + $3 }')
    MINIMUM_VERSION=16001

    if [[ $FZF_VERSION -gt $MINIMUM_VERSION ]]; then
        FZF_MARKS_COMMAND="fzf --height 40% --reverse"
    elif [[ ${FZF_TMUX:-1} -eq 1 ]]; then
        FZF_MARKS_COMMAND="fzf-tmux -d${FZF_TMUX_HEIGHT:-40%}"
    else
        FZF_MARKS_COMMAND="fzf"
    fi

    export FZF_MARKS_COMMAND
fi

function mark() {
    local mark_to_add
    mark_to_add=$(echo "$* : $(pwd)")
    echo "${mark_to_add}" >> "${BOOKMARKS_FILE}"

    echo "** The following mark has been added **"
    echo "${mark_to_add}"
}

function handle_symlinks() {
    local fname
    if [ -L "${BOOKMARKS_FILE}" ]; then
        fname=$(readlink "${BOOKMARKS_FILE}")
    else
        fname=${BOOKMARKS_FILE}
    fi
    echo "${fname}"
}

function jump() {
    local jumpline jumpdir bookmarks
    jumpline=$($(echo ${FZF_MARKS_COMMAND}) --bind=ctrl-y:accept --tac < "${BOOKMARKS_FILE}")
    if [[ -n ${jumpline} ]]; then
        jumpdir=$(echo "${jumpline}" | sed -n "s/.* : \(.*\)$/\1/p" | sed "s#~#${HOME}#")
        bookmarks=$(handle_symlinks)
        perl -p -i -e "s#${jumpline}\n##g" "${bookmarks}"
        cd "${jumpdir}" && echo "${jumpline}" >> "${BOOKMARKS_FILE}"
    fi
    zle && zle reset-prompt
}

function dmark()  {
    local marks_to_delete line bookmarks
    marks_to_delete=$($(echo ${FZF_MARKS_COMMAND}) -m --bind=ctrl-y:accept,ctrl-t:toggle --tac < "${BOOKMARKS_FILE}")
    bookmarks=$(handle_symlinks)

    if [[ -n ${marks_to_delete} ]]; then
        while read -r line; do
            perl -p -i -e "s#${line}\n##g" ${bookmarks}
        done <<< "$marks_to_delete"

        echo "** The following marks have been deleted **"
        echo "${marks_to_delete}"
    fi
}

zle -N jump
bindkey '^g' jump

### Bashhub.com Installation
if [ -f ~/.bashhub/bashhub.zsh ]; then
    source ~/.bashhub/bashhub.zsh
fi

