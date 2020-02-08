# SETTINGS {{{
# Load global variables
source $HOME/.config/zsh/exports.sh
source $HOME/.config/zsh/evals.sh
source $HOME/.config/zsh/functions.sh
# Things like compinit
source $HOME/.config/zsh/settings.sh
# }}}

# OH-MY-ZSH{{{
source $HOME/.config/zsh/oh-my-zsh.sh
# Source oh-my-zsh itself, plugins inside
source $ZSH/oh-my-zsh.sh
# }}}

# OH-MY-ZSH-PLUGINS {{{
source $HOME/.config/zsh/plugins/zsh-syntax-highlighting.sh
source $HOME/.config/zsh/plugins/zsh-autosuggestions.sh
# Background notifications after long running command
source $HOME/.config/zsh/plugins/bgnotify.sh
# }}}

# PLUGINS {{{
source $HOME/.config/zsh/plugins/powerline.sh
source $HOME/.config/zsh/plugins/fzf.sh
# }}}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh
