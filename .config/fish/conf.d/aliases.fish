if not status is-interactive
    exit 0
end

# Replace cat by bat
if type -q bat
    alias cat 'bat'
end

# Replace ls by exa
# See https://the.exa.website/docs/command-line-options
if type -q exa
    alias ls 'exa -1aHg'
end

# Replace top by bottom
if type -q btm
    alias top 'btm'
end

# VIM
if type -q nvim
    alias vim 'nvim'
end
