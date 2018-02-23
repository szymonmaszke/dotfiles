#main usage aliases
alias c='clear'
alias off='shutdown now'
alias restart='shutdown now -r'
#program specific
alias e='nvim'
alias se='sudo -E nvim'
alias g++='g++ -march=native -std=c++17 -O2 -Werror -Wextra -Wall -Weffc++ -Wnarrowing'
alias py='python -b -B -O -W once -q '
alias ut='tar xvzf'
alias pack='tar zcvf'
alias xmind='XMind >/dev/null 2>&1 &'

alias qjup='kill $(pgrep jupyter)'
alias mv='$HOME/.config/mv_function.sh'

alias cp='cp -ri'
#pacman specific
alias pup='sudo pacman -Syyu --noconfirm && gem update && sudo npm update -g'
# alias pget='sudo pacman -S'
alias pget='sudo pacman -Syyu --noconfirm && gem update && sudo npm update -g && $HOME/.config/fzf/pkgsearch.sh'
alias prm='sudo pacman -Rn'
alias pls='sudo pacman -Qe'

alias l='colorls --sort-dirs'
alias lf='colorls --files'
alias ld='colorls --dirs'
alias la='colorls --sort-dirs -a'

alias ls='colorls --sort-dirs'

#revert last commit
alias grlc='git reset HEAD~'
alias gp='git push -u origin $(git rev-parse --abbrev-ref HEAD)'

#config aliases
alias en='nvim ~/.config/nvim/init.vim'
alias ea='nvim ~/.config/oh-my-zsh/custom/aliases.zsh'
alias ez='nvim ~/.zshrc'
alias et='nvim ~/.config/termite/config'
alias ei='nvim ~/.config/i3/config'
alias ep='nvim ~/.config/polybar/config'

#docker specific
#--format using regex, formatting of given output, check it, p.58
#-d running as daemon, -c running command
alias dr='docker run'
alias ds='docker start'
alias dst='docker stop'
alias drm='docker rm'
alias drmall='docker ps -a -q | xargs sudo docker rm'
#drastic m8
alias dkill='docker kill'
alias drs='docker restart'
alias datt='docker attach'
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
