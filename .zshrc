#
# ~/.zshrc
#

# Load private config if it exists
if [ -f ~/.zshrc.private ]; then
    . ~/.zshrc.private
fi

# Replace cat by bat
if type "bat" > /dev/null; then
    alias cat="bat"
fi

# Replace ls by exa
# See https://the.exa.website/docs/command-line-options
if type "exa" > /dev/null; then
    alias ls="exa -1aHg"
fi

# Replace top by bottom
if type "btm" > /dev/null; then
    alias top="btm"
fi

# Load FNM
if type "fnm" > /dev/null; then
    eval "$(fnm env --use-on-cd)"
fi

# Load Starship prompt
if type "starship" > /dev/null; then
    eval "$(starship init zsh)"
fi
