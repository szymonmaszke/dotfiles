###############################################################################
#
#                                     SYSTEM
#
###############################################################################


alias sudo='sudo '
alias record='ffmpeg -f x11grab -video_size 1920x1080 -framerate 25 -i $DISPLAY -f alsa -ac 1 -i hw:1,0 -c:v libx264 screen.mp4'

alias present='mons -d'
alias off='shutdown now'
alias restart='shutdown now -r'

###############################################################################
#
#                                   SYSTEM FUNCTIONS
#
###############################################################################

alias c='clear'
alias mv='$HOME/.config/scripts/mv.sh'
alias cp='cp -ri'

# alias l='ls_extended -s'
# alias lf='ls_extended -f'
# alias la='ls_extended -Aslhi'

# alias ls='ls_extended -s'
alias cat='bat'

alias jn='jupyter notebook'

###############################################################################
#
#                                   CONFIG FILES
#
###############################################################################

alias en='nvim ~/.config/nvim/init.vim'
alias ea='nvim ~/.config/oh-my-zsh/custom/aliases.zsh'
alias ez='nvim ~/.zshrc'
alias et='nvim ~/.config/termite/config'
alias ei='nvim ~/.config/i3/config'
alias ep='nvim ~/.config/polybar/config'
alias ex='nvim ~/.xinitrc'

###############################################################################
#
#                                     PROGRAMS
#
###############################################################################

# Neovim
alias e='nvim'
alias se='sudo -E nvim'

# Tar.gz aliases
alias unpack='tar xvzf'
alias pack='tar zcvf'

# Compiling
alias g++='g++ -march=native -std=c++17 -O2 -Werror -Wextra -Wall -Weffc++ -Wnarrowing'
alias r='rtichoke'

# Other programs
alias yt='youtube-viewer'
alias qjup='kill $(pgrep jupyter)'

###############################################################################
#
#                                     PACMAN
#
###############################################################################

alias pup='rm -rf /home/vyz/.cache/pikaur/build/universal-ctags-git/src/testhome && pikaur -Syyu --noconfirm && gem update'
alias pcc='pikaur -Scc'
alias pget='pikaur -S'
alias prm='pikaur -Rns'
alias pls='pikaur -Qe'

###############################################################################
#
#                                     GIT
#
###############################################################################

alias gsa='git submodule add'
alias gsinit='git submodule init'
alias gsup='git submodule update'
alias git='hub'
#revert last commit
alias grlc='hub reset HEAD~'
alias gp='hub push -u origin $(git rev-parse --abbrev-ref HEAD)'

###############################################################################
#
#                                     DOCKER
#
###############################################################################

# Images
alias di="docker image" # General for docker images

alias dib="docker image build" # Build docker image
alias dil="docker image ls" # List docker images (check --help)
alias dip="docker image push" # Push NAME image
alias dirm="docker image rm" # Remove NAME image
alias dirmall="docker image prune -a" # Remove all images not used by containers

# Containers
alias dc="docker container" # General for docker containers

alias dcr="docker container run" # Run container from an IMAGE image
alias dccp="docker container cp" # Copy data from src to dst inside container
alias dce="docker container exec" # Execute COMMAND inside container
alias dci="docker container inspect" # Inspect container
alias dck="docker container kill"  # Kill container
alias dcl="docker container ls" # List all available containers
alias dcs="docker container stop" # Stop running container

alias dcrma='docker ps -a -q | xargs sudo docker rm' # Remove all non-running containers

# Volumes
alias dv="docker volume" # General volume command

alias dvc="docker volume create" # Create NAMED volume
alias dvl="docker volume ls" # List all available volumes
alias dvrm="docker volume rm" # Remove volumes

# List files inside the created volume
dvi(){
  docker run --rm -i -v="$1":/tmp/myvolume busybox find /tmp/myvolume
}

# System
alias dsi="docker system info" # Display system-wide information
alias dsdf="docker system df" # How much images & containers take in terms of space
alias dsp="docker system prune" # Remove every unused image/container

###############################################################################
#
#                                   VIRTUAL ENVIRONMENTS
#
###############################################################################

# Pipenv
alias per='pipenv run'
alias perp='pipenv run python'
alias pei='pipenv install'
alias pes='pipenv shell'
alias perm='pipenv uninstall'

# Conda
alias ca='conda activate'
alias ci='conda install'
alias cif='conda install -c conda-forge'
alias ccr='conda create --name'
alias cl='conda list'
alias crm='conda remove'
alias ccl='conda clean'
alias cup='conda update'
alias cupc='conda update -n base -c defaults conda'
alias crme='rm -rf $HOME/.conda/envs/*'

# Poetry
alias poi='poetry add'
alias porm='poetry remove'
alias poup='poetry update'
alias poupg='poetry upgrade'

###############################################################################
#
#                                   FUNCTIONS
#
###############################################################################

# Run pdf from command line
pdf(){
  zathura "$1" >/dev/null 2>&1 &
}

###############################################################################
#
#                                 KERNEL AND OS
#
###############################################################################

alias regrub='grub-mkconfig -o /boot/grub/grub.cfg'

###############################################################################
#
#                                 CODE SHARING
#
###############################################################################

alias gsh='gist -p -s -c'

fastrm(){
  cd "$1"
  perl -e 'for(<*>){((stat)[9]<(unlink))}'
  cd -
}
