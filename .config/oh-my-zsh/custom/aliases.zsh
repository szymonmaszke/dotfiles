#main usage aliases
alias c='clear'
alias off='shutdown now'
alias rest='shutdown now -r'
#program specific
alias e='nvim'
alias se='sudo -E nvim'
alias net='sudo wifi-menu'
alias firefox='firefox >/dev/null 2>/dev/null &'
alias xmind='~/aur/xmind/XMind_amd64/XMind >/dev/null 2>/dev/null &'

#pacman specific
alias pup='sudo pacman -Syyu'
alias pget='sudo pacman -S'
alias prm='sudo pacman -Rsc'
alias pls='sudo pacman -Qe'

#ls aliases
alias ls='ls --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias ll='ls -lh --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias la='ls -lha --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias l='ls'

#config aliases
alias en='nvim ~/.config/nvim/init.vim'
alias ea='nvim ~/.config/oh-my-zsh/custom/aliases.zsh'

#docker specific
#--format using regex, formatting of given output, check it, p.58
#-d running as daemon, -c running command
alias dr='sudo docker run'
alias ds='sudo docker start'
alias dst='sudo docker stop'
alias drm='sudo docker rm'
alias drmall='sudo docker ps -a -q | xargs sudo docker rm'
#drastic m8
alias dkill='sudo docker kill'
alias drs='sudo docker restart'
alias datt='sudo docker attach'
#add container name below. -f flag - monitors current output, not last few liens
#-t for timestamps
alias dlogs='sudo docker logs'
#checking processes inside container
alias dtop='sudo docker top'
#inspect given container (verbose output)
alias dinspect='sudo docker inspect'

#info about docker
alias dinfo='sudo docker info'


#docker images - layers of read-only, one read-write on top of those. Union
#mount - can mount many filesystems on top of each other, with only final layer
#writeable
#/var/lib/docker for local images, containers etc.
#DockerHub - default registry, where repositories live. Inside repositories
#there are images (default download place)
#You can run your own registries
#pulls given image from repository
#ubuntu:12.04 - runs tagged version, best to build containers like that
alias dp='sudo docker pull'
#list docker images
alias di='sudo docker images'
#removes given image
alias drmi='sudo docker rmi'
alias drmiall='sudo docker ps -a -q | xargs sudo docker rmi'
#given name searches images in registry
alias dsearch='sudo docker search'

#processes
alias dps='sudo docker ps'
alias dlast='sudo docker ps -l'

#login
alias dlogin='sudo docker login'

alias dc='sudo docker commit'
#trusted build - automated from GitHub/BitBucket
alias db='sudo docker build'

#shows creation history for given image
alias dhist='sudo docker history'

#pushing image to the dockerhub
#can only push to user/repo_name, repo_name alone won't work (considered root,
#docker staff can only use it)
alias dpush='sudo docker push'
