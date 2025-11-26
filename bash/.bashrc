#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#######################################################
# SOURCED ALIAS'S AND SCRIPTS BY zachbrowne.me
#######################################################
if [ -f /usr/bin/fastfetch ]; then
  fastfetch
fi

if [ -f /usr/share/bash-completion/bash_completion ]; then
  . /usr/share/bash-completion/bash_completion
elif [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

## My Customs Environemtns
export EDITOR=nvim
export VISUAL=nvim
export PAGER=less
export PATH="$PATH:$HOME/installs/zig:$HOME/installs/Odin"

# Alias
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias dotfiles='cd $HOME/workspace/dotfiles/'

export STARSHIP_CONFIG=$HOME/.config/starship.toml
eval "$(starship init bash)"
