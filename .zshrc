#
# ~/.zshrc
#

# Load private config if it exists
if [ -f ~/.zshrc.private ]; then
    . ~/.zshrc.private
fi

# Replace ls by eza
if type "eza" > /dev/null; then
    alias ls="eza -1aHg"
fi

# Load fnm
if type "fnm" > /dev/null; then
    eval "$(fnm env --use-on-cd)"
fi

# Load Starship prompt
if type "starship" > /dev/null; then
    eval "$(starship init zsh)"
fi

# Load Zoxide
if type "zoxide" > /dev/null; then
    eval "$(zoxide init zsh)"
fi
