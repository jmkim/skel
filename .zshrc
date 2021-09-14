# Path of oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"
# DISABLE_AUTO_UPDATE="true"
# export UPDATE_ZSH_DAYS=13
ENABLE_CORRECTION="true"

# Plugins (~/.oh-my-zsh/plugins/*)
plugins=(git)

# Alias definitions.
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

source $ZSH/oh-my-zsh.sh

bindkey -v                              # Use Vi mode.
bindkey '^[[Z' reverse-menu-complete    # Use Shift + Tab as reverse menu completion.

export DEFAULT_USER="jmkim"             # Remove my name from the shell.
export KEYTIMEOUT=1                     # Key timeout to 10ms. (Useful with ESC with `bindkey -v`.)

eval "$(dircolors "$HOME/.dircolors")"  # Colour setup for ls.

# history length
HISTSIZE=10000000
SAVEHIST=10000000

# local environmental variables
if [ -f ~/.zshrc-local ]; then
    . ~/.zshrc-local
fi
