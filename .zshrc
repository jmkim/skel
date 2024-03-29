# Path of oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"

# common environmental variables
if [ -f ~/.commonrc-local-pre ]; then
    . ~/.commonrc-local-pre
fi
if [ -f ~/.commonrc ]; then
    . ~/.commonrc
fi
if [ -f ~/.commonrc-local ]; then
    . ~/.commonrc-local
fi

# history length
HISTSIZE=10000000
SAVEHIST=10000000

ZSH_THEME="agnoster"
# DISABLE_AUTO_UPDATE="true"
# export UPDATE_ZSH_DAYS=13
ENABLE_CORRECTION="true"

# Plugins (~/.oh-my-zsh/plugins/*)
plugins=(git)

source $ZSH/oh-my-zsh.sh

bindkey -v                              # Use Vi mode.
bindkey '^[[Z' reverse-menu-complete    # Use Shift + Tab as reverse menu completion.

export DEFAULT_USER="jmkim"             # Remove my name from the shell.
export KEYTIMEOUT=1                     # Key timeout to 10ms. (Useful with ESC with `bindkey -v`.)

if command -v dircolors &> /dev/null
then
    eval "$(dircolors "$HOME/.dircolors")"  # Colour setup for ls.
fi

if [ -f ~/.common_aliases ]; then
    . ~/.common_aliases
fi
if [ -f ~/.common_aliases-local ]; then
    . ~/.common_aliases-local
fi

# local environmental variables
if [ -f ~/.zshrc-local ]; then
    . ~/.zshrc-local
fi
