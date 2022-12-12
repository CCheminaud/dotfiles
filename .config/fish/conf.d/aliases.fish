if not status is-interactive
    exit 0
end

# exa
# https://github.com/ogham/exa
if type -q exa
    alias ls 'exa -1 --icons --group-directories-first --links --group -a'
end

# VIM
if type -q nvim
    alias vim 'nvim'
end
