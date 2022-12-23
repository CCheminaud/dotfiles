#
# ~/.zshrc
#

# Load private config if it exists
if [ -f ~/.zshrc.private ]; then
    . ~/.zshrc.private
fi

# Load FNM
if type "fnm" > /dev/null; then
    eval "$(fnm env --use-on-cd)"
fi

# Load Starship prompt
if type "starship" > /dev/null; then
    eval "$(starship init zsh)"
fi
