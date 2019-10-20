###############################################################################
#
#                                     SYSTEM
#
###############################################################################

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

alias l='ls_extended -s'
alias lf='ls_extended -f'
alias ld='ls_extended -d'
alias la='ls_extended -Aslhi'

alias ls='ls_extended -s'
alias cat='bat'

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

alias pup='pikaur -Syyu --noconfirm && gem update'
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

#docker specific
#--format using regex, formatting of given output, check it, p.58
#-d running as daemon, -c running command
alias drun='docker run'
alias dpull='docker pull'
alias dstart='docker start'
alias dstop='docker stop'
alias drm='docker rm'
alias drmall='docker ps -a -q | xargs sudo docker rm'
#drastic m8
alias dkill='docker kill'
alias drestart='docker restart'
alias dattach='docker attach'
#add container name below. -f flag - monitors current output, not last few liens
#-t for timestamps
alias dlogs='docker logs'
#checking processes inside container
alias dtop='docker top'
#inspect given container (verbose output)
alias dinspect='docker inspect'

#info about docker
alias dinfo='docker info'


#docker images - layers of read-only, one read-write on top of those. Union
#mount - can mount many filesystems on top of each other, with only final layer
#writeable
#/var/lib/docker for local images, containers etc.
#DockerHub - default registry, where repositories live. Inside repositories
#there are images (default download place)
#You can run your own registries
#pulls given image from repository
#ubuntu:12.04 - runs tagged version, best to build containers like that

alias dp='docker pull'
#list docker images
alias di='docker images'
#removes given image
alias drmi='docker rmi'
alias drmiall='docker rmi $(sudo docker images)'
#given name searches images in registry
alias dsearch='docker search'

#processes
alias dps='docker ps'
alias dlast='docker ps -l'

#login
alias dlogin='docker login'

alias dc='docker commit'
#trusted build - automated from GitHub/BitBucket
alias db='docker build'

#shows creation history for given image
alias dhist='docker history'

#pushing image to the dockerhub
#can only push to user/repo_name, repo_name alone won't work (considered root,
#docker staff can only use it)
alias dpush='docker push'

alias drmi_dangling='docker system prune'

# removes all none images
alias drminone='docker rmi $(docker images | grep "^<none>" | awk "{print $3}")'


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
alias cls='conda list'
alias crm='conda remove'
alias ccl='conda clean'
alias cup='conda update'
alias cupc='conda update -n base -c defaults conda'

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
