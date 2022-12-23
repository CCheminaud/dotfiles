if not status is-interactive
    exit 0
end

# Replace ls by exa
# See https://the.exa.website/docs/command-line-options
if type -q exa
    alias ls 'exa -1aHg'
end

# VIM
if type -q nvim
    alias vim 'nvim'
end
